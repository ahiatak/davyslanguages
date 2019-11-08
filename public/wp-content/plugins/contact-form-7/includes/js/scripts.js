(function($) {

    'use strict';

    if (typeof wpcf8 === 'undefined' || wpcf8 === null) {
        return;
    }

    wpcf8 = $.extend({
        cached: 0,
        inputs: []
    }, wpcf8);

    $(function() {
        wpcf8.supportHtml5 = (function() {
            var features = {};
            var input = document.createElement('input');

            features.placeholder = 'placeholder' in input;

            var inputTypes = ['email', 'url', 'tel', 'number', 'range', 'date'];

            $.each(inputTypes, function(index, value) {
                input.setAttribute('type', value);
                features[value] = input.type !== 'text';
            });

            return features;
        })();

        $('div.wpcf8 > form').each(function() {
            var $form = $(this);
            wpcf8.initForm($form);

            if (wpcf8.cached) {
                wpcf8.refill($form);
            }
        });
    });

    wpcf8.getId = function(form) {
        return parseInt($('input[name="_wpcf8"]', form).val(), 10);
    };

    wpcf8.initForm = function(form) {
        var $form = $(form);

        $form.submit(function(event) {
            if (!wpcf8.supportHtml5.placeholder) {
                $('[placeholder].placeheld', $form).each(function(i, n) {
                    $(n).val('').removeClass('placeheld');
                });
            }

            if (typeof window.FormData === 'function') {
                wpcf8.submit($form);
                event.preventDefault();
            }
        });

        $('.wpcf8-submit', $form).after('<span class="ajax-loader"></span>');

        wpcf8.toggleSubmit($form);

        $form.on('click', '.wpcf8-acceptance', function() {
            wpcf8.toggleSubmit($form);
        });

        // Exclusive Checkbox
        $('.wpcf8-exclusive-checkbox', $form).on('click', 'input:checkbox', function() {
            var name = $(this).attr('name');
            $form.find('input:checkbox[name="' + name + '"]').not(this).prop('checked', false);
        });

        // Free Text Option for Checkboxes and Radio Buttons
        $('.wpcf8-list-item.has-free-text', $form).each(function() {
            var $freetext = $(':input.wpcf8-free-text', this);
            var $wrap = $(this).closest('.wpcf8-form-control');

            if ($(':checkbox, :radio', this).is(':checked')) {
                $freetext.prop('disabled', false);
            } else {
                $freetext.prop('disabled', true);
            }

            $wrap.on('change', ':checkbox, :radio', function() {
                var $cb = $('.has-free-text', $wrap).find(':checkbox, :radio');

                if ($cb.is(':checked')) {
                    $freetext.prop('disabled', false).focus();
                } else {
                    $freetext.prop('disabled', true);
                }
            });
        });

        // Placeholder Fallback
        if (!wpcf8.supportHtml5.placeholder) {
            $('[placeholder]', $form).each(function() {
                $(this).val($(this).attr('placeholder'));
                $(this).addClass('placeheld');

                $(this).focus(function() {
                    if ($(this).hasClass('placeheld')) {
                        $(this).val('').removeClass('placeheld');
                    }
                });

                $(this).blur(function() {
                    if ('' === $(this).val()) {
                        $(this).val($(this).attr('placeholder'));
                        $(this).addClass('placeheld');
                    }
                });
            });
        }

        if (wpcf8.jqueryUi && !wpcf8.supportHtml5.date) {
            $form.find('input.wpcf8-date[type="date"]').each(function() {
                $(this).datepicker({
                    dateFormat: 'yy-mm-dd',
                    minDate: new Date($(this).attr('min')),
                    maxDate: new Date($(this).attr('max'))
                });
            });
        }

        if (wpcf8.jqueryUi && !wpcf8.supportHtml5.number) {
            $form.find('input.wpcf8-number[type="number"]').each(function() {
                $(this).spinner({
                    min: $(this).attr('min'),
                    max: $(this).attr('max'),
                    step: $(this).attr('step')
                });
            });
        }

        // Character Count
        $('.wpcf8-character-count', $form).each(function() {
            var $count = $(this);
            var name = $count.attr('data-target-name');
            var down = $count.hasClass('down');
            var starting = parseInt($count.attr('data-starting-value'), 10);
            var maximum = parseInt($count.attr('data-maximum-value'), 10);
            var minimum = parseInt($count.attr('data-minimum-value'), 10);

            var updateCount = function(target) {
                var $target = $(target);
                var length = $target.val().length;
                var count = down ? starting - length : length;
                $count.attr('data-current-value', count);
                $count.text(count);

                if (maximum && maximum < length) {
                    $count.addClass('too-long');
                } else {
                    $count.removeClass('too-long');
                }

                if (minimum && length < minimum) {
                    $count.addClass('too-short');
                } else {
                    $count.removeClass('too-short');
                }
            };

            $(':input[name="' + name + '"]', $form).each(function() {
                updateCount(this);

                $(this).keyup(function() {
                    updateCount(this);
                });
            });
        });

        // URL Input Correction
        $form.on('change', '.wpcf8-validates-as-url', function() {
            var val = $.trim($(this).val());

            if (val &&
                !val.match(/^[a-z][a-z0-9.+-]*:/i) &&
                -1 !== val.indexOf('.')) {
                val = val.replace(/^\/+/, '');
                val = 'http://' + val;
            }

            $(this).val(val);
        });
    };

    wpcf8.submit = function(form) {
        if (typeof window.FormData !== 'function') {
            return;
        }

        var $form = $(form);

        $('.ajax-loader', $form).addClass('is-active');

        wpcf8.clearResponse($form);

        var formData = new FormData($form.get(0));

        var detail = {
            id: $form.closest('div.wpcf8').attr('id'),
            status: 'init',
            inputs: [],
            formData: formData
        };

        $.each($form.serializeArray(), function(i, field) {
            if ('_wpcf8' == field.name) {
                detail.contactFormId = field.value;
            } else if ('_wpcf8_version' == field.name) {
                detail.pluginVersion = field.value;
            } else if ('_wpcf8_locale' == field.name) {
                detail.contactFormLocale = field.value;
            } else if ('_wpcf8_unit_tag' == field.name) {
                detail.unitTag = field.value;
            } else if ('_wpcf8_container_post' == field.name) {
                detail.containerPostId = field.value;
            } else if (field.name.match(/^_wpcf8_\w+_free_text_/)) {
                var owner = field.name.replace(/^_wpcf8_\w+_free_text_/, '');
                detail.inputs.push({
                    name: owner + '-free-text',
                    value: field.value
                });
            } else if (field.name.match(/^_/)) {
                // do nothing
            } else {
                detail.inputs.push(field);
            }
        });

        wpcf8.triggerEvent($form.closest('div.wpcf8'), 'beforesubmit', detail);

        var ajaxSuccess = function(data, status, xhr, $form) {
            detail.id = $(data.into).attr('id');
            detail.status = data.status;
            detail.apiResponse = data;

            var $message = $('.wpcf8-response-output', $form);

            switch (data.status) {
                case 'validation_failed':
                    $.each(data.invalidFields, function(i, n) {
                        $(n.into, $form).each(function() {
                            wpcf8.notValidTip(this, n.message);
                            $('.wpcf8-form-control', this).addClass('wpcf8-not-valid');
                            $('[aria-invalid]', this).attr('aria-invalid', 'true');
                        });
                    });

                    $message.addClass('wpcf8-validation-errors');
                    $form.addClass('invalid');

                    wpcf8.triggerEvent(data.into, 'invalid', detail);
                    break;
                case 'acceptance_missing':
                    $message.addClass('wpcf8-acceptance-missing');
                    $form.addClass('unaccepted');

                    wpcf8.triggerEvent(data.into, 'unaccepted', detail);
                    break;
                case 'spam':
                    $message.addClass('wpcf8-spam-blocked');
                    $form.addClass('spam');

                    wpcf8.triggerEvent(data.into, 'spam', detail);
                    break;
                case 'aborted':
                    $message.addClass('wpcf8-aborted');
                    $form.addClass('aborted');

                    wpcf8.triggerEvent(data.into, 'aborted', detail);
                    break;
                case 'mail_sent':
                    $message.addClass('wpcf8-mail-sent-ok');
                    $form.addClass('sent');

                    wpcf8.triggerEvent(data.into, 'mailsent', detail);
                    break;
                case 'mail_failed':
                    $message.addClass('wpcf8-mail-sent-ng');
                    $form.addClass('failed');

                    wpcf8.triggerEvent(data.into, 'mailfailed', detail);
                    break;
                default:
                    var customStatusClass = 'custom-' +
                        data.status.replace(/[^0-9a-z]+/i, '-');
                    $message.addClass('wpcf8-' + customStatusClass);
                    $form.addClass(customStatusClass);
            }

            wpcf8.refill($form, data);

            wpcf8.triggerEvent(data.into, 'submit', detail);

            if ('mail_sent' == data.status) {
                $form.each(function() {
                    this.reset();
                });

                wpcf8.toggleSubmit($form);
            }

            if (!wpcf8.supportHtml5.placeholder) {
                $form.find('[placeholder].placeheld').each(function(i, n) {
                    $(n).val($(n).attr('placeholder'));
                });
            }

            $message.html('').append(data.message).slideDown('fast');
            $message.attr('role', 'alert');

            $('.screen-reader-response', $form.closest('.wpcf8')).each(function() {
                var $response = $(this);
                $response.html('').attr('role', '').append(data.message);

                if (data.invalidFields) {
                    var $invalids = $('<ul></ul>');

                    $.each(data.invalidFields, function(i, n) {
                        if (n.idref) {
                            var $li = $('<li></li>').append($('<a></a>').attr('href', '#' + n.idref).append(n.message));
                        } else {
                            var $li = $('<li></li>').append(n.message);
                        }

                        $invalids.append($li);
                    });

                    $response.append($invalids);
                }

                $response.attr('role', 'alert').focus();
            });
        };

        $.ajax({
            type: 'POST',
            url: wpcf8.apiSettings.getRoute(
                '/contact-forms/' + wpcf8.getId($form) + '/feedback'),
            data: formData,
            dataType: 'json',
            processData: false,
            contentType: false
        }).done(function(data, status, xhr) {
            ajaxSuccess(data, status, xhr, $form);
            $('.ajax-loader', $form).removeClass('is-active');
        }).fail(function(xhr, status, error) {
            var $e = $('<div class="ajax-error"></div>').text(error.message);
            $form.after($e);
        });
    };

    wpcf8.triggerEvent = function(target, name, detail) {
        var $target = $(target);

        /* DOM event */
        var event = new CustomEvent('wpcf8' + name, {
            bubbles: true,
            detail: detail
        });

        $target.get(0).dispatchEvent(event);

        /* jQuery event */
        $target.trigger('wpcf8:' + name, detail);
        $target.trigger(name + '.wpcf8', detail); // deprecated
    };

    wpcf8.toggleSubmit = function(form, state) {
        var $form = $(form);
        var $submit = $('input:submit', $form);

        if (typeof state !== 'undefined') {
            $submit.prop('disabled', !state);
            return;
        }

        if ($form.hasClass('wpcf8-acceptance-as-validation')) {
            return;
        }

        $submit.prop('disabled', false);

        $('.wpcf8-acceptance', $form).each(function() {
            var $span = $(this);
            var $input = $('input:checkbox', $span);

            if (!$span.hasClass('optional')) {
                if ($span.hasClass('invert') && $input.is(':checked') ||
                    !$span.hasClass('invert') && !$input.is(':checked')) {
                    $submit.prop('disabled', true);
                    return false;
                }
            }
        });
    };

    wpcf8.notValidTip = function(target, message) {
        var $target = $(target);
        $('.wpcf8-not-valid-tip', $target).remove();
        $('<span role="alert" class="wpcf8-not-valid-tip"></span>')
            .text(message).appendTo($target);

        if ($target.is('.use-floating-validation-tip *')) {
            var fadeOut = function(target) {
                $(target).not(':hidden').animate({
                    opacity: 0
                }, 'fast', function() {
                    $(this).css({
                        'z-index': -100
                    });
                });
            };

            $target.on('mouseover', '.wpcf8-not-valid-tip', function() {
                fadeOut(this);
            });

            $target.on('focus', ':input', function() {
                fadeOut($('.wpcf8-not-valid-tip', $target));
            });
        }
    };

    wpcf8.refill = function(form, data) {
        var $form = $(form);

        var refillCaptcha = function($form, items) {
            $.each(items, function(i, n) {
                $form.find(':input[name="' + i + '"]').val('');
                $form.find('img.wpcf8-captcha-' + i).attr('src', n);
                var match = /([0-9]+)\.(png|gif|jpeg)$/.exec(n);
                $form.find('input:hidden[name="_wpcf8_captcha_challenge_' + i + '"]').attr('value', match[1]);
            });
        };

        var refillQuiz = function($form, items) {
            $.each(items, function(i, n) {
                $form.find(':input[name="' + i + '"]').val('');
                $form.find(':input[name="' + i + '"]').siblings('span.wpcf8-quiz-label').text(n[0]);
                $form.find('input:hidden[name="_wpcf8_quiz_answer_' + i + '"]').attr('value', n[1]);
            });
        };

        if (typeof data === 'undefined') {
            $.ajax({
                type: 'GET',
                url: wpcf8.apiSettings.getRoute(
                    '/contact-forms/' + wpcf8.getId($form) + '/refill'),
                beforeSend: function(xhr) {
                    var nonce = $form.find(':input[name="_wpnonce"]').val();

                    if (nonce) {
                        xhr.setRequestHeader('X-WP-Nonce', nonce);
                    }
                },
                dataType: 'json'
            }).done(function(data, status, xhr) {
                if (data.captcha) {
                    refillCaptcha($form, data.captcha);
                }

                if (data.quiz) {
                    refillQuiz($form, data.quiz);
                }
            });

        } else {
            if (data.captcha) {
                refillCaptcha($form, data.captcha);
            }

            if (data.quiz) {
                refillQuiz($form, data.quiz);
            }
        }
    };

    wpcf8.clearResponse = function(form) {
        var $form = $(form);
        $form.removeClass('invalid spam sent failed');
        $form.siblings('.screen-reader-response').html('').attr('role', '');

        $('.wpcf8-not-valid-tip', $form).remove();
        $('[aria-invalid]', $form).attr('aria-invalid', 'false');
        $('.wpcf8-form-control', $form).removeClass('wpcf8-not-valid');

        $('.wpcf8-response-output', $form)
            .hide().empty().removeAttr('role')
            .removeClass('wpcf8-mail-sent-ok wpcf8-mail-sent-ng wpcf8-validation-errors wpcf8-spam-blocked');
    };

    wpcf8.apiSettings.getRoute = function(path) {
        var url = wpcf8.apiSettings.root;

        url = url.replace(
            wpcf8.apiSettings.namespace,
            wpcf8.apiSettings.namespace + path);

        return url;
    };

})(jQuery);

/*
 * Polyfill for Internet Explorer
 * See https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/CustomEvent
 */
(function() {
    if (typeof window.CustomEvent === "function") return false;

    function CustomEvent(event, params) {
        params = params || {
            bubbles: false,
            cancelable: false,
            detail: undefined
        };
        var evt = document.createEvent('CustomEvent');
        evt.initCustomEvent(event,
            params.bubbles, params.cancelable, params.detail);
        return evt;
    }

    CustomEvent.prototype = window.Event.prototype;

    window.CustomEvent = CustomEvent;
})();