/* ATTENTION! This file was generated automatically! Don't change it!!!
----------------------------------------------------------------------- */
(function() {
    "use strict";
    window.trx_addons_get_cookie = function(name) {
        var defa = arguments[1] != undefined ? arguments[1] : null;
        var start = document.cookie.indexOf(name + '=');
        var len = start + name.length + 1;
        if ((!start) && (name != document.cookie.substring(0, name.length))) {
            return defa;
        }
        if (start == -1) return defa;
        var end = document.cookie.indexOf(';', len);
        if (end == -1) end = document.cookie.length;
        return unescape(document.cookie.substring(len, end));
    };
    window.trx_addons_set_cookie = function(name, value, expires, path, domain, secure) {
        var expires = arguments[2] != undefined ? arguments[2] : 0;
        var path = arguments[3] != undefined ? arguments[3] : '/';
        var domain = arguments[4] != undefined ? arguments[4] : '';
        var secure = arguments[5] != undefined ? arguments[5] : '';
        var today = new Date();
        today.setTime(today.getTime());
        if (expires) {
            expires = expires * 1000 * 60 * 60 * 24;
        }
        var expires_date = new Date(today.getTime() + (expires));
        document.cookie = name + '=' + escape(value) + ((expires) ? ';expires=' + expires_date.toGMTString() : '') + ((path) ? ';path=' + path : '') + ((domain) ? ';domain=' + domain : '') + ((secure) ? ';secure' : '');
    };
    window.trx_addons_del_cookie = function(name, path, domain) {
        var path = arguments[1] != undefined ? arguments[1] : '/';
        var domain = arguments[2] != undefined ? arguments[2] : '';
        if (trx_addons_get_cookie(name)) document.cookie = name + '=' + ((path) ? ';path=' + path : '') + ((domain) ? ';domain=' + domain : '') + ';expires=Thu, 01-Jan-1970 00:00:01 GMT';
    };
    window.trx_addons_clear_listbox = function(box) {
        for (var i = box.options.length - 1; i >= 0; i--) box.options[i] = null;
    };
    window.trx_addons_add_listbox_item = function(box, val, text) {
        var item = new Option();
        item.value = val;
        item.text = text;
        box.options.add(item);
    };
    window.trx_addons_del_listbox_item_by_value = function(box, val) {
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].value == val) {
                box.options[i] = null;
                break;
            }
        }
    };
    window.trx_addons_del_listbox_item_by_text = function(box, txt) {
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].text == txt) {
                box.options[i] = null;
                break;
            }
        }
    };
    window.trx_addons_find_listbox_item_by_value = function(box, val) {
        var idx = -1;
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].value == val) {
                idx = i;
                break;
            }
        }
        return idx;
    };
    window.trx_addons_find_listbox_item_by_text = function(box, txt) {
        var idx = -1;
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].text == txt) {
                idx = i;
                break;
            }
        }
        return idx;
    };
    window.trx_addons_select_listbox_item_by_value = function(box, val) {
        for (var i = 0; i < box.options.length; i++) {
            box.options[i].selected = (val == box.options[i].value);
        }
    };
    window.trx_addons_select_listbox_item_by_text = function(box, txt) {
        for (var i = 0; i < box.options.length; i++) {
            box.options[i].selected = (txt == box.options[i].text);
        }
    };
    window.trx_addons_get_listbox_values = function(box) {
        var delim = arguments[1] ? arguments[1] : ',';
        var str = '';
        for (var i = 0; i < box.options.length; i++) {
            str += (str ? delim : '') + box.options[i].value;
        }
        return str;
    };
    window.trx_addons_get_listbox_texts = function(box) {
        var delim = arguments[1] ? arguments[1] : ',';
        var str = '';
        for (var i = 0; i < box.options.length; i++) {
            str += (str ? delim : '') + box.options[i].text;
        }
        return str;
    };
    window.trx_addons_sort_listbox = function(box) {
        var temp_opts = new Array();
        var temp = new Option();
        for (var i = 0; i < box.options.length; i++) {
            temp_opts[i] = box.options[i].clone();
        }
        for (var x = 0; x < temp_opts.length - 1; x++) {
            for (var y = (x + 1); y < temp_opts.length; y++) {
                if (temp_opts[x].text > temp_opts[y].text) {
                    temp = temp_opts[x];
                    temp_opts[x] = temp_opts[y];
                    temp_opts[y] = temp;
                }
            }
        }
        for (var i = 0; i < box.options.length; i++) {
            box.options[i] = temp_opts[i].clone();
        }
    };
    window.trx_addons_get_listbox_selected_index = function(box) {
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].selected) return i;
        }
        return -1;
    };
    window.trx_addons_get_listbox_selected_value = function(box) {
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].selected) {
                return box.options[i].value;
            }
        }
        return null;
    };
    window.trx_addons_get_listbox_selected_text = function(box) {
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].selected) {
                return box.options[i].text;
            }
        }
        return null;
    };
    window.trx_addons_get_listbox_selected_option = function(box) {
        for (var i = 0; i < box.options.length; i++) {
            if (box.options[i].selected) {
                return box.options[i];
            }
        }
        return null;
    };
    window.trx_addons_get_radio_value = function(radioGroupObj) {
        for (var i = 0; i < radioGroupObj.length; i++)
            if (radioGroupObj[i].checked) return radioGroupObj[i].value;
        return null;
    };
    window.trx_addons_set_radio_checked_by_num = function(radioGroupObj, num) {
        for (var i = 0; i < radioGroupObj.length; i++)
            if (radioGroupObj[i].checked && i != num) radioGroupObj[i].checked = false;
            else if (i == num) radioGroupObj[i].checked = true;
    };
    window.trx_addons_set_radio_checked_by_value = function(radioGroupObj, val) {
        for (var i = 0; i < radioGroupObj.length; i++)
            if (radioGroupObj[i].checked && radioGroupObj[i].value != val) radioGroupObj[i].checked = false;
            else if (radioGroupObj[i].value == val) radioGroupObj[i].checked = true;
    };
    window.trx_addons_form_validate = function(form, opt) {
        if (typeof(opt.error_message_show) == 'undefined') opt.error_message_show = true;
        if (typeof(opt.error_message_time) == 'undefined') opt.error_message_time = 5000;
        if (typeof(opt.error_message_class) == 'undefined') opt.error_message_class = 'trx_addons_message_box_error';
        if (typeof(opt.error_message_text) == 'undefined') opt.error_message_text = 'Incorrect data in the fields!';
        if (typeof(opt.error_fields_class) == 'undefined') opt.error_fields_class = 'trx_addons_field_error';
        if (typeof(opt.exit_after_first_error) == 'undefined') opt.exit_after_first_error = false;
        var error_msg = '';
        form.find(":input").each(function() {
            if (error_msg != '' && opt.exit_after_first_error) return;
            for (var i = 0; i < opt.rules.length; i++) {
                if (jQuery(this).attr("name") == opt.rules[i].field) {
                    var val = jQuery(this).val();
                    var error = false;
                    if (typeof(opt.rules[i].min_length) == 'object') {
                        if (opt.rules[i].min_length.value > 0 && val.length < opt.rules[i].min_length.value) {
                            if (error_msg == '') jQuery(this).get(0).focus();
                            error_msg += '<p class="trx_addons_error_item">' + (typeof(opt.rules[i].min_length.message) != 'undefined' ? opt.rules[i].min_length.message : opt.error_message_text) + '</p>';
                            error = true;
                        }
                    }
                    if ((!error || !opt.exit_after_first_error) && typeof(opt.rules[i].max_length) == 'object') {
                        if (opt.rules[i].max_length.value > 0 && val.length > opt.rules[i].max_length.value) {
                            if (error_msg == '') jQuery(this).get(0).focus();
                            error_msg += '<p class="trx_addons_error_item">' + (typeof(opt.rules[i].max_length.message) != 'undefined' ? opt.rules[i].max_length.message : opt.error_message_text) + '</p>';
                            error = true;
                        }
                    }
                    if ((!error || !opt.exit_after_first_error) && typeof(opt.rules[i].mask) == 'object') {
                        if (opt.rules[i].mask.value != '') {
                            var regexp = new RegExp(opt.rules[i].mask.value);
                            if (!regexp.test(val)) {
                                if (error_msg == '') jQuery(this).get(0).focus();
                                error_msg += '<p class="trx_addons_error_item">' + (typeof(opt.rules[i].mask.message) != 'undefined' ? opt.rules[i].mask.message : opt.error_message_text) + '</p>';
                                error = true;
                            }
                        }
                    }
                    if ((!error || !opt.exit_after_first_error) && typeof(opt.rules[i].state) == 'object') {
                        if (opt.rules[i].state.value == 'checked' && !jQuery(this).get(0).checked) {
                            if (error_msg == '') jQuery(this).get(0).focus();
                            error_msg += '<p class="trx_addons_error_item">' + (typeof(opt.rules[i].state.message) != 'undefined' ? opt.rules[i].state.message : opt.error_message_text) + '</p>';
                            error = true;
                        }
                    }
                    if ((!error || !opt.exit_after_first_error) && typeof(opt.rules[i].equal_to) == 'object') {
                        if (opt.rules[i].equal_to.value != '' && val != jQuery(jQuery(this).get(0).form[opt.rules[i].equal_to.value]).val()) {
                            if (error_msg == '') jQuery(this).get(0).focus();
                            error_msg += '<p class="trx_addons_error_item">' + (typeof(opt.rules[i].equal_to.message) != 'undefined' ? opt.rules[i].equal_to.message : opt.error_message_text) + '</p>';
                            error = true;
                        }
                    }
                    if (opt.error_fields_class != '') jQuery(this).toggleClass(opt.error_fields_class, error);
                }
            }
        });
        if (error_msg != '' && opt.error_message_show) {
            var error_message_box = form.find(".trx_addons_message_box");
            if (error_message_box.length == 0) error_message_box = form.parent().find(".trx_addons_message_box");
            if (error_message_box.length == 0) {
                form.append('<div class="trx_addons_message_box"></div>');
                error_message_box = form.find(".trx_addons_message_box");
            }
            if (opt.error_message_class) error_message_box.toggleClass(opt.error_message_class, true);
            error_message_box.html(error_msg).fadeIn();
            setTimeout(function() {
                error_message_box.fadeOut();
            }, opt.error_message_time);
        }
        return error_msg != '';
    };
    window.trx_addons_refresh_list = function(parent_type, parent_val, list_fld, list_lbl, list_not_selected) {
        var list_val = list_fld.val();
        if (list_lbl.find('.trx_addons_refresh').length == 0) list_lbl.append('<span class="trx_addons_refresh trx_addons_icon-spin3 animate-spin"></span>');
        var data = {
            action: 'trx_addons_refresh_list',
            nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
            parent_type: parent_type,
            parent_value: parent_val,
            list_not_selected: list_not_selected === true || list_fld.data('not-selected') === true || list_fld.parents('.vc_edit-form-tab').length > 0 || list_fld.parents('.siteorigin-widget-field').length > 0 || list_fld.parents('[class*="widget_field_type_"]').length > 0 || list_fld.parents('.widget-liquid-right').length > 0 || list_fld.parents('.widgets-holder-wrap').length > 0 || list_fld.parents('.customize-control-widget_form').length > 0
        };
        jQuery.post(TRX_ADDONS_STORAGE['ajax_url'], data, function(response) {
            var rez = {};
            try {
                rez = JSON.parse(response);
            } catch (e) {
                rez = {
                    error: TRX_ADDONS_STORAGE['msg_ajax_error']
                };
                console.log(response);
            }
            if (rez.error === '') {
                var opt_list = '';
                var list_type = list_fld.prop('tagName').toLowerCase();
                var list_name = list_type == 'select' ? list_fld.attr('name') : list_fld.data('field_name');
                for (var i in rez.data) {
                    if (list_type != 'select' && rez.data[i]['key'] == 0) continue;
                    opt_list += list_type == 'select' ? '<option class="' + rez.data[i]['key'] + '"' + ' value="' + rez.data[i]['key'] + '"' + (rez.data[i]['key'] == list_val ? ' selected="selected"' : '') + '>' + rez.data[i]['value'] + '</option>' : '<label><input type="checkbox"' + ' value="' + rez.data[i]['key'] + '"' + ' name="' + list_name + '"' + '>' + rez.data[i]['value'] + '</label>';
                }
                list_fld.html(opt_list);
                if (list_type == 'select' && list_fld.find('option:selected').length == 0 && list_fld.find('option').length > 0) list_fld.find('option').get(0).selected = true;
                list_lbl.find('span.trx_addons_refresh').remove();
                list_fld.trigger('change');
            }
        });
        return false;
    };
    window.trx_addons_document_animate_to = function(id, callback) {
        var oft = !isNaN(id) ? Number(id) : 0;
        if (isNaN(id)) {
            if (id.indexOf('#') == -1) id = '#' + id;
            var obj = jQuery(id).eq(0);
            if (obj.length == 0) return;
            oft = obj.offset().top;
        }
        var st = jQuery(window).scrollTop();
        var oft2 = Math.max(0, oft - trx_addons_fixed_rows_height());
        var speed = Math.min(1200, Math.max(300, Math.round(Math.abs(oft2 - st) / jQuery(window).height() * 300)));
        if (st == 0) {
            setTimeout(function() {
                if (isNaN(id)) oft = obj.offset().top;
                oft2 = Math.max(0, oft - trx_addons_fixed_rows_height());
                jQuery('body,html').stop(true).animate({
                    scrollTop: oft2
                }, Math.floor(speed / 2), 'linear', callback);
            }, Math.floor(speed / 2));
        }
        jQuery('body,html').stop(true).animate({
            scrollTop: oft2
        }, speed, 'linear', callback);
    };
    window.trx_addons_fixed_rows_height = function() {
        var with_admin_bar = arguments.length > 0 ? arguments[0] : true;
        var with_fixed_rows = arguments.length > 1 ? arguments[1] : true;
        var oft = 0;
        if (with_admin_bar) {
            var admin_bar = jQuery('#wpadminbar');
            oft += admin_bar.length > 0 && admin_bar.css('display') != 'none' && admin_bar.css('position') == 'fixed' ? admin_bar.height() : 0;
        }
        if (with_fixed_rows) {
            jQuery('.sc_layouts_row_fixed_on').each(function() {
                if (jQuery(this).css('position') == 'fixed') oft += jQuery(this).height();
            });
        }
        return oft;
    };
    window.trx_addons_document_set_location = function(curLoc) {
        if (history.pushState === undefined || navigator.userAgent.match(/MSIE\s[6-9]/i) != null) return;
        try {
            history.pushState(null, null, curLoc);
            return;
        } catch (e) {}
        location.href = curLoc;
    };
    window.trx_addons_add_to_url = function(loc, prm) {
        var ignore_empty = arguments[2] !== undefined ? arguments[2] : true;
        var q = loc.indexOf('?');
        var attr = {};
        if (q > 0) {
            var qq = loc.substr(q + 1).split('&');
            var parts = '';
            for (var i = 0; i < qq.length; i++) {
                var parts = qq[i].split('=');
                attr[parts[0]] = parts.length > 1 ? parts[1] : '';
            }
        }
        for (var p in prm) {
            attr[p] = prm[p];
        }
        loc = (q > 0 ? loc.substr(0, q) : loc) + '?';
        var i = 0;
        for (p in attr) {
            if (ignore_empty && attr[p] == '') continue;
            loc += (i++ > 0 ? '&' : '') + p + '=' + attr[p];
        }
        return loc;
    };
    window.trx_addons_is_local_link = function(url) {
        var rez = url !== undefined;
        if (rez) {
            var url_pos = url.indexOf('#');
            if (url_pos == 0 && url.length == 1) rez = false;
            else {
                if (url_pos < 0) url_pos = url.length;
                var loc = window.location.href;
                var loc_pos = loc.indexOf('#');
                if (loc_pos > 0) loc = loc.substring(0, loc_pos);
                rez = url_pos == 0;
                if (!rez) rez = loc == url.substring(0, url_pos);
            }
        }
        return rez;
    };
    window.trx_addons_browser_is_mobile = function() {
        var check = false;
        (function(a) {
            if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od|ad)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))) check = true
        })(navigator.userAgent || navigator.vendor || window.opera);
        return check;
    };
    window.trx_addons_browser_is_ios = function() {
        return navigator.userAgent.match(/iPad|iPhone|iPod/i) != null || navigator.platform.match(/(Mac|iPhone|iPod|iPad)/i) ? true : false;
    };
    window.trx_addons_is_retina = function() {
        var mediaQuery = '(-webkit-min-device-pixel-ratio: 1.5), (min--moz-device-pixel-ratio: 1.5), (-o-min-device-pixel-ratio: 3/2), (min-resolution: 1.5dppx)';
        return (window.devicePixelRatio > 1) || (window.matchMedia && window.matchMedia(mediaQuery).matches);
    };
    window.trx_addons_get_file_name = function(path) {
        path = path.replace(/\\/g, '/');
        var pos = path.lastIndexOf('/');
        if (pos >= 0) path = path.substr(pos + 1);
        return path;
    };
    window.trx_addons_get_file_ext = function(path) {
        var pos = path.lastIndexOf('.');
        path = pos >= 0 ? path.substr(pos + 1) : '';
        return path;
    };
    window.trx_addons_check_images_complete = function(cont) {
        var complete = true;
        cont.find('img').each(function() {
            if (!complete) return;
            if (!jQuery(this).get(0).complete) complete = false;
        });
        return complete;
    };
    window.trx_addons_round_number = function(num) {
        var precision = arguments[1] !== undefined ? arguments[1] : 0;
        var p = Math.pow(10, precision);
        return Math.round(num * p) / p;
    };
    Number.prototype.formatMoney = function(c, d, t) {
        var n = this,
            c = c == undefined ? 2 : (isNaN(c = Math.abs(c)) ? 2 : c),
            d = d == undefined ? "." : d,
            t = t == undefined ? "," : t,
            s = n < 0 ? "-" : "",
            i = String(parseInt(n = Math.abs(Number(n) || 0).toFixed(c))),
            j = (j = i.length) > 3 ? j % 3 : 0;
        return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
    };
    window.trx_addons_replicate = function(str, num) {
        var rez = '';
        for (var i = 0; i < num; i++) {
            rez += str;
        }
        return rez;
    };
    window.trx_addons_get_icon_class = function(classes) {
        var classes = classes.split(' ');
        var icon = '';
        for (var i = 0; i < classes.length; i++) {
            if (classes[i].indexOf('icon-') >= 0) {
                icon = classes[i];
                break;
            }
        }
        return icon;
    };
    window.trx_addons_chg_icon_class = function(classes, icon) {
        var chg = false;
        classes = classes.split(' ');
        for (var i = 0; i < classes.length; i++) {
            if (classes[i].indexOf('icon-') >= 0) {
                classes[i] = icon;
                chg = true;
                break;
            }
        }
        if (!chg) {
            if (classes.length == 1 && classes[0] == '') classes[0] = icon;
            else classes.push(icon);
        }
        return classes.join(' ');
    };
    window.trx_addons_serialize = function(mixed_val) {
        var obj_to_array = arguments.length == 1 || argument[1] === true;
        switch (typeof(mixed_val)) {
            case "number":
                if (isNaN(mixed_val) || !isFinite(mixed_val)) return false;
                else return (Math.floor(mixed_val) == mixed_val ? "i" : "d") + ":" + mixed_val + ";";
            case "string":
                return "s:" + mixed_val.length + ":\"" + mixed_val + "\";";
            case "boolean":
                return "b:" + (mixed_val ? "1" : "0") + ";";
            case "object":
                if (mixed_val == null) return "N;";
                else if (mixed_val instanceof Array) {
                    var idxobj = {
                        idx: -1
                    };
                    var map = [];
                    for (var i = 0; i < mixed_val.length; i++) {
                        idxobj.idx++;
                        var ser = trx_addons_serialize(mixed_val[i]);
                        if (ser) map.push(trx_addons_serialize(idxobj.idx) + ser);
                    }
                    return "a:" + mixed_val.length + ":{" + map.join("") + "}";
                } else {
                    var class_name = trx_addons_get_class(mixed_val);
                    if (class_name == undefined) return false;
                    var props = new Array();
                    for (var prop in mixed_val) {
                        var ser = trx_addons_serialize(mixed_val[prop]);
                        if (ser) props.push(trx_addons_serialize(prop) + ser);
                    }
                    if (obj_to_array) return "a:" + props.length + ":{" + props.join("") + "}";
                    else return "O:" + class_name.length + ":\"" + class_name + "\":" + props.length + ":{" + props.join("") + "}";
                }
            case "undefined":
                return "N;";
        }
        return false;
    };
    window.trx_addons_get_class = function(obj) {
        if (obj instanceof Object && !(obj instanceof Array) && !(obj instanceof Function) && obj.constructor) {
            var arr = obj.constructor.toString().match(/function\s*(\w+)/);
            if (arr && arr.length == 2) return arr[1];
        }
        return false;
    };
})();
jQuery(document).ready(function() {
    "use strict";
    var vc_init_counter = 0;
    trx_addons_init_actions();
    jQuery(window).on('beforeunload', function(e) {
        if (jQuery.browser && !jQuery.browser.safari) {
            jQuery('#page_preloader').css({
                display: 'block',
                opacity: 0
            }).animate({
                opacity: 0.8
            }, 300);
            setTimeout(trx_addons_hide_preloader, 5000);
        }
    });

    function trx_addons_hide_preloader() {
        jQuery('#page_preloader').animate({
            opacity: 0
        }, 800, function() {
            jQuery(this).css({
                display: 'none'
            });
        });
    }

    function trx_addons_init_actions() {
        if (TRX_ADDONS_STORAGE['vc_edit_mode'] > 0 && jQuery('.vc_empty-placeholder').length == 0 && vc_init_counter++ < 30) {
            setTimeout(trx_addons_init_actions, 200);
            return;
        }
        trx_addons_hide_preloader();
        trx_addons_set_cookie('trx_addons_is_retina', trx_addons_is_retina() ? 1 : 0, 365);
        jQuery(document).on('action.init_hidden_elements', function() {
            trx_addons_ready_actions();
            jQuery(window).trigger('scroll');
        });
        trx_addons_ready_actions();
        var vc_js = false;
        jQuery(document).on('vc_js', function() {
            if (!vc_js) {
                vc_js = true;
                trx_addons_add_handlers();
            }
        });
        setTimeout(function() {
            if (!vc_js) {
                trx_addons_add_handlers();
            }
        }, 1);

        function trx_addons_add_handlers() {
            trx_addons_resize_actions();
            jQuery(window).resize(function() {
                trx_addons_resize_actions();
            });
            trx_addons_scroll_actions();
            jQuery(window).scroll(function() {
                trx_addons_scroll_actions();
            });
            typeof window.wpb_prepare_tab_content == "function" && typeof window.wpb_prepare_tab_content_old == "undefined" && (window.wpb_prepare_tab_content_old = window.wpb_prepare_tab_content) && (window.wpb_prepare_tab_content = function(e, ui) {
                if (typeof ui.newPanel !== 'undefined' && ui.newPanel.length > 0) {
                    jQuery(document).trigger('action.init_hidden_elements', [ui.newPanel]);
                } else if (typeof ui.panel !== 'undefined' && ui.panel.length > 0) {
                    jQuery(document).trigger('action.init_hidden_elements', [ui.panel]);
                }
                window.wpb_prepare_tab_content_old(e, ui);
            });
            typeof window.vc_accordionActivate == "function" && typeof window.vc_accordionActivate_old == "undefined" && (window.vc_accordionActivate_old = window.vc_accordionActivate) && (window.vc_accordionActivate = function(e, ui) {
                if (typeof ui.newPanel !== 'undefined' && ui.newPanel.length > 0) {
                    jQuery(document).trigger('action.init_hidden_elements', [ui.newPanel]);
                } else if (typeof ui.panel !== 'undefined' && ui.panel.length > 0) {
                    jQuery(document).trigger('action.init_hidden_elements', [ui.panel]);
                }
                window.vc_accordionActivate_old(e, ui);
            });
        }
    }

    function trx_addons_ready_actions(e, container) {
        if (container === undefined) container = jQuery('body');
        if (TRX_ADDONS_STORAGE['animate_inner_links'] > 0 && !container.hasClass('animate_to_inited')) {
            container.addClass('animate_to_inited').on('click', 'a', function(e) {
                var link_obj = jQuery(this);
                var link_parent = link_obj.parent();
                if (link_parent.parent().hasClass('trx_addons_tabs_titles') || link_parent.hasClass('vc_tta-tab') || link_obj.hasClass('vc_pagination-trigger') || link_obj.hasClass('ui-tabs-anchor') || link_parent.hasClass('vc_tta-panel-title') || link_parent.hasClass('wpb_accordion_header')) return;
                var href = link_obj.attr('href');
                if (href == '#') return;
                if (trx_addons_is_local_link(href)) {
                    var pos = href.indexOf('#'),
                        offset = 0;
                    if (pos >= 0) {
                        href = href.substr(pos);
                        var obj = jQuery(href);
                        if (obj.length > 0) offset = obj.offset().top - trx_addons_fixed_rows_height();
                    }
                    trx_addons_document_animate_to(offset);
                    e.preventDefault();
                    return false;
                }
            });
        }
        if (jQuery.ui && jQuery.ui.tabs && container.find('.trx_addons_tabs:not(.inited)').length > 0) {
            container.find('.trx_addons_tabs:not(.inited)').each(function() {
                var init = jQuery(this).data('active');
                if (isNaN(init)) {
                    init = 0;
                    var active = jQuery(this).find('> ul > li[data-active="true"]').eq(0);
                    if (active.length > 0) {
                        init = active.index();
                        if (isNaN(init) || init < 0) init = 0;
                    }
                } else {
                    init = Math.max(0, init);
                }
                var disabled = [];
                jQuery(this).find('> ul > li[data-disabled="true"]').each(function() {
                    disabled.push(jQuery(this).index());
                });
                jQuery(this).addClass('inited').tabs({
                    active: init,
                    disabled: disabled,
                    show: {
                        effect: 'fadeIn',
                        duration: 300
                    },
                    hide: {
                        effect: 'fadeOut',
                        duration: 300
                    },
                    create: function(event, ui) {
                        if (ui.panel.length > 0) jQuery(document).trigger('action.init_hidden_elements', [ui.panel]);
                    },
                    activate: function(event, ui) {
                        if (ui.newPanel.length > 0) jQuery(document).trigger('action.init_hidden_elements', [ui.newPanel]);
                    }
                });
            });
        }
        if (jQuery.ui && jQuery.ui.accordion && container.find('.trx_addons_accordion:not(.inited)').length > 0) {
            container.find('.trx_addons_accordion:not(.inited)').each(function() {
                var accordion = jQuery(this);
                var headers = accordion.data('headers');
                if (headers === undefined) headers = 'h5';
                var height_style = accordion.data('height-style');
                if (height_style === undefined) height_style = 'content';
                var collapsible = accordion.data('collapsible');
                if (collapsible === undefined) collapsible = false;
                var init = accordion.data('active');
                var active = false;
                if (isNaN(init)) {
                    init = 0;
                    var active = accordion.find(headers + '[data-active="true"]').eq(0);
                    if (active.length > 0) {
                        while (!active.parent().hasClass('trx_addons_accordion')) {
                            active = active.parent();
                        }
                        init = active.index();
                        if (isNaN(init) || init < 0) init = 0;
                    }
                } else {
                    init = Math.max(0, init);
                }
                accordion.addClass('inited').accordion({
                    active: init,
                    collapsible: collapsible,
                    header: headers,
                    heightStyle: height_style,
                    create: function(event, ui) {
                        if (ui.panel.length > 0) {
                            jQuery(document).trigger('action.init_hidden_elements', [ui.panel]);
                        } else if (active !== false && active.length > 0) {
                            active.find('>' + headers).trigger('click');
                        }
                    },
                    activate: function(event, ui) {
                        if (ui.newPanel.length > 0) jQuery(document).trigger('action.init_hidden_elements', [ui.newPanel]);
                    }
                });
            });
        }
        if (jQuery.ui && jQuery.ui.slider && container.find('.trx_addons_range_slider:not(.inited)').length > 0) {
            container.find('.trx_addons_range_slider:not(.inited)').each(function() {
                var range_slider = jQuery(this);
                var linked_field = range_slider.data('linked_field');
                if (linked_field === undefined) linked_field = range_slider.prev('input[type="hidden"]');
                else linked_field = jQuery('#' + linked_field);
                if (linked_field.length == 0) return;
                var range_slider_cur = range_slider.find('> .trx_addons_range_slider_label_cur');
                var range_slider_type = range_slider.data('range');
                if (range_slider_type === undefined) range_slider_type = 'min';
                var values = linked_field.val().split(',');
                var minimum = range_slider.data('min');
                if (minimum === undefined) minimum = 0;
                var maximum = range_slider.data('max');
                if (maximum === undefined) maximum = 0;
                var step = range_slider.data('step');
                if (step === undefined) step = 1;
                var init_obj = {
                    range: range_slider_type,
                    min: minimum,
                    max: maximum,
                    step: step,
                    slide: function(event, ui) {
                        var cur_values = range_slider_type === 'min' ? [ui.value] : ui.values;
                        linked_field.val(cur_values.join(',')).trigger('change');
                        for (var i = 0; i < cur_values.length; i++) {
                            range_slider_cur.eq(i).html(cur_values[i]).css('left', Math.max(0, Math.min(100, (cur_values[i] - minimum) * 100 / (maximum - minimum))) + '%');
                        }
                    },
                    create: function(event, ui) {
                        for (var i = 0; i < values.length; i++) {
                            range_slider_cur.eq(i).html(values[i]).css('left', Math.max(0, Math.min(100, (values[i] - minimum) * 100 / (maximum - minimum))) + '%');
                        }
                    }
                };
                if (range_slider_type === true) init_obj.values = values;
                else init_obj.value = values[0];
                range_slider.addClass('inited').slider(init_obj);
            });
        }
        if (jQuery.fn && jQuery.fn.select2) {
            container.find('.trx_addons_select2:not(.inited)').addClass('inited').select2();
        }
        jQuery(document).trigger('action.init_sliders', [container]);
        jQuery(document).trigger('action.init_shortcodes', [container]);
        if (container.find('.trx_addons_video_player.with_cover .video_hover:not(.inited)').length > 0) {
            container.find('.trx_addons_video_player.with_cover .video_hover:not(.inited)').addClass('inited').on('click', function(e) {
                if (jQuery(this).hasClass('trx_addons_popup_link')) return;
                jQuery(this).parents('.trx_addons_video_player').addClass('video_play').find('.video_embed').html(jQuery(this).data('video'));
                var slider = jQuery(this).parents('.slider_swiper');
                if (slider.length > 0) {
                    var id = slider.attr('id');
                    TRX_ADDONS_STORAGE['swipers'][id].stopAutoplay();
                    id = slider.data('controller');
                    if (id && TRX_ADDONS_STORAGE['swipers'][id + '_swiper']) TRX_ADDONS_STORAGE['swipers'][id + '_swiper'].stopAutoplay();
                }
                jQuery(window).trigger('resize');
                e.preventDefault();
                return false;
            });
        }
        if (TRX_ADDONS_STORAGE['popup_engine'] == 'pretty') {
            container.find("a[href$='jpg']:not(.inited),a[href$='jpeg']:not(.inited),a[href$='png']:not(.inited),a[href$='gif']:not(.inited)").each(function() {
                if (!jQuery(this).parent().hasClass('woocommerce-product-gallery__image')) jQuery(this).attr('rel', 'prettyPhoto[slideshow]');
            });
            var images = container.find("a[rel*='prettyPhoto']:not(.inited):not(.esgbox):not([data-rel*='pretty']):not([rel*='magnific']):not([data-rel*='magnific'])").addClass('inited');
            try {
                images.prettyPhoto({
                    social_tools: '',
                    theme: 'facebook',
                    deeplinking: false
                });
            } catch (e) {};
        } else if (TRX_ADDONS_STORAGE['popup_engine'] == 'magnific') {
            container.find("a[href$='jpg']:not(.inited),a[href$='jpeg']:not(.inited),a[href$='png']:not(.inited),a[href$='gif']:not(.inited)").each(function() {
                if (jQuery(this).parents('.cq-dagallery').length == 0) jQuery(this).attr('rel', 'magnific');
            });
            var images = container.find("a[rel*='magnific']:not(.inited):not(.esgbox):not(.prettyphoto):not([rel*='pretty']):not([data-rel*='pretty'])").addClass('inited');
            setTimeout(function() {
                images.unbind('click.prettyphoto');
            }, 100);
            try {
                images.magnificPopup({
                    type: 'image',
                    mainClass: 'mfp-img-mobile',
                    closeOnContentClick: true,
                    closeBtnInside: true,
                    fixedContentPos: true,
                    midClick: true,
                    preloader: true,
                    tLoading: TRX_ADDONS_STORAGE['msg_magnific_loading'],
                    gallery: {
                        enabled: true
                    },
                    image: {
                        tError: TRX_ADDONS_STORAGE['msg_magnific_error'],
                        verticalFit: true
                    },
                    zoom: {
                        enabled: true,
                        duration: 300,
                        easing: 'ease-in-out',
                        opener: function(openerElement) {
                            if (!openerElement.is('img')) {
                                if (openerElement.parents('.trx_addons_hover').find('img').length > 0) openerElement = openerElement.parents('.trx_addons_hover').find('img');
                                else if (openerElement.find('img').length > 0) openerElement = openerElement.find('img');
                                else if (openerElement.siblings('img').length > 0) openerElement = openerElement.siblings('img');
                                else if (openerElement.parent().parent().find('img').length > 0) openerElement = openerElement.parent().parent().find('img');
                            }
                            return openerElement;
                        }
                    },
                    callbacks: {
                        beforeClose: function() {
                            jQuery('.mfp-figure figcaption').hide();
                            jQuery('.mfp-figure .mfp-arrow').hide();
                        }
                    }
                });
            } catch (e) {};
            container.find(".trx_addons_popup_link:not(.popup_inited)").addClass('popup_inited').magnificPopup({
                type: 'inline',
                focus: 'input',
                closeBtnInside: true,
                callbacks: {
                    open: function() {
                        if (jQuery(this.content).data('popup-content') === undefined) jQuery(this.content).data('popup-content', jQuery(this.content).html());
                        else jQuery(this.content).html(jQuery(this.content).data('popup-content'));
                        jQuery(document).trigger('action.init_hidden_elements', [jQuery(this.content)]);
                        var frame = jQuery(this.content).find('.video_frame');
                        if (frame.length > 0) {
                            frame.find('> iframe').each(function() {
                                var src = jQuery(this).attr('src');
                                if (src.indexOf('youtube') >= 0 || src.indexOf('vimeo') >= 0) {
                                    jQuery(this).attr('src', trx_addons_add_to_url(src, {
                                        'autoplay': 1
                                    }));
                                }
                            });
                        }
                    },
                    close: function() {
                        jQuery(this.content).empty();
                    },
                    resize: function() {
                        trx_addons_resize_actions();
                    }
                }
            });
        }
        if (container.find('.post_counters_likes:not(.inited),.comment_counters_likes:not(.inited)').length > 0) {
            container.find('.post_counters_likes:not(.inited),.comment_counters_likes:not(.inited)').addClass('inited').on('click', function(e) {
                var button = jQuery(this);
                var inc = button.hasClass('enabled') ? 1 : -1;
                var post_id = button.hasClass('post_counters_likes') ? button.data('postid') : button.data('commentid');
                var cookie_likes = trx_addons_get_cookie(button.hasClass('post_counters_likes') ? 'trx_addons_likes' : 'trx_addons_comment_likes');
                if (cookie_likes === undefined || cookie_likes === null) cookie_likes = '';
                jQuery.post(TRX_ADDONS_STORAGE['ajax_url'], {
                    action: button.hasClass('post_counters_likes') ? 'post_counter' : 'comment_counter',
                    nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
                    post_id: post_id,
                    likes: inc
                }).done(function(response) {
                    var rez = {};
                    try {
                        rez = JSON.parse(response);
                    } catch (e) {
                        rez = {
                            error: TRX_ADDONS_STORAGE['msg_ajax_error']
                        };
                        console.log(response);
                    }
                    if (rez.error === '') {
                        var counter = rez.counter;
                        if (inc == 1) {
                            var title = button.data('title-dislike');
                            button.removeClass('enabled trx_addons_icon-heart-empty').addClass('disabled trx_addons_icon-heart');
                            cookie_likes += (cookie_likes.substr(-1) != ',' ? ',' : '') + post_id + ',';
                        } else {
                            var title = button.data('title-like');
                            button.removeClass('disabled trx_addons_icon-heart').addClass('enabled trx_addons_icon-heart-empty');
                            cookie_likes = cookie_likes.replace(',' + post_id + ',', ',');
                        }
                        button.data('likes', counter).attr('title', title).find(button.hasClass('post_counters_likes') ? '.post_counters_number' : '.comment_counters_number').html(counter);
                        trx_addons_set_cookie(button.hasClass('post_counters_likes') ? 'trx_addons_likes' : 'trx_addons_comment_likes', cookie_likes, 365);
                    } else {
                        alert(TRX_ADDONS_STORAGE['msg_error_like']);
                    }
                });
                e.preventDefault();
                return false;
            });
        }
        if (container.find('.socials_share .socials_caption:not(.inited)').length > 0) {
            container.find('.socials_share .socials_caption:not(.inited)').each(function() {
                jQuery(this).addClass('inited').on('click', function(e) {
                    jQuery(this).siblings('.social_items').slideToggle();
                    e.preventDefault();
                    return false;
                });
            });
        }
        if (container.find('.socials_share .social_items:not(.inited)').length > 0) {
            container.find('.socials_share .social_items:not(.inited)').each(function() {
                jQuery(this).addClass('inited').on('click', '.social_item_popup', function(e) {
                    var url = jQuery(this).data('link');
                    window.open(url, '_blank', 'scrollbars=0, resizable=1, menubar=0, left=100, top=100, width=480, height=400, toolbar=0, status=0');
                    e.preventDefault();
                    return false;
                });
            });
        }
        container.find('.widget ul > li').each(function() {
            if (jQuery(this).find('ul').length > 0) {
                jQuery(this).addClass('has_children');
            }
        });
        container.find('.widget_archive a:not(.inited)').addClass('inited').each(function() {
            var val = jQuery(this).html().split(' ');
            if (val.length > 1) {
                val[val.length - 1] = '<span>' + val[val.length - 1] + '</span>';
                jQuery(this).html(val.join(' '))
            }
        });
        jQuery('.sc_layouts_menu_nav').each(function() {
            if (jQuery(this).find('.current-menu-item').length == 0 || jQuery('body').hasClass('blog_template')) {
                if (TRX_ADDONS_STORAGE['menu_cache'] === undefined) TRX_ADDONS_STORAGE['menu_cache'] = [];
                var id = jQuery(this).attr('id');
                if (id === undefined) {
                    id = ('sc_layouts_menu_nav_' + Math.random()).replace('.', '');
                    jQuery(this).attr('id', id);
                }
                TRX_ADDONS_STORAGE['menu_cache'].push('#' + id);
            }
        });
        if (TRX_ADDONS_STORAGE['menu_cache'] && TRX_ADDONS_STORAGE['menu_cache'].length > 0) {
            var href = window.location.href;
            if (href.substr(-1) == '/') href = href.substr(0, href.length - 1);
            var href2 = href + '/';
            for (var i = 0; i < TRX_ADDONS_STORAGE['menu_cache'].length; i++) {
                var menu = jQuery(TRX_ADDONS_STORAGE['menu_cache'][i] + ':not(.prepared)');
                if (menu.length == 0) continue;
                menu.addClass('prepared');
                menu.find('li').removeClass('current-menu-ancestor current-menu-parent current-menu-item current_page_item');
                menu.find('a[href="' + href + '"],a[href="' + href2 + '"]').each(function(idx) {
                    var li = jQuery(this).parent();
                    li.addClass('current-menu-item');
                    if (li.hasClass('menu-item-object-page')) li.addClass('current_page_item');
                    var cnt = 0;
                    while ((li = li.parents('li')).length > 0) {
                        cnt++;
                        li.addClass('current-menu-ancestor' + (cnt == 1 ? ' current-menu-parent' : ''));
                    }
                });
            }
        }
        container.find('.trx_addons_scroll_to_top:not(.inited)').addClass('inited').on('click', function(e) {
            jQuery('html,body').animate({
                scrollTop: 0
            }, 'slow');
            e.preventDefault();
            return false;
        });
        jQuery(document).trigger('action.before_ready_trx_addons');
        jQuery(document).trigger('action.ready_trx_addons');
        jQuery(document).trigger('action.after_ready_trx_addons');
    }
    if (TRX_ADDONS_STORAGE['ajax_views']) {
        jQuery(document).on('action.ready_trx_addons', function() {
            if (!TRX_ADDONS_STORAGE['post_views_counter_inited']) {
                TRX_ADDONS_STORAGE['post_views_counter_inited'] = true;
                setTimeout(function() {
                    jQuery.post(TRX_ADDONS_STORAGE['ajax_url'], {
                        action: 'post_counter',
                        nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
                        post_id: TRX_ADDONS_STORAGE['post_id'],
                        views: 1
                    }).done(function(response) {
                        var rez = {};
                        try {
                            rez = JSON.parse(response);
                        } catch (e) {
                            rez = {
                                error: TRX_ADDONS_STORAGE['ajax_error']
                            };
                            console.log(response);
                        }
                        if (rez.error === '') {
                            jQuery('.post_counters_single .post_counters_views .post_counters_number,.sc_layouts_title_meta .post_counters_views .post_counters_number').html(rez.counter);
                        }
                    });
                }, 10);
            }
        });
    }

    function trx_addons_scroll_actions() {
        var scroll_offset = jQuery(window).scrollTop();
        var scroll_to_top_button = jQuery('.trx_addons_scroll_to_top');
        var adminbar_height = Math.max(0, jQuery('#wpadminbar').height());
        if (scroll_to_top_button.length > 0) {
            if (scroll_offset > 100) scroll_to_top_button.addClass('show');
            else scroll_to_top_button.removeClass('show');
        }
        jQuery('[data-animation^="animated"]:not(.animated)').each(function() {
            if (jQuery(this).offset().top < scroll_offset + jQuery(window).height()) jQuery(this).addClass(jQuery(this).data('animation'));
        });
        jQuery(document).trigger('action.scroll_trx_addons');
    }

    function trx_addons_resize_actions(cont) {
        if (cont === undefined) cont = jQuery('body');
        jQuery(document).trigger('action.resize_vc_row_start', [cont]);
        trx_addons_resize_video(cont);
        jQuery(document).trigger('action.resize_trx_addons', [cont]);
        jQuery(document).trigger('action.resize_vc_row_end', [cont]);
    }

    function trx_addons_resize_video(cont) {
        if (cont === undefined) cont = jQuery('body');
        cont.find('video').each(function() {
            if (jQuery(this).parents('div:hidden,section:hidden,article:hidden').length > 0) {
                return;
            }
            var video = jQuery(this).eq(0);
            var ratio = (video.data('ratio') != undefined ? video.data('ratio').split(':') : [16, 9]);
            ratio = ratio.length != 2 || ratio[0] == 0 || ratio[1] == 0 ? 16 / 9 : ratio[0] / ratio[1];
            var mejs_cont = video.parents('.mejs-video');
            var w_attr = video.data('width');
            var h_attr = video.data('height');
            if (!w_attr || !h_attr) {
                w_attr = video.attr('width');
                h_attr = video.attr('height');
                if (!w_attr || !h_attr) return;
                video.data({
                    'width': w_attr,
                    'height': h_attr
                });
            }
            var percent = ('' + w_attr).substr(-1) == '%';
            w_attr = parseInt(w_attr, 10);
            h_attr = parseInt(h_attr, 10);
            var w_real = Math.round(mejs_cont.length > 0 ? Math.min(percent ? 10000 : w_attr, mejs_cont.parents('div,article').width()) : video.width()),
                h_real = Math.round(percent ? w_real / ratio : w_real / w_attr * h_attr);
            if (parseInt(video.attr('data-last-width'), 10) == w_real) return;
            if (mejs_cont.length > 0 && mejs) {
                trx_addons_set_mejs_player_dimensions(video, w_real, h_real);
            }
            if (percent) {
                video.height(h_real);
            } else {
                video.attr({
                    'width': w_real,
                    'height': h_real
                }).css({
                    'width': w_real + 'px',
                    'height': h_real + 'px'
                });
            }
            video.attr('data-last-width', w_real);
        });
        cont.find('.video_frame iframe').each(function() {
            if (jQuery(this).parents('div:hidden,section:hidden,article:hidden').length > 0) {
                return;
            }
            var iframe = jQuery(this).eq(0);
            if (iframe.attr('src').indexOf('soundcloud') > 0) return;
            var ratio = (iframe.data('ratio') != undefined ? iframe.data('ratio').split(':') : (iframe.parent().data('ratio') != undefined ? iframe.parent().data('ratio').split(':') : (iframe.find('[data-ratio]').length > 0 ? iframe.find('[data-ratio]').data('ratio').split(':') : [16, 9])));
            ratio = ratio.length != 2 || ratio[0] == 0 || ratio[1] == 0 ? 16 / 9 : ratio[0] / ratio[1];
            var w_attr = iframe.attr('width');
            var h_attr = iframe.attr('height');
            if (!w_attr || !h_attr) {
                return;
            }
            var percent = ('' + w_attr).substr(-1) == '%';
            w_attr = parseInt(w_attr, 10);
            h_attr = parseInt(h_attr, 10);
            var pw = iframe.parent().width(),
                ph = iframe.parent().height(),
                w_real = pw,
                h_real = Math.round(percent ? w_real / ratio : w_real / w_attr * h_attr);
            if (iframe.parent().css('position') == 'absolute' && h_real > ph) {
                h_real = ph;
                w_real = Math.round(percent ? h_real * ratio : h_real * w_attr / h_attr)
            }
            if (parseInt(iframe.attr('data-last-width'), 10) == w_real) return;
            iframe.css({
                'width': w_real + 'px',
                'height': h_real + 'px'
            });
            iframe.attr('data-last-width', w_real);
        });
    }

    function trx_addons_set_mejs_player_dimensions(video, w, h) {
        if (mejs) {
            for (var pl in mejs.players) {
                if (mejs.players[pl].media.src == video.attr('src')) {
                    if (mejs.players[pl].media.setVideoSize) {
                        mejs.players[pl].media.setVideoSize(w, h);
                    }
                    mejs.players[pl].setPlayerSize(w, h);
                    mejs.players[pl].setControlsSize();
                }
            }
        }
    }
});
jQuery(document).on('action.ready_trx_addons', function() {
    "use strict";
    if (jQuery('.trx_addons_login_link:not(.inited)').length > 0) {
        jQuery('.trx_addons_login_link:not(.inited)').addClass('inited').on('click', function(e) {
            jQuery(this).find('.trx_addons_login_menu').slideToggle().parent().toggleClass('menu_opened');
            e.preventDefault();
            return false;
        });
        jQuery('body').on('click', function(e) {
            jQuery(this).find('.trx_addons_login_menu:visible').slideUp().parent().removeClass('menu_opened');
        });
    }
    jQuery('form.trx_addons_popup_form_login:not(.inited)').addClass('inited').submit(function(e) {
        var rez = trx_addons_login_validate(jQuery(this));
        if (!rez) e.preventDefault();
        return rez;
    });
    jQuery('form.trx_addons_popup_form_register:not(.inited)').addClass('inited').submit(function(e) {
        var rez = trx_addons_registration_validate(jQuery(this));
        if (!rez) e.preventDefault();
        return rez;
    });

    function trx_addons_login_validate(form) {
        form.find('input').removeClass('trx_addons_field_error');
        var error = trx_addons_form_validate(form, {
            error_message_time: 4000,
            exit_after_first_error: true,
            rules: [{
                field: "log",
                min_length: {
                    value: 1,
                    message: TRX_ADDONS_STORAGE['msg_login_empty']
                },
                max_length: {
                    value: 60,
                    message: TRX_ADDONS_STORAGE['msg_login_long']
                }
            }, {
                field: "pwd",
                min_length: {
                    value: 4,
                    message: TRX_ADDONS_STORAGE['msg_password_empty']
                },
                max_length: {
                    value: 60,
                    message: TRX_ADDONS_STORAGE['msg_password_long']
                }
            }]
        });
        if (TRX_ADDONS_STORAGE['login_via_ajax'] && !error) {
            jQuery.post(TRX_ADDONS_STORAGE['ajax_url'], {
                action: 'trx_addons_login_user',
                nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
                redirect_to: form.find('input[name="redirect_to"]').length == 1 ? form.find('input[name="redirect_to"]').val() : '',
                remember: form.find('input[name="rememberme"]').val(),
                user_log: form.find('input[name="log"]').val(),
                user_pwd: form.find('input[name="pwd"]').val()
            }).done(function(response) {
                var rez = {};
                try {
                    rez = JSON.parse(response);
                } catch (e) {
                    rez = {
                        error: TRX_ADDONS_STORAGE['msg_ajax_error']
                    };
                    console.log(response);
                }
                var result = form.find(".trx_addons_message_box").toggleClass("trx_addons_message_box_error", false).toggleClass("trx_addons_message_box_success", false);
                if (rez.error === '') {
                    result.addClass("trx_addons_message_box_success").html(TRX_ADDONS_STORAGE['msg_login_success']);
                    setTimeout(function() {
                        if (rez.redirect_to != '') {
                            location.href = rez.redirect_to;
                        } else {
                            location.reload();
                        }
                    }, 3000);
                } else {
                    result.addClass("trx_addons_message_box_error").html(TRX_ADDONS_STORAGE['msg_login_error'] + (rez.error !== undefined ? '<br>' + rez.error : ''));
                }
                result.fadeIn().delay(3000).fadeOut();
            });
        }
        return !TRX_ADDONS_STORAGE['login_via_ajax'] && !error;
    }

    function trx_addons_registration_validate(form) {
        form.find('input').removeClass('trx_addons_field_error');
        var error = trx_addons_form_validate(form, {
            error_message_time: 4000,
            exit_after_first_error: true,
            rules: [{
                field: "agree",
                state: {
                    value: 'checked',
                    message: TRX_ADDONS_STORAGE['msg_not_agree']
                },
            }, {
                field: "log",
                min_length: {
                    value: 1,
                    message: TRX_ADDONS_STORAGE['msg_login_empty']
                },
                max_length: {
                    value: 60,
                    message: TRX_ADDONS_STORAGE['msg_login_long']
                }
            }, {
                field: "email",
                min_length: {
                    value: 7,
                    message: TRX_ADDONS_STORAGE['msg_email_not_valid']
                },
                max_length: {
                    value: 60,
                    message: TRX_ADDONS_STORAGE['msg_email_long']
                },
                mask: {
                    value: TRX_ADDONS_STORAGE['email_mask'],
                    message: TRX_ADDONS_STORAGE['msg_email_not_valid']
                }
            }, {
                field: "pwd",
                min_length: {
                    value: 4,
                    message: TRX_ADDONS_STORAGE['msg_password_empty']
                },
                max_length: {
                    value: 60,
                    message: TRX_ADDONS_STORAGE['msg_password_long']
                }
            }, {
                field: "pwd2",
                equal_to: {
                    value: 'pwd',
                    message: TRX_ADDONS_STORAGE['msg_password_not_equal']
                }
            }]
        });
        if (!error) {
            jQuery.post(TRX_ADDONS_STORAGE['ajax_url'], {
                action: 'trx_addons_registration_user',
                nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
                redirect_to: form.find('input[name="redirect_to"]').length == 1 ? form.find('input[name="redirect_to"]').val() : '',
                user_name: form.find('input[name="log"]').val(),
                user_email: form.find('input[name="email"]').val(),
                user_pwd: form.find('input[name="pwd"]').val()
            }).done(function(response) {
                var rez = {};
                try {
                    rez = JSON.parse(response);
                } catch (e) {
                    rez = {
                        error: TRX_ADDONS_STORAGE['msg_ajax_error']
                    };
                    console.log(response);
                }
                var result = form.find(".trx_addons_message_box").toggleClass("trx_addons_message_box_error", false).toggleClass("trx_addons_message_box_success", false);
                if (rez.error === '') {
                    result.addClass("trx_addons_message_box_success").html(TRX_ADDONS_STORAGE['msg_registration_success']);
                    setTimeout(function() {
                        if (rez.redirect_to != '') {
                            location.href = rez.redirect_to;
                        } else {
                            jQuery('#trx_addons_login_popup .trx_addons_tabs_title_login > a').trigger('click');
                        }
                    }, 3000);
                } else {
                    result.addClass("trx_addons_message_box_error").html(TRX_ADDONS_STORAGE['msg_registration_error'] + (rez.error !== undefined ? '<br>' + rez.error : ''));
                }
                result.fadeIn().delay(3000).fadeOut();
            });
        }
        return false;
    }
});
(function() {
    "use strict";

    function trx_addons_sc_fullheight(e, container) {
        if (container === undefined) container = jQuery('body');
        if (container === undefined || container.length === undefined || container.length == 0) return;
        container.find('.trx_addons_stretch_height').each(function() {
            var fullheight_item = jQuery(this);
            if (jQuery(this).parents('div:hidden,article:hidden').length > 0) {
                return;
            }
            var wh = 0;
            var fullheight_row = jQuery(this).parents('.vc_row-o-full-height');
            if (fullheight_row.length > 0) {
                wh = fullheight_row.css('height') != 'auto' ? fullheight_row.height() : 'auto';
            } else {
                if (jQuery(window).height() > 1000) {
                    var adminbar = jQuery('#wpadminbar');
                    wh = jQuery(window).height() - (adminbar.length > 0 ? adminbar.height() : 0);
                } else wh = 'auto';
            }
            if (wh == 'auto' || wh > 0) fullheight_item.height(wh);
        });
    }
    jQuery(document).on('action.resize_trx_addons', trx_addons_sc_equalheight);

    function trx_addons_sc_equalheight(e, container) {
        if (container === undefined) container = jQuery('body');
        if (container === undefined || container.length === undefined || container.length == 0) return;
        container.find('[data-equal-height],.trx_addons_equal_height').each(function() {
            var eh_wrap = jQuery(this);
            var eh_items_selector = eh_wrap.data('equal-height');
            if (eh_items_selector === undefined) eh_items_selector = '>*';
            var max_h = 0;
            var items = [];
            var row_y = 0;
            var i = 0;
            eh_wrap.find(eh_items_selector).each(function() {
                var el = jQuery(this);
                el.css('visibility', 'hidden').height('auto');
                var el_height = el.height();
                var el_offset = el.offset().top;
                if (row_y == 0) row_y = el_offset;
                if (row_y < el_offset) {
                    if (items.length > 0) {
                        if (max_h > 0) {
                            for (i = 0; i < items.length; i++) items[i].css('visibility', 'visible').height(max_h);
                        }
                        items = [];
                        max_h = 0;
                    }
                    row_y = el_offset;
                }
                if (el_height > max_h) max_h = el_height;
                items.push(el);
            });
            if (items.length > 0 && max_h > 0) {
                for (i = 0; i < items.length; i++) items[i].css('visibility', 'visible').height(max_h);
            }
        });
    }
    jQuery(document).on('action.ready_trx_addons', function() {
        "use strict";
        jQuery('.sc_post_details_popup:not(.inited)').addClass('inited').on('click', 'a', function(e) {
            trx_addons_show_post_details(jQuery(this).parents('[data-post_id]'), true);
            e.preventDefault();
            return false;
        });
        if (jQuery('.sc_post_details_popup.inited').length > 0) {
            jQuery('body:not(.sc_post_details_popup_inited)').addClass('sc_post_details_popup_inited').on('click', '#trx_addons_post_details_popup_overlay, .trx_addons_post_details_popup_close', function(e) {
                jQuery('#trx_addons_post_details_popup').fadeOut();
                jQuery('#trx_addons_post_details_popup_overlay').fadeOut();
            }).on('click', '.trx_addons_post_details_popup_prev,.trx_addons_post_details_popup_next', function(e) {
                var popup = jQuery('#trx_addons_post_details_popup');
                var post_item = popup.data('post_item');
                if (!post_item || post_item.length == 0) return;
                var posts_items = post_item.parents('.sc_item_columns,.sc_item_slider').find('[data-post_id]');
                var cur_idx = -1;
                posts_items.each(function(idx) {
                    if (jQuery(this).data('post_id') == post_item.data('post_id')) cur_idx = idx;
                });
                if (cur_idx == -1) return;
                post_item = jQuery(this).hasClass('trx_addons_post_details_popup_prev') ? (cur_idx > 0 ? posts_items.eq(cur_idx - 1) : false) : (cur_idx < posts_items.length - 1 ? posts_items.eq(cur_idx + 1) : false);
                if (!post_item || post_item.length == 0) return;
                popup.fadeOut();
                trx_addons_show_post_details(post_item, false);
            });
        }

        function trx_addons_show_post_details(post_item, show_overlay) {
            jQuery.post(TRX_ADDONS_STORAGE['ajax_url'], {
                action: 'trx_addons_post_details_in_popup',
                nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
                post_id: post_item.data('post_id'),
                post_type: post_item.data('post_type')
            }).done(function(response) {
                var rez = {};
                if (response == '' || response == 0) {
                    rez = {
                        error: TRX_ADDONS_STORAGE['msg_ajax_error']
                    };
                } else {
                    try {
                        rez = JSON.parse(response);
                    } catch (e) {
                        rez = {
                            error: TRX_ADDONS_STORAGE['msg_ajax_error']
                        };
                        console.log(response);
                    }
                }
                var msg = rez.error === '' ? rez.data : rez.error;
                var popup = jQuery('#trx_addons_post_details_popup');
                var overlay = jQuery('#trx_addons_post_details_popup_overlay');
                if (popup.length == 0) {
                    jQuery('body').append('<div id="trx_addons_post_details_popup_overlay"></div>' + '<div id="trx_addons_post_details_popup">' + '<div class="trx_addons_post_details_content"></div>' + '<span class="trx_addons_post_details_popup_close trx_addons_icon-cancel"></span>' + '<span class="trx_addons_post_details_popup_prev trx_addons_icon-left"></span>' + '<span class="trx_addons_post_details_popup_next trx_addons_icon-right"></span>' + '</div>');
                    popup = jQuery('#trx_addons_post_details_popup');
                    overlay = jQuery('#trx_addons_post_details_popup_overlay');
                }
                popup.data('post_item', post_item).find('.trx_addons_post_details_content').html(msg);
                if (show_overlay) overlay.fadeIn();
                popup.fadeIn();
            });
        }
    });
})();
(function() {
    "use strict";
    jQuery(document).on('action.init_shortcodes', trx_addons_js_composer_init);
    jQuery(document).on('action.init_hidden_elements', trx_addons_js_composer_init);

    function trx_addons_js_composer_init(e, container) {
        if (container === undefined) container = jQuery('body');
        if (container.length === undefined || container.length == 0) return;
        container.find('.vc_message_box_closeable:not(.inited)').addClass('inited').on('click', function(e) {
            jQuery(this).fadeOut();
            e.preventDefault();
            return false;
        });
    }
    jQuery(document).on('action.resize_trx_addons', trx_addons_js_composer_fix_column);
    jQuery(document).on('action.scroll_trx_addons', trx_addons_js_composer_fix_column);

    function trx_addons_js_composer_fix_column(e, cont) {
        if (cont === undefined) cont = jQuery('body');
        cont.find('.vc_column_fixed').each(function() {
            var col = jQuery(this),
                row = col.parent();
            if (col.attr('class').indexOf('vc_col-lg-') != -1 || col.attr('class').indexOf('vc_col-md-') != -1) {
                return;
            } else if (jQuery(window).width() < 768) {
                var old_style = col.data('old_style');
                if (old_style !== undefined) col.attr('style', old_style).removeAttr('data-old_style');
            } else {
                var col_height = col.outerHeight();
                var row_height = row.outerHeight();
                var row_top = row.offset().top;
                var scroll_offset = jQuery(window).scrollTop();
                var top_panel_fixed_height = trx_addons_fixed_rows_height();
                if (col_height < row_height && scroll_offset + top_panel_fixed_height > row_top) {
                    var col_init = {
                        'position': 'undefined',
                        'top': 'auto',
                        'bottom': 'auto'
                    };
                    if (typeof TRX_ADDONS_STORAGE['scroll_offset_last'] == 'undefined') {
                        TRX_ADDONS_STORAGE['col_top_last'] = row_top;
                        TRX_ADDONS_STORAGE['scroll_offset_last'] = scroll_offset;
                        TRX_ADDONS_STORAGE['scroll_dir_last'] = 1;
                    }
                    var scroll_dir = scroll_offset - TRX_ADDONS_STORAGE['scroll_offset_last'];
                    if (scroll_dir == 0) scroll_dir = TRX_ADDONS_STORAGE['scroll_dir_last'];
                    else scroll_dir = scroll_dir > 0 ? 1 : -1;
                    var col_big = col_height + 30 >= jQuery(window).height() - top_panel_fixed_height,
                        col_top = col.offset().top;
                    if (col_top < 0) col_top = TRX_ADDONS_STORAGE['col_top_last'];
                    if (col_big) {
                        if (scroll_dir != TRX_ADDONS_STORAGE['scroll_dir_last'] && col.css('position') == 'fixed') {
                            col_init.top = col_top - row_top;
                            col_init.position = 'absolute';
                        } else if (scroll_dir > 0) {
                            if (scroll_offset + jQuery(window).height() >= row_top + row_height + 30) {
                                col_init.bottom = 0;
                                col_init.position = 'absolute';
                            } else if (scroll_offset + jQuery(window).height() >= (col.css('position') == 'absolute' ? col_top : row_top) + col_height + 30) {
                                col_init.bottom = 30;
                                col_init.position = 'fixed';
                            }
                        } else {
                            if (scroll_offset + top_panel_fixed_height <= col_top) {
                                col_init.top = top_panel_fixed_height;
                                col_init.position = 'fixed';
                            }
                        }
                    } else {
                        if (scroll_offset + top_panel_fixed_height >= row_top + row_height - col_height) {
                            col_init.bottom = 0;
                            col_init.position = 'absolute';
                        } else {
                            col_init.top = top_panel_fixed_height;
                            col_init.position = 'fixed';
                        }
                    }
                    if (col_init.position != 'undefined') {
                        if (!col.prev().hasClass('trx_addons_fixed_column_placeholder')) {
                            col.before('<div class="trx_addons_fixed_column_placeholder ' + col.attr('class') + '"></div>');
                            col.prev().removeClass('vc_column_fixed');
                        }
                        col_init.left = col_init.position == 'fixed' ? col.prev().offset().left : col.prev().position().left;
                        col_init.width = col.prev().width();
                        if (col.css('position') != col_init.position || TRX_ADDONS_STORAGE['scroll_dir_last'] != scroll_dir || col.width() != col_init.width) {
                            if (col.data('old_style') === undefined) {
                                var style = col.attr('style');
                                if (!style) style = '';
                                col.attr('data-old_style', style);
                            }
                            col.css(col_init);
                        }
                    }
                    TRX_ADDONS_STORAGE['col_top_last'] = col_top;
                    TRX_ADDONS_STORAGE['scroll_offset_last'] = scroll_offset;
                    TRX_ADDONS_STORAGE['scroll_dir_last'] = scroll_dir;
                } else {
                    var old_style = col.data('old_style');
                    if (old_style !== undefined) {
                        col.attr('style', old_style).removeAttr('data-old_style');
                        if (col.prev().hasClass('trx_addons_fixed_column_placeholder')) col.prev().remove();
                    }
                }
            }
        });
    }
})();
jQuery(document).on('action.ready_trx_addons', function() {
    "use strict";
    var rows = jQuery('.sc_layouts_row_fixed'),
        rows_always = jQuery('.sc_layouts_row_fixed_always');
    if (rows.length > 0) {
        rows.each(function() {
            if (!jQuery(this).next().hasClass('sc_layouts_row_fixed_placeholder')) jQuery(this).after('<div class="sc_layouts_row_fixed_placeholder" style="background-color:' + jQuery(this).css('background-color') + ';"></div>');
        });
        jQuery(document).on('action.scroll_trx_addons', function() {
            trx_addons_cpt_layouts_fix_rows(rows, rows_always, false);
        });
        jQuery(document).on('action.resize_trx_addons', function() {
            trx_addons_cpt_layouts_fix_rows(rows, rows_always, true);
        });
    }

    function trx_addons_cpt_layouts_fix_rows(rows, rows_always, resize) {
        if (jQuery(window).width() < 768) {
            rows.each(function() {
                if (!jQuery(this).hasClass('sc_layouts_row_fixed_always')) jQuery(this).removeClass('sc_layouts_row_fixed_on').css({
                    'top': 'auto'
                });
            });
            if (rows_always.length == 0) return;
            else rows = rows_always;
        }
        var scroll_offset = jQuery(window).scrollTop();
        var admin_bar = jQuery('#wpadminbar');
        var rows_offset = trx_addons_fixed_rows_height(true, false);
        rows.each(function() {
            var placeholder = jQuery(this).next();
            var offset = parseInt(jQuery(this).hasClass('sc_layouts_row_fixed_on') ? placeholder.offset().top : jQuery(this).offset().top, 10);
            if (isNaN(offset)) offset = 0;
            if (scroll_offset + rows_offset <= offset) {
                if (jQuery(this).hasClass('sc_layouts_row_fixed_on')) {
                    jQuery(this).removeClass('sc_layouts_row_fixed_on').css({
                        'top': 'auto'
                    });
                    jQuery(document).trigger('action.sc_layouts_row_fixed_off');
                }
            } else {
                var h = jQuery(this).outerHeight();
                if (!jQuery(this).hasClass('sc_layouts_row_fixed_on')) {
                    if (rows_offset + h < jQuery(window).height() * 0.33) {
                        placeholder.height(h);
                        jQuery(this).addClass('sc_layouts_row_fixed_on').css({
                            'top': rows_offset + 'px'
                        });
                        h = jQuery(this).outerHeight();
                        jQuery(document).trigger('action.sc_layouts_row_fixed_on');
                    }
                } else if (resize && jQuery(this).hasClass('sc_layouts_row_fixed_on') && jQuery(this).offset().top != rows_offset) {
                    jQuery(this).css({
                        'top': rows_offset + 'px'
                    });
                }
                rows_offset += h;
            }
        });
    }
    if (typeof TRX_ADDONS_STORAGE['animate_to_hash'] == 'undefined') {
        TRX_ADDONS_STORAGE['animate_to_hash'] = true;
        setTimeout(function() {
            var fixed_height = 0;
            if (location.hash != '' && (fixed_height = trx_addons_fixed_rows_height()) > 0) trx_addons_document_animate_to(jQuery(window).scrollTop() - fixed_height);
        }, 10);
    }
});
jQuery(document).on('action.ready_trx_addons', function() {
    "use strict";
    jQuery('.sc_services_tabs:not(.inited)').addClass('inited').on('click', '.sc_services_tabs_list_item:not(.sc_services_tabs_list_item_active)', function(e) {
        jQuery(this).siblings().removeClass('sc_services_tabs_list_item_active');
        jQuery(this).addClass('sc_services_tabs_list_item_active');
        var content = jQuery(this).parent().siblings('.sc_services_tabs_content');
        var items = content.find('.sc_services_item');
        content.find('.sc_services_item_active').addClass('sc_services_item_flip').removeClass('sc_services_item_active');
        items.eq(jQuery(this).index()).addClass('sc_services_item_active');
        setTimeout(function() {
            content.find('.sc_services_item_flip').addClass('trx_addons_hidden').removeClass('sc_services_item_flip');
            items.removeClass('sc_services_item_flipping');
            setTimeout(function() {
                items.removeClass('trx_addons_hidden');
            }, 600);
        }, 600);
        if (true || /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor)) {
            setTimeout(function() {
                content.find('.sc_services_item_active').addClass('sc_services_item_flipping');
            }, 250);
        }
        e.preventDefault();
        return false;
    });
    jQuery('.sc_services_tabs_simple:not(.inited)').addClass('inited').on('click', '.sc_services_tabs_list_item:not(.sc_services_tabs_list_item_active)', function(e) {
        jQuery(this).siblings().removeClass('sc_services_tabs_list_item_active');
        jQuery(this).addClass('sc_services_tabs_list_item_active');
        var content = jQuery(this).parent().siblings('.sc_services_tabs_content');
        var items = content.find('.sc_services_tabs_content_item');
        content.find('.sc_services_tabs_content_item_active').addClass('sc_services_item_flip').removeClass('sc_services_tabs_content_item_active');
        items.eq(jQuery(this).index()).addClass('sc_services_tabs_content_item_active');
        setTimeout(function() {
            content.find('sc_services_item_flip').removeClass('sc_services_item_flip');
        }, 600);
        e.preventDefault();
        return false;
    });
});
jQuery(document).on('action.init_shortcodes', function(e, container) {
    "use strict";
    if (container.find('.sc_form_form:not(.sc_form_custom):not(.inited)').length > 0) {
        container.find('.sc_form_form:not(.sc_form_custom):not(.inited)').addClass('inited').submit(function(e) {
            sc_form_validate(jQuery(this));
            e.preventDefault();
            return false;
        });
    }
    jQuery('input[type="text"]:not(.fill_inited),input[type="number"]:not(.fill_inited),input[type="search"]:not(.fill_inited),input[type="password"]:not(.fill_inited),input[type="email"]:not(.fill_inited),textarea:not(.fill_inited),select:not(.fill_inited)').each(function() {
        var fld = jQuery(this);
        sc_form_mark_filled(fld);
        fld.addClass('fill_inited').on('blur change', function() {
            sc_form_mark_filled(jQuery(this));
            if (jQuery(this).hasClass('filled')) jQuery(this).removeClass('trx_addons_field_error wpcf7-not-valid');
        });
    });

    function sc_form_mark_filled(field) {
        if (field.val() != '') field.addClass('filled');
        else field.removeClass('filled');
    }

    function sc_form_validate(form) {
        var url = form.attr('action');
        if (url == '') return false;
        form.find('input').removeClass('trx_addons_error_field');
        var error = trx_addons_form_validate(form, {
            rules: [{
                field: "name",
                min_length: {
                    value: 1,
                    message: TRX_ADDONS_STORAGE['msg_field_name_empty']
                },
            }, {
                field: "email",
                min_length: {
                    value: 1,
                    message: TRX_ADDONS_STORAGE['msg_field_email_empty']
                },
                mask: {
                    value: TRX_ADDONS_STORAGE['email_mask'],
                    message: TRX_ADDONS_STORAGE['msg_field_email_not_valid']
                }
            }, {
                field: "message",
                min_length: {
                    value: 1,
                    message: TRX_ADDONS_STORAGE['msg_field_text_empty']
                },
            }]
        });
        if (!error && url != '#') {
            jQuery.post(url, {
                action: "send_sc_form",
                nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
                data: form.serialize()
            }).done(function(response) {
                var rez = {};
                try {
                    rez = JSON.parse(response);
                } catch (e) {
                    rez = {
                        error: TRX_ADDONS_STORAGE['msg_ajax_error']
                    };
                    console.log(response);
                }
                var result = form.find(".trx_addons_message_box").toggleClass("trx_addons_message_box_error", false).toggleClass("trx_addons_message_box_success", false);
                if (rez.error === '') {
                    form.get(0).reset();
                    result.addClass("trx_addons_message_box_success").html(TRX_ADDONS_STORAGE['msg_send_complete']);
                } else {
                    result.addClass("trx_addons_message_box_error").html(TRX_ADDONS_STORAGE['msg_send_error'] + ' ' + rez.error);
                }
                result.fadeIn().delay(3000).fadeOut();
            });
        }
        return !error;
    }
});
(function() {
    "use strict";
    var googlemap = {
        'inited': false,
        'geocoder': null,
        'maps': []
    };
    jQuery(document).on('action.init_hidden_elements', trx_addons_sc_googlemap_init);
    jQuery(document).on('action.init_shortcodes', trx_addons_sc_googlemap_init);

    function trx_addons_sc_googlemap_init(e, container) {
        if (container === undefined) container = jQuery('body');
        if (container.find('.sc_googlemap:not(.inited)').length > 0) {
            container.find('.sc_googlemap:not(.inited)').each(function() {
                if (jQuery(this).parents('div:hidden,article:hidden').length > 0) return;
                var map = jQuery(this).addClass('inited');
                var map_id = map.attr('id');
                var map_zoom = map.data('zoom');
                var map_style = map.data('style');
                var map_cluster_icon = map.data('cluster-icon');
                var map_markers = [];
                map.find('.sc_googlemap_marker').each(function() {
                    var marker = jQuery(this);
                    map_markers.push({
                        icon: marker.data('icon'),
                        icon_retina: marker.data('icon_retina'),
                        icon_width: marker.data('icon_width'),
                        icon_height: marker.data('icon_height'),
                        address: marker.data('address'),
                        latlng: marker.data('latlng'),
                        description: marker.data('description'),
                        title: marker.data('title')
                    });
                });
                trx_addons_sc_googlemap_create(jQuery('#' + map_id).get(0), {
                    style: map_style,
                    zoom: map_zoom,
                    cluster_icon: map_cluster_icon,
                    markers: map_markers
                });
            });
        }
    }

    function trx_addons_sc_googlemap_create(dom_obj, coords) {
        if (typeof google == "undefined") {
            return;
        }
        if (!googlemap.inited) trx_addons_sc_googlemap_init_styles();
        var id = dom_obj.id;
        googlemap.maps[id] = {
            dom: dom_obj,
            markers: coords.markers,
            geocoder_request: false,
            cluster: null,
            clusterIcon: coords.cluster_icon,
            opt: {
                center: null,
                scrollwheel: false,
                scaleControl: false,
                disableDefaultUI: false,
                zoom: coords.zoom,
                zoomControl: true,
                panControl: true,
                mapTypeControl: false,
                streetViewControl: false,
                overviewMapControl: false,
                styles: TRX_ADDONS_STORAGE['googlemap_styles'][coords.style ? coords.style : 'default'],
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
        };
        trx_addons_sc_googlemap_build(id);
    }

    function trx_addons_sc_googlemap_refresh() {
        for (id in googlemap.maps) {
            trx_addons_sc_googlemap_build(id);
        }
    }

    function trx_addons_sc_googlemap_build(id) {
        googlemap.maps[id].map = new google.maps.Map(googlemap.maps[id].dom, googlemap.maps[id].opt);
        if (googlemap.maps[id].opt['zoom'] < 1) googlemap.maps[id].bounds = new google.maps.LatLngBounds();
        else googlemap.maps[id].map.setZoom(googlemap.maps[id].opt['zoom']);
        for (var i = 0; i < googlemap.maps[id].markers.length; i++) googlemap.maps[id].markers[i].inited = false;
        trx_addons_sc_googlemap_add_markers(id);
        jQuery(document).on('action.resize_trx_addons', function() {
            if (googlemap.maps[id].map) googlemap.maps[id].map.setCenter(googlemap.maps[id].opt['center']);
        });
    }

    function trx_addons_sc_googlemap_add_markers(id) {
        var inited = 0;
        for (var i = 0; i < googlemap.maps[id].markers.length; i++) {
            if (googlemap.maps[id].markers[i].inited) {
                inited++;
                continue;
            }
            if (googlemap.maps[id].markers[i].latlng == '') {
                if (googlemap.maps[id].geocoder_request !== false) continue;
                if (!googlemap.geocoder) googlemap.geocoder = new google.maps.Geocoder();
                googlemap.maps[id].geocoder_request = i;
                googlemap.geocoder.geocode({
                    address: googlemap.maps[id].markers[i].address
                }, function(results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        var idx = googlemap.maps[id].geocoder_request;
                        if (results[0].geometry.location.lat && results[0].geometry.location.lng) googlemap.maps[id].markers[idx].latlng = '' + results[0].geometry.location.lat() + ',' + results[0].geometry.location.lng();
                        else googlemap.maps[id].markers[idx].latlng = results[0].geometry.location.toString().replace(/\(\)/g, '');
                        googlemap.maps[id].geocoder_request = false;
                        setTimeout(function() {
                            trx_addons_sc_googlemap_add_markers(id);
                        }, 200);
                    } else dcl(TRX_ADDONS_STORAGE['msg_sc_googlemap_geocoder_error'] + ' ' + status);
                });
            } else {
                var latlngStr = googlemap.maps[id].markers[i].latlng.split(',');
                var markerInit = {
                    map: googlemap.maps[id].map,
                    position: new google.maps.LatLng(latlngStr[0], latlngStr[1]),
                    clickable: googlemap.maps[id].markers[i].description != ''
                };
                if (googlemap.maps[id].markers[i].icon) {
                    markerInit.icon = googlemap.maps[id].markers[i].icon_width > 0 && googlemap.maps[id].markers[i].icon_height > 0 ? new google.maps.MarkerImage(googlemap.maps[id].markers[i].icon, null, null, null, new google.maps.Size(googlemap.maps[id].markers[i].icon_width, googlemap.maps[id].markers[i].icon_height)) : googlemap.maps[id].markers[i].icon;
                }
                if (googlemap.maps[id].markers[i].title) markerInit.title = googlemap.maps[id].markers[i].title;
                googlemap.maps[id].markers[i].marker = new google.maps.Marker(markerInit);
                if (googlemap.maps[id].opt['center'] == null) {
                    googlemap.maps[id].opt['center'] = markerInit.position;
                    googlemap.maps[id].map.setCenter(googlemap.maps[id].opt['center']);
                }
                if (googlemap.maps[id].markers[i].description != '') {
                    googlemap.maps[id].markers[i].infowindow = new google.maps.InfoWindow({
                        content: googlemap.maps[id].markers[i].description
                    });
                    google.maps.event.addListener(googlemap.maps[id].markers[i].marker, "click", function(e) {
                        var latlng = e.latLng.toString().replace("(", '').replace(")", "").replace(" ", "");
                        for (var i = 0; i < googlemap.maps[id].markers.length; i++) {
                            if (trx_addons_googlemap_compare_latlng(latlng, googlemap.maps[id].markers[i].latlng)) {
                                googlemap.maps[id].markers[i].infowindow.open(googlemap.maps[id].map, googlemap.maps[id].markers[i].marker);
                                break;
                            }
                        }
                    });
                }
                googlemap.maps[id].markers[i].inited = true;
                inited++;
                if (googlemap.maps[id].opt['zoom'] < 1) {
                    googlemap.maps[id].bounds.extend(markerInit.position);
                }
            }
        }
        if (inited > 1 && inited == googlemap.maps[id].markers.length) {
            var markers = [];
            for (i = 0; i < googlemap.maps[id].markers.length; i++) markers.push(googlemap.maps[id].markers[i].marker);
            googlemap.maps[id].cluster = new MarkerClusterer(googlemap.maps[id].map, markers, {
                maxZoom: 18,
                gridSize: 60,
                styles: [{
                    url: googlemap.maps[id].clusterIcon,
                    width: 48,
                    height: 48,
                    textColor: "#fff"
                }]
            });
            if (googlemap.maps[id].opt['zoom'] < 1) googlemap.maps[id].map.fitBounds(googlemap.maps[id].bounds);
        }
    }

    function trx_addons_googlemap_compare_latlng(l1, l2) {
        var l1 = l1.replace(/\s/g, '', l1).split(',');
        var l2 = l2.replace(/\s/g, '', l2).split(',');
        var m0 = Math.min(l1[0].length, l2[0].length);
        l1[0] = Number(l1[0]).toFixed(m0);
        l2[0] = Number(l2[0]).toFixed(m0);
        var m1 = Math.min(l1[1].length, l2[1].length);
        l1[1] = Number(l1[1]).toFixed(m1);
        l2[1] = Number(l2[1]).toFixed(m1);
        return l1[0] == l2[0] && l1[1] == l2[1];
    }

    function trx_addons_sc_googlemap_init_styles() {
        TRX_ADDONS_STORAGE['googlemap_styles'] = {
            'default': [],
            'greyscale': [{
                "stylers": [{
                    "saturation": -100
                }]
            }],
            'inverse': [{
                "stylers": [{
                    "invert_lightness": true
                }, {
                    "visibility": "on"
                }]
            }],
            'simple': [{
                stylers: [{
                    hue: "#00ffe6"
                }, {
                    saturation: -20
                }]
            }, {
                featureType: "road",
                elementType: "geometry",
                stylers: [{
                    lightness: 100
                }, {
                    visibility: "simplified"
                }]
            }, {
                featureType: "road",
                elementType: "labels",
                stylers: [{
                    visibility: "off"
                }]
            }]
        };
        jQuery(document).trigger('action.add_googlemap_styles');
        googlemap.inited = true;
    }
})();

function ClusterIcon(a, b) {
    a.getMarkerClusterer().extend(ClusterIcon, google.maps.OverlayView), this.cluster_ = a, this.className_ = a.getMarkerClusterer().getClusterClass(), this.styles_ = b, this.center_ = null, this.div_ = null, this.sums_ = null, this.visible_ = !1, this.setMap(a.getMap())
}

function Cluster(a) {
    this.markerClusterer_ = a, this.map_ = a.getMap(), this.gridSize_ = a.getGridSize(), this.minClusterSize_ = a.getMinimumClusterSize(), this.averageCenter_ = a.getAverageCenter(), this.markers_ = [], this.center_ = null, this.bounds_ = null, this.clusterIcon_ = new ClusterIcon(this, a.getStyles())
}

function MarkerClusterer(a, b, c) {
    this.extend(MarkerClusterer, google.maps.OverlayView), b = b || [], c = c || {}, this.markers_ = [], this.clusters_ = [], this.listeners_ = [], this.activeMap_ = null, this.ready_ = !1, this.gridSize_ = c.gridSize || 60, this.minClusterSize_ = c.minimumClusterSize || 2, this.maxZoom_ = c.maxZoom || null, this.styles_ = c.styles || [], this.title_ = c.title || "", this.zoomOnClick_ = !0, void 0 !== c.zoomOnClick && (this.zoomOnClick_ = c.zoomOnClick), this.averageCenter_ = !1, void 0 !== c.averageCenter && (this.averageCenter_ = c.averageCenter), this.ignoreHidden_ = !1, void 0 !== c.ignoreHidden && (this.ignoreHidden_ = c.ignoreHidden), this.enableRetinaIcons_ = !1, void 0 !== c.enableRetinaIcons && (this.enableRetinaIcons_ = c.enableRetinaIcons), this.imagePath_ = c.imagePath || MarkerClusterer.IMAGE_PATH, this.imageExtension_ = c.imageExtension || MarkerClusterer.IMAGE_EXTENSION, this.imageSizes_ = c.imageSizes || MarkerClusterer.IMAGE_SIZES, this.calculator_ = c.calculator || MarkerClusterer.CALCULATOR, this.batchSize_ = c.batchSize || MarkerClusterer.BATCH_SIZE, this.batchSizeIE_ = c.batchSizeIE || MarkerClusterer.BATCH_SIZE_IE, this.clusterClass_ = c.clusterClass || "cluster", navigator.userAgent.toLowerCase().indexOf("msie") !== -1 && (this.batchSize_ = this.batchSizeIE_), this.setupStyles_(), this.addMarkers(b, !0), this.setMap(a)
}
ClusterIcon.prototype.onAdd = function() {
    var b, c, a = this;
    this.div_ = document.createElement("div"), this.div_.className = this.className_, this.visible_ && this.show(), this.getPanes().overlayMouseTarget.appendChild(this.div_), this.boundsChangedListener_ = google.maps.event.addListener(this.getMap(), "bounds_changed", function() {
        c = b
    }), google.maps.event.addDomListener(this.div_, "mousedown", function() {
        b = !0, c = !1
    }), google.maps.event.addDomListener(this.div_, "click", function(d) {
        if (b = !1, !c) {
            var e, f, g = a.cluster_.getMarkerClusterer();
            google.maps.event.trigger(g, "click", a.cluster_), google.maps.event.trigger(g, "clusterclick", a.cluster_), g.getZoomOnClick() && (f = g.getMaxZoom(), e = a.cluster_.getBounds(), g.getMap().fitBounds(e), setTimeout(function() {
                g.getMap().fitBounds(e), null !== f && g.getMap().getZoom() > f && g.getMap().setZoom(f + 1)
            }, 100)), d.cancelBubble = !0, d.stopPropagation && d.stopPropagation()
        }
    }), google.maps.event.addDomListener(this.div_, "mouseover", function() {
        var b = a.cluster_.getMarkerClusterer();
        google.maps.event.trigger(b, "mouseover", a.cluster_)
    }), google.maps.event.addDomListener(this.div_, "mouseout", function() {
        var b = a.cluster_.getMarkerClusterer();
        google.maps.event.trigger(b, "mouseout", a.cluster_)
    })
}, ClusterIcon.prototype.onRemove = function() {
    this.div_ && this.div_.parentNode && (this.hide(), google.maps.event.removeListener(this.boundsChangedListener_), google.maps.event.clearInstanceListeners(this.div_), this.div_.parentNode.removeChild(this.div_), this.div_ = null)
}, ClusterIcon.prototype.draw = function() {
    if (this.visible_) {
        var a = this.getPosFromLatLng_(this.center_);
        this.div_.style.top = a.y + "px", this.div_.style.left = a.x + "px"
    }
}, ClusterIcon.prototype.hide = function() {
    this.div_ && (this.div_.style.display = "none"), this.visible_ = !1
}, ClusterIcon.prototype.show = function() {
    if (this.div_) {
        var a = "",
            b = this.backgroundPosition_.split(" "),
            c = parseInt(b[0].trim(), 10),
            d = parseInt(b[1].trim(), 10),
            e = this.getPosFromLatLng_(this.center_);
        this.div_.style.cssText = this.createCss(e), a = "<img src='" + this.url_ + "' style='position: absolute; top: " + d + "px; left: " + c + "px; ", this.cluster_.getMarkerClusterer().enableRetinaIcons_ || (a += "clip: rect(" + -1 * d + "px, " + (-1 * c + this.width_) + "px, " + (-1 * d + this.height_) + "px, " + -1 * c + "px);"), a += "'>", this.div_.innerHTML = a + "<div style='position: absolute;top: " + this.anchorText_[0] + "px;left: " + this.anchorText_[1] + "px;color: " + this.textColor_ + ";font-size: " + this.textSize_ + "px;font-family: " + this.fontFamily_ + ";font-weight: " + this.fontWeight_ + ";font-style: " + this.fontStyle_ + ";text-decoration: " + this.textDecoration_ + ";text-align: center;width: " + this.width_ + "px;line-height:" + this.height_ + "px;'>" + this.sums_.text + "</div>", "undefined" == typeof this.sums_.title || "" === this.sums_.title ? this.div_.title = this.cluster_.getMarkerClusterer().getTitle() : this.div_.title = this.sums_.title, this.div_.style.display = ""
    }
    this.visible_ = !0
}, ClusterIcon.prototype.useStyle = function(a) {
    this.sums_ = a;
    var b = Math.max(0, a.index - 1);
    b = Math.min(this.styles_.length - 1, b);
    var c = this.styles_[b];
    this.url_ = c.url, this.height_ = c.height, this.width_ = c.width, this.anchorText_ = c.anchorText || [0, 0], this.anchorIcon_ = c.anchorIcon || [parseInt(this.height_ / 2, 10), parseInt(this.width_ / 2, 10)], this.textColor_ = c.textColor || "black", this.textSize_ = c.textSize || 11, this.textDecoration_ = c.textDecoration || "none", this.fontWeight_ = c.fontWeight || "bold", this.fontStyle_ = c.fontStyle || "normal", this.fontFamily_ = c.fontFamily || "Arial,sans-serif", this.backgroundPosition_ = c.backgroundPosition || "0 0"
}, ClusterIcon.prototype.setCenter = function(a) {
    this.center_ = a
}, ClusterIcon.prototype.createCss = function(a) {
    var b = [];
    return b.push("cursor: pointer;"), b.push("position: absolute; top: " + a.y + "px; left: " + a.x + "px;"), b.push("width: " + this.width_ + "px; height: " + this.height_ + "px;"), b.join("")
}, ClusterIcon.prototype.getPosFromLatLng_ = function(a) {
    var b = this.getProjection().fromLatLngToDivPixel(a);
    return b.x -= this.anchorIcon_[1], b.y -= this.anchorIcon_[0], b.x = parseInt(b.x, 10), b.y = parseInt(b.y, 10), b
}, Cluster.prototype.getSize = function() {
    return this.markers_.length
}, Cluster.prototype.getMarkers = function() {
    return this.markers_
}, Cluster.prototype.getCenter = function() {
    return this.center_
}, Cluster.prototype.getMap = function() {
    return this.map_
}, Cluster.prototype.getMarkerClusterer = function() {
    return this.markerClusterer_
}, Cluster.prototype.getBounds = function() {
    var a, b = new google.maps.LatLngBounds(this.center_, this.center_),
        c = this.getMarkers();
    for (a = 0; a < c.length; a++) b.extend(c[a].getPosition());
    return b
}, Cluster.prototype.remove = function() {
    this.clusterIcon_.setMap(null), this.markers_ = [], delete this.markers_
}, Cluster.prototype.addMarker = function(a) {
    var b, c, d;
    if (this.isMarkerAlreadyAdded_(a)) return !1;
    if (this.center_) {
        if (this.averageCenter_) {
            var e = this.markers_.length + 1,
                f = (this.center_.lat() * (e - 1) + a.getPosition().lat()) / e,
                g = (this.center_.lng() * (e - 1) + a.getPosition().lng()) / e;
            this.center_ = new google.maps.LatLng(f, g), this.calculateBounds_()
        }
    } else this.center_ = a.getPosition(), this.calculateBounds_();
    if (a.isAdded = !0, this.markers_.push(a), c = this.markers_.length, d = this.markerClusterer_.getMaxZoom(), null !== d && this.map_.getZoom() > d) a.getMap() !== this.map_ && a.setMap(this.map_);
    else if (c < this.minClusterSize_) a.getMap() !== this.map_ && a.setMap(this.map_);
    else if (c === this.minClusterSize_)
        for (b = 0; b < c; b++) this.markers_[b].setMap(null);
    else a.setMap(null);
    return this.updateIcon_(), !0
}, Cluster.prototype.isMarkerInClusterBounds = function(a) {
    return this.bounds_.contains(a.getPosition())
}, Cluster.prototype.calculateBounds_ = function() {
    var a = new google.maps.LatLngBounds(this.center_, this.center_);
    this.bounds_ = this.markerClusterer_.getExtendedBounds(a)
}, Cluster.prototype.updateIcon_ = function() {
    var a = this.markers_.length,
        b = this.markerClusterer_.getMaxZoom();
    if (null !== b && this.map_.getZoom() > b) return void this.clusterIcon_.hide();
    if (a < this.minClusterSize_) return void this.clusterIcon_.hide();
    var c = this.markerClusterer_.getStyles().length,
        d = this.markerClusterer_.getCalculator()(this.markers_, c);
    this.clusterIcon_.setCenter(this.center_), this.clusterIcon_.useStyle(d), this.clusterIcon_.show()
}, Cluster.prototype.isMarkerAlreadyAdded_ = function(a) {
    var b;
    if (this.markers_.indexOf) return this.markers_.indexOf(a) !== -1;
    for (b = 0; b < this.markers_.length; b++)
        if (a === this.markers_[b]) return !0;
    return !1
}, MarkerClusterer.prototype.onAdd = function() {
    var a = this;
    this.activeMap_ = this.getMap(), this.ready_ = !0, this.repaint(), this.listeners_ = [google.maps.event.addListener(this.getMap(), "zoom_changed", function() {
        a.resetViewport_(!1), this.getZoom() !== (this.get("minZoom") || 0) && this.getZoom() !== this.get("maxZoom") || google.maps.event.trigger(this, "idle")
    }), google.maps.event.addListener(this.getMap(), "idle", function() {
        a.redraw_()
    })]
}, MarkerClusterer.prototype.onRemove = function() {
    var a;
    for (a = 0; a < this.markers_.length; a++) this.markers_[a].getMap() !== this.activeMap_ && this.markers_[a].setMap(this.activeMap_);
    for (a = 0; a < this.clusters_.length; a++) this.clusters_[a].remove();
    for (this.clusters_ = [], a = 0; a < this.listeners_.length; a++) google.maps.event.removeListener(this.listeners_[a]);
    this.listeners_ = [], this.activeMap_ = null, this.ready_ = !1
}, MarkerClusterer.prototype.draw = function() {}, MarkerClusterer.prototype.setupStyles_ = function() {
    var a, b;
    if (!(this.styles_.length > 0))
        for (a = 0; a < this.imageSizes_.length; a++) b = this.imageSizes_[a], this.styles_.push({
            url: this.imagePath_ + (a + 1) + "." + this.imageExtension_,
            height: b,
            width: b
        })
}, MarkerClusterer.prototype.fitMapToMarkers = function() {
    var a, b = this.getMarkers(),
        c = new google.maps.LatLngBounds;
    for (a = 0; a < b.length; a++) c.extend(b[a].getPosition());
    this.getMap().fitBounds(c)
}, MarkerClusterer.prototype.getGridSize = function() {
    return this.gridSize_
}, MarkerClusterer.prototype.setGridSize = function(a) {
    this.gridSize_ = a
}, MarkerClusterer.prototype.getMinimumClusterSize = function() {
    return this.minClusterSize_
}, MarkerClusterer.prototype.setMinimumClusterSize = function(a) {
    this.minClusterSize_ = a
}, MarkerClusterer.prototype.getMaxZoom = function() {
    return this.maxZoom_
}, MarkerClusterer.prototype.setMaxZoom = function(a) {
    this.maxZoom_ = a
}, MarkerClusterer.prototype.getStyles = function() {
    return this.styles_
}, MarkerClusterer.prototype.setStyles = function(a) {
    this.styles_ = a
}, MarkerClusterer.prototype.getTitle = function() {
    return this.title_
}, MarkerClusterer.prototype.setTitle = function(a) {
    this.title_ = a
}, MarkerClusterer.prototype.getZoomOnClick = function() {
    return this.zoomOnClick_
}, MarkerClusterer.prototype.setZoomOnClick = function(a) {
    this.zoomOnClick_ = a
}, MarkerClusterer.prototype.getAverageCenter = function() {
    return this.averageCenter_
}, MarkerClusterer.prototype.setAverageCenter = function(a) {
    this.averageCenter_ = a
}, MarkerClusterer.prototype.getIgnoreHidden = function() {
    return this.ignoreHidden_
}, MarkerClusterer.prototype.setIgnoreHidden = function(a) {
    this.ignoreHidden_ = a
}, MarkerClusterer.prototype.getEnableRetinaIcons = function() {
    return this.enableRetinaIcons_
}, MarkerClusterer.prototype.setEnableRetinaIcons = function(a) {
    this.enableRetinaIcons_ = a
}, MarkerClusterer.prototype.getImageExtension = function() {
    return this.imageExtension_
}, MarkerClusterer.prototype.setImageExtension = function(a) {
    this.imageExtension_ = a
}, MarkerClusterer.prototype.getImagePath = function() {
    return this.imagePath_
}, MarkerClusterer.prototype.setImagePath = function(a) {
    this.imagePath_ = a
}, MarkerClusterer.prototype.getImageSizes = function() {
    return this.imageSizes_
}, MarkerClusterer.prototype.setImageSizes = function(a) {
    this.imageSizes_ = a
}, MarkerClusterer.prototype.getCalculator = function() {
    return this.calculator_
}, MarkerClusterer.prototype.setCalculator = function(a) {
    this.calculator_ = a
}, MarkerClusterer.prototype.getBatchSizeIE = function() {
    return this.batchSizeIE_
}, MarkerClusterer.prototype.setBatchSizeIE = function(a) {
    this.batchSizeIE_ = a
}, MarkerClusterer.prototype.getClusterClass = function() {
    return this.clusterClass_
}, MarkerClusterer.prototype.setClusterClass = function(a) {
    this.clusterClass_ = a
}, MarkerClusterer.prototype.getMarkers = function() {
    return this.markers_
}, MarkerClusterer.prototype.getTotalMarkers = function() {
    return this.markers_.length
}, MarkerClusterer.prototype.getClusters = function() {
    return this.clusters_
}, MarkerClusterer.prototype.getTotalClusters = function() {
    return this.clusters_.length
}, MarkerClusterer.prototype.addMarker = function(a, b) {
    this.pushMarkerTo_(a), b || this.redraw_()
}, MarkerClusterer.prototype.addMarkers = function(a, b) {
    var c;
    for (c in a) a.hasOwnProperty(c) && this.pushMarkerTo_(a[c]);
    b || this.redraw_()
}, MarkerClusterer.prototype.pushMarkerTo_ = function(a) {
    if (a.getDraggable()) {
        var b = this;
        google.maps.event.addListener(a, "dragend", function() {
            b.ready_ && (this.isAdded = !1, b.repaint())
        })
    }
    a.isAdded = !1, this.markers_.push(a)
}, MarkerClusterer.prototype.removeMarker = function(a, b) {
    var c = this.removeMarker_(a);
    return !b && c && this.repaint(), c
}, MarkerClusterer.prototype.removeMarkers = function(a, b) {
    var c, d, e = !1;
    for (c = 0; c < a.length; c++) d = this.removeMarker_(a[c]), e = e || d;
    return !b && e && this.repaint(), e
}, MarkerClusterer.prototype.removeMarker_ = function(a) {
    var b, c = -1;
    if (this.markers_.indexOf) c = this.markers_.indexOf(a);
    else
        for (b = 0; b < this.markers_.length; b++)
            if (a === this.markers_[b]) {
                c = b;
                break
            } return c !== -1 && (a.setMap(null), this.markers_.splice(c, 1), !0)
}, MarkerClusterer.prototype.clearMarkers = function() {
    this.resetViewport_(!0), this.markers_ = []
}, MarkerClusterer.prototype.repaint = function() {
    var a = this.clusters_.slice();
    this.clusters_ = [], this.resetViewport_(!1), this.redraw_(), setTimeout(function() {
        var b;
        for (b = 0; b < a.length; b++) a[b].remove()
    }, 0)
}, MarkerClusterer.prototype.getExtendedBounds = function(a) {
    var b = this.getProjection(),
        c = new google.maps.LatLng(a.getNorthEast().lat(), a.getNorthEast().lng()),
        d = new google.maps.LatLng(a.getSouthWest().lat(), a.getSouthWest().lng()),
        e = b.fromLatLngToDivPixel(c);
    e.x += this.gridSize_, e.y -= this.gridSize_;
    var f = b.fromLatLngToDivPixel(d);
    f.x -= this.gridSize_, f.y += this.gridSize_;
    var g = b.fromDivPixelToLatLng(e),
        h = b.fromDivPixelToLatLng(f);
    return a.extend(g), a.extend(h), a
}, MarkerClusterer.prototype.redraw_ = function() {
    this.createClusters_(0)
}, MarkerClusterer.prototype.resetViewport_ = function(a) {
    var b, c;
    for (b = 0; b < this.clusters_.length; b++) this.clusters_[b].remove();
    for (this.clusters_ = [], b = 0; b < this.markers_.length; b++) c = this.markers_[b], c.isAdded = !1, a && c.setMap(null)
}, MarkerClusterer.prototype.distanceBetweenPoints_ = function(a, b) {
    var c = 6371,
        d = (b.lat() - a.lat()) * Math.PI / 180,
        e = (b.lng() - a.lng()) * Math.PI / 180,
        f = Math.sin(d / 2) * Math.sin(d / 2) + Math.cos(a.lat() * Math.PI / 180) * Math.cos(b.lat() * Math.PI / 180) * Math.sin(e / 2) * Math.sin(e / 2),
        g = 2 * Math.atan2(Math.sqrt(f), Math.sqrt(1 - f)),
        h = c * g;
    return h
}, MarkerClusterer.prototype.isMarkerInBounds_ = function(a, b) {
    return b.contains(a.getPosition())
}, MarkerClusterer.prototype.addToClosestCluster_ = function(a) {
    var b, c, d, e, f = 4e4,
        g = null;
    for (b = 0; b < this.clusters_.length; b++) d = this.clusters_[b], e = d.getCenter(), e && (c = this.distanceBetweenPoints_(e, a.getPosition()), c < f && (f = c, g = d));
    g && g.isMarkerInClusterBounds(a) ? g.addMarker(a) : (d = new Cluster(this), d.addMarker(a), this.clusters_.push(d))
}, MarkerClusterer.prototype.createClusters_ = function(a) {
    var b, c, d, e = this;
    if (this.ready_) {
        0 === a && (google.maps.event.trigger(this, "clusteringbegin", this), "undefined" != typeof this.timerRefStatic && (clearTimeout(this.timerRefStatic), delete this.timerRefStatic)), d = this.getMap().getZoom() > 3 ? new google.maps.LatLngBounds(this.getMap().getBounds().getSouthWest(), this.getMap().getBounds().getNorthEast()) : new google.maps.LatLngBounds(new google.maps.LatLng(85.02070771743472, -178.48388434375), new google.maps.LatLng(-85.08136444384544, 178.00048865625));
        var f = this.getExtendedBounds(d),
            g = Math.min(a + this.batchSize_, this.markers_.length);
        for (b = a; b < g; b++) c = this.markers_[b], !c.isAdded && this.isMarkerInBounds_(c, f) && (!this.ignoreHidden_ || this.ignoreHidden_ && c.getVisible()) && this.addToClosestCluster_(c);
        g < this.markers_.length ? this.timerRefStatic = setTimeout(function() {
            e.createClusters_(g)
        }, 0) : (delete this.timerRefStatic, google.maps.event.trigger(this, "clusteringend", this))
    }
}, MarkerClusterer.prototype.extend = function(a, b) {
    return function(a) {
        var b;
        for (b in a.prototype) this.prototype[b] = a.prototype[b];
        return this
    }.apply(a, [b])
}, MarkerClusterer.CALCULATOR = function(a, b) {
    for (var c = 0, d = "", e = a.length.toString(), f = e; 0 !== f;) f = parseInt(f / 10, 10), c++;
    return c = Math.min(c, b), {
        text: e,
        index: c,
        title: d
    }
}, MarkerClusterer.BATCH_SIZE = 2e3, MarkerClusterer.BATCH_SIZE_IE = 500, MarkerClusterer.IMAGE_PATH = "http://google-maps-utility-library-v3.googlecode.com/svn/trunk/markerclustererplus/images/m", MarkerClusterer.IMAGE_EXTENSION = "png", MarkerClusterer.IMAGE_SIZES = [53, 56, 66, 78, 90], "function" != typeof String.prototype.trim && (String.prototype.trim = function() {
    return this.replace(/^\s+|\s+$/g, "")
});
'use strict';
(function(window, document) {
    'use strict';

    function Pathformer(element) {
        if (typeof element === 'undefined') {
            throw new Error('Pathformer [constructor]: "element" parameter is required');
        }
        if (element.constructor === String) {
            element = document.getElementById(element);
            if (!element) {
                throw new Error('Pathformer [constructor]: "element" parameter is not related to an existing ID');
            }
        }
        if (element.constructor instanceof window.SVGElement || /^svg$/i.test(element.nodeName)) {
            this.el = element;
        } else {
            throw new Error('Pathformer [constructor]: "element" parameter must be a string or a SVGelement');
        }
        this.scan(element);
    }
    Pathformer.prototype.TYPES = ['line', 'ellipse', 'circle', 'polygon', 'polyline', 'rect'];
    Pathformer.prototype.ATTR_WATCH = ['cx', 'cy', 'points', 'r', 'rx', 'ry', 'x', 'x1', 'x2', 'y', 'y1', 'y2'];
    Pathformer.prototype.scan = function(svg) {
        var fn, element, pathData, pathDom, elements = svg.querySelectorAll(this.TYPES.join(','));
        for (var i = 0; i < elements.length; i++) {
            element = elements[i];
            fn = this[element.tagName.toLowerCase() + 'ToPath'];
            pathData = fn(this.parseAttr(element.attributes));
            pathDom = this.pathMaker(element, pathData);
            element.parentNode.replaceChild(pathDom, element);
        }
    };
    Pathformer.prototype.lineToPath = function(element) {
        var newElement = {};
        newElement.d = 'M' + element.x1 + ',' + element.y1 + 'L' + element.x2 + ',' + element.y2;
        return newElement;
    };
    Pathformer.prototype.rectToPath = function(element) {
        var newElement = {},
            x = parseFloat(element.x) || 0,
            y = parseFloat(element.y) || 0,
            width = parseFloat(element.width) || 0,
            height = parseFloat(element.height) || 0;
        newElement.d = 'M' + x + ' ' + y + ' ';
        newElement.d += 'L' + (x + width) + ' ' + y + ' ';
        newElement.d += 'L' + (x + width) + ' ' + (y + height) + ' ';
        newElement.d += 'L' + x + ' ' + (y + height) + ' Z';
        return newElement;
    };
    Pathformer.prototype.polylineToPath = function(element) {
        var i, path;
        var newElement = {};
        var points = element.points.trim().split(' ');
        if (element.points.indexOf(',') === -1) {
            var formattedPoints = [];
            for (i = 0; i < points.length; i += 2) {
                formattedPoints.push(points[i] + ',' + points[i + 1]);
            }
            points = formattedPoints;
        }
        path = 'M' + points[0];
        for (i = 1; i < points.length; i++) {
            if (points[i].indexOf(',') !== -1) {
                path += 'L' + points[i];
            }
        }
        newElement.d = path;
        return newElement;
    };
    Pathformer.prototype.polygonToPath = function(element) {
        var newElement = Pathformer.prototype.polylineToPath(element);
        newElement.d += 'Z';
        return newElement;
    };
    Pathformer.prototype.ellipseToPath = function(element) {
        var startX = element.cx - element.rx,
            startY = element.cy;
        var endX = parseFloat(element.cx) + parseFloat(element.rx),
            endY = element.cy;
        var newElement = {};
        newElement.d = 'M' + startX + ',' + startY + 'A' + element.rx + ',' + element.ry + ' 0,1,1 ' + endX + ',' + endY + 'A' + element.rx + ',' + element.ry + ' 0,1,1 ' + startX + ',' + endY;
        return newElement;
    };
    Pathformer.prototype.circleToPath = function(element) {
        var newElement = {};
        var startX = element.cx - element.r,
            startY = element.cy;
        var endX = parseFloat(element.cx) + parseFloat(element.r),
            endY = element.cy;
        newElement.d = 'M' + startX + ',' + startY + 'A' + element.r + ',' + element.r + ' 0,1,1 ' + endX + ',' + endY + 'A' + element.r + ',' + element.r + ' 0,1,1 ' + startX + ',' + endY;
        return newElement;
    };
    Pathformer.prototype.pathMaker = function(element, pathData) {
        var i, attr, pathTag = document.createElementNS('http://www.w3.org/2000/svg', 'path');
        for (i = 0; i < element.attributes.length; i++) {
            attr = element.attributes[i];
            if (this.ATTR_WATCH.indexOf(attr.name) === -1) {
                pathTag.setAttribute(attr.name, attr.value);
            }
        }
        for (i in pathData) {
            pathTag.setAttribute(i, pathData[i]);
        }
        return pathTag;
    };
    Pathformer.prototype.parseAttr = function(element) {
        var attr, output = {};
        for (var i = 0; i < element.length; i++) {
            attr = element[i];
            if (this.ATTR_WATCH.indexOf(attr.name) !== -1 && attr.value.indexOf('%') !== -1) {
                throw new Error('Pathformer [parseAttr]: a SVG shape got values in percentage. This cannot be transformed into \'path\' tags. Please use \'viewBox\'.');
            }
            output[attr.name] = attr.value;
        }
        return output;
    };
    'use strict';
    var requestAnimFrame, cancelAnimFrame, parsePositiveInt;

    function Vivus(element, options, callback) {
        this.isReady = false;
        this.setElement(element, options);
        this.setOptions(options);
        this.setCallback(callback);
        if (this.isReady) {
            this.init();
        }
    }
    Vivus.LINEAR = function(x) {
        return x;
    };
    Vivus.EASE = function(x) {
        return -Math.cos(x * Math.PI) / 2 + 0.5;
    };
    Vivus.EASE_OUT = function(x) {
        return 1 - Math.pow(1 - x, 3);
    };
    Vivus.EASE_IN = function(x) {
        return Math.pow(x, 3);
    };
    Vivus.EASE_OUT_BOUNCE = function(x) {
        var base = -Math.cos(x * (0.5 * Math.PI)) + 1,
            rate = Math.pow(base, 1.5),
            rateR = Math.pow(1 - x, 2),
            progress = -Math.abs(Math.cos(rate * (2.5 * Math.PI))) + 1;
        return (1 - rateR) + (progress * rateR);
    };
    Vivus.prototype.setElement = function(element, options) {
        if (typeof element === 'undefined') {
            throw new Error('Vivus [constructor]: "element" parameter is required');
        }
        if (element.constructor === String) {
            element = document.getElementById(element);
            if (!element) {
                throw new Error('Vivus [constructor]: "element" parameter is not related to an existing ID');
            }
        }
        this.parentEl = element;
        if (options && options.file) {
            var objElm = document.createElement('object');
            objElm.setAttribute('type', 'image/svg+xml');
            objElm.setAttribute('data', options.file);
            objElm.setAttribute('built-by-vivus', 'true');
            element.appendChild(objElm);
            element = objElm;
        }
        switch (element.constructor) {
            case window.SVGSVGElement:
            case window.SVGElement:
                this.el = element;
                this.isReady = true;
                break;
            case window.HTMLObjectElement:
                var onLoad, self;
                self = this;
                onLoad = function(e) {
                    if (self.isReady) {
                        return;
                    }
                    self.el = element.contentDocument && element.contentDocument.querySelector('svg');
                    if (!self.el && e) {
                        throw new Error('Vivus [constructor]: object loaded does not contain any SVG');
                    } else if (self.el) {
                        if (element.getAttribute('built-by-vivus')) {
                            self.parentEl.insertBefore(self.el, element);
                            self.parentEl.removeChild(element);
                            self.el.setAttribute('width', '100%');
                            self.el.setAttribute('height', '100%');
                        }
                        self.isReady = true;
                        self.init();
                        return true;
                    }
                };
                if (!onLoad()) {
                    element.addEventListener('load', onLoad);
                }
                break;
            default:
                throw new Error('Vivus [constructor]: "element" parameter is not valid (or miss the "file" attribute)');
        }
    };
    Vivus.prototype.setOptions = function(options) {
        var allowedTypes = ['delayed', 'async', 'oneByOne', 'scenario', 'scenario-sync'];
        var allowedStarts = ['inViewport', 'manual', 'autostart'];
        if (options !== undefined && options.constructor !== Object) {
            throw new Error('Vivus [constructor]: "options" parameter must be an object');
        } else {
            options = options || {};
        }
        if (options.type && allowedTypes.indexOf(options.type) === -1) {
            throw new Error('Vivus [constructor]: ' + options.type + ' is not an existing animation `type`');
        } else {
            this.type = options.type || allowedTypes[0];
        }
        if (options.start && allowedStarts.indexOf(options.start) === -1) {
            throw new Error('Vivus [constructor]: ' + options.start + ' is not an existing `start` option');
        } else {
            this.start = options.start || allowedStarts[0];
        }
        this.isIE = (window.navigator.userAgent.indexOf('MSIE') !== -1 || window.navigator.userAgent.indexOf('Trident/') !== -1 || window.navigator.userAgent.indexOf('Edge/') !== -1);
        this.duration = parsePositiveInt(options.duration, 120);
        this.delay = parsePositiveInt(options.delay, null);
        this.dashGap = parsePositiveInt(options.dashGap, 1);
        this.forceRender = options.hasOwnProperty('forceRender') ? !!options.forceRender : this.isIE;
        this.selfDestroy = !!options.selfDestroy;
        this.onReady = options.onReady;
        this.frameLength = this.currentFrame = this.map = this.delayUnit = this.speed = this.handle = null;
        this.ignoreInvisible = options.hasOwnProperty('ignoreInvisible') ? !!options.ignoreInvisible : false;
        this.animTimingFunction = options.animTimingFunction || Vivus.LINEAR;
        this.pathTimingFunction = options.pathTimingFunction || Vivus.LINEAR;
        if (this.delay >= this.duration) {
            throw new Error('Vivus [constructor]: delay must be shorter than duration');
        }
    };
    Vivus.prototype.setCallback = function(callback) {
        if (!!callback && callback.constructor !== Function) {
            throw new Error('Vivus [constructor]: "callback" parameter must be a function');
        }
        this.callback = callback || function() {};
    };
    Vivus.prototype.mapping = function() {
        var i, paths, path, pAttrs, pathObj, totalLength, lengthMeter, timePoint;
        timePoint = totalLength = lengthMeter = 0;
        paths = this.el.querySelectorAll('path');
        for (i = 0; i < paths.length; i++) {
            path = paths[i];
            if (this.isInvisible(path)) {
                continue;
            }
            pathObj = {
                el: path,
                length: Math.ceil(path.getTotalLength())
            };
            if (isNaN(pathObj.length)) {
                if (window.console && console.warn) {
                    console.warn('Vivus [mapping]: cannot retrieve a path element length', path);
                }
                continue;
            }
            this.map.push(pathObj);
            path.style.strokeDasharray = pathObj.length + ' ' + (pathObj.length + this.dashGap * 2);
            path.style.strokeDashoffset = pathObj.length + this.dashGap;
            pathObj.length += this.dashGap;
            totalLength += pathObj.length;
            this.renderPath(i);
        }
        totalLength = totalLength === 0 ? 1 : totalLength;
        this.delay = this.delay === null ? this.duration / 3 : this.delay;
        this.delayUnit = this.delay / (paths.length > 1 ? paths.length - 1 : 1);
        for (i = 0; i < this.map.length; i++) {
            pathObj = this.map[i];
            switch (this.type) {
                case 'delayed':
                    pathObj.startAt = this.delayUnit * i;
                    pathObj.duration = this.duration - this.delay;
                    break;
                case 'oneByOne':
                    pathObj.startAt = lengthMeter / totalLength * this.duration;
                    pathObj.duration = pathObj.length / totalLength * this.duration;
                    break;
                case 'async':
                    pathObj.startAt = 0;
                    pathObj.duration = this.duration;
                    break;
                case 'scenario-sync':
                    path = pathObj.el;
                    pAttrs = this.parseAttr(path);
                    pathObj.startAt = timePoint + (parsePositiveInt(pAttrs['data-delay'], this.delayUnit) || 0);
                    pathObj.duration = parsePositiveInt(pAttrs['data-duration'], this.duration);
                    timePoint = pAttrs['data-async'] !== undefined ? pathObj.startAt : pathObj.startAt + pathObj.duration;
                    this.frameLength = Math.max(this.frameLength, (pathObj.startAt + pathObj.duration));
                    break;
                case 'scenario':
                    path = pathObj.el;
                    pAttrs = this.parseAttr(path);
                    pathObj.startAt = parsePositiveInt(pAttrs['data-start'], this.delayUnit) || 0;
                    pathObj.duration = parsePositiveInt(pAttrs['data-duration'], this.duration);
                    this.frameLength = Math.max(this.frameLength, (pathObj.startAt + pathObj.duration));
                    break;
            }
            lengthMeter += pathObj.length;
            this.frameLength = this.frameLength || this.duration;
        }
    };
    Vivus.prototype.drawer = function() {
        var self = this;
        this.currentFrame += this.speed;
        if (this.currentFrame <= 0) {
            this.stop();
            this.reset();
            this.callback(this);
        } else if (this.currentFrame >= this.frameLength) {
            this.stop();
            this.currentFrame = this.frameLength;
            this.trace();
            if (this.selfDestroy) {
                this.destroy();
            }
            this.callback(this);
        } else {
            this.trace();
            this.handle = requestAnimFrame(function() {
                self.drawer();
            });
        }
    };
    Vivus.prototype.trace = function() {
        var i, progress, path, currentFrame;
        currentFrame = this.animTimingFunction(this.currentFrame / this.frameLength) * this.frameLength;
        for (i = 0; i < this.map.length; i++) {
            path = this.map[i];
            progress = (currentFrame - path.startAt) / path.duration;
            progress = this.pathTimingFunction(Math.max(0, Math.min(1, progress)));
            if (path.progress !== progress) {
                path.progress = progress;
                path.el.style.strokeDashoffset = Math.floor(path.length * (1 - progress));
                this.renderPath(i);
            }
        }
    };
    Vivus.prototype.renderPath = function(index) {
        if (this.forceRender && this.map && this.map[index]) {
            var pathObj = this.map[index],
                newPath = pathObj.el.cloneNode(true);
            pathObj.el.parentNode.replaceChild(newPath, pathObj.el);
            pathObj.el = newPath;
        }
    };
    Vivus.prototype.init = function() {
        this.frameLength = 0;
        this.currentFrame = 0;
        this.map = [];
        new Pathformer(this.el);
        this.mapping();
        this.starter();
        if (this.onReady) {
            this.onReady(this);
        }
    };
    Vivus.prototype.starter = function() {
        switch (this.start) {
            case 'manual':
                return;
            case 'autostart':
                this.play();
                break;
            case 'inViewport':
                var self = this,
                    listener = function() {
                        if (self.isInViewport(self.parentEl, 1)) {
                            self.play();
                            window.removeEventListener('scroll', listener);
                        }
                    };
                window.addEventListener('scroll', listener);
                listener();
                break;
        }
    };
    Vivus.prototype.getStatus = function() {
        return this.currentFrame === 0 ? 'start' : this.currentFrame === this.frameLength ? 'end' : 'progress';
    };
    Vivus.prototype.reset = function() {
        return this.setFrameProgress(0);
    };
    Vivus.prototype.finish = function() {
        return this.setFrameProgress(1);
    };
    Vivus.prototype.setFrameProgress = function(progress) {
        progress = Math.min(1, Math.max(0, progress));
        this.currentFrame = Math.round(this.frameLength * progress);
        this.trace();
        return this;
    };
    Vivus.prototype.play = function(speed) {
        if (speed && typeof speed !== 'number') {
            throw new Error('Vivus [play]: invalid speed');
        }
        this.speed = speed || 1;
        if (!this.handle) {
            this.drawer();
        }
        return this;
    };
    Vivus.prototype.stop = function() {
        if (this.handle) {
            cancelAnimFrame(this.handle);
            this.handle = null;
        }
        return this;
    };
    Vivus.prototype.destroy = function() {
        this.stop();
        var i, path;
        for (i = 0; i < this.map.length; i++) {
            path = this.map[i];
            path.el.style.strokeDashoffset = null;
            path.el.style.strokeDasharray = null;
            this.renderPath(i);
        }
    };
    Vivus.prototype.isInvisible = function(el) {
        var rect, ignoreAttr = el.getAttribute('data-ignore');
        if (ignoreAttr !== null) {
            return ignoreAttr !== 'false';
        }
        if (this.ignoreInvisible) {
            rect = el.getBoundingClientRect();
            return !rect.width && !rect.height;
        } else {
            return false;
        }
    };
    Vivus.prototype.parseAttr = function(element) {
        var attr, output = {};
        if (element && element.attributes) {
            for (var i = 0; i < element.attributes.length; i++) {
                attr = element.attributes[i];
                output[attr.name] = attr.value;
            }
        }
        return output;
    };
    Vivus.prototype.isInViewport = function(el, h) {
        var scrolled = this.scrollY(),
            viewed = scrolled + this.getViewportH(),
            elBCR = el.getBoundingClientRect(),
            elHeight = elBCR.height,
            elTop = scrolled + elBCR.top,
            elBottom = elTop + elHeight;
        h = h || 0;
        return (elTop + elHeight * h) <= viewed && (elBottom) >= scrolled;
    };
    Vivus.prototype.docElem = window.document.documentElement;
    Vivus.prototype.getViewportH = function() {
        var client = this.docElem.clientHeight,
            inner = window.innerHeight;
        if (client < inner) {
            return inner;
        } else {
            return client;
        }
    };
    Vivus.prototype.scrollY = function() {
        return window.pageYOffset || this.docElem.scrollTop;
    };
    requestAnimFrame = (function() {
        return (window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(callback) {
            return window.setTimeout(callback, 1000 / 60);
        });
    })();
    cancelAnimFrame = (function() {
        return (window.cancelAnimationFrame || window.webkitCancelAnimationFrame || window.mozCancelAnimationFrame || window.oCancelAnimationFrame || window.msCancelAnimationFrame || function(id) {
            return window.clearTimeout(id);
        });
    })();
    parsePositiveInt = function(value, defaultValue) {
        var output = parseInt(value, 10);
        return (output >= 0) ? output : defaultValue;
    };
    if (typeof define === 'function' && define.amd) {
        define([], function() {
            return Vivus;
        });
    } else if (typeof exports === 'object') {
        module.exports = Vivus;
    } else {
        window.Vivus = Vivus;
    }
}(window, document));
jQuery(document).on('action.init_shortcodes', function(e, container) {
    "use strict";
    var time = 50;
    container.find('.sc_icon_type_svg:not(.inited)').each(function(idx) {
        var cont = jQuery(this);
        var id = cont.addClass('inited').attr('id');
        if (id === undefined) {
            id = 'sc_icons_' + Math.random();
            id = id.replace('.', '');
        } else id += '_' + idx;
        cont.find('svg').attr('id', id);
        setTimeout(function() {
            cont.css('visibility', 'visible');
            var obj = new Vivus(id, {
                type: 'async',
                duration: 20
            });
            cont.data('svg_obj', obj);
            cont.parent().hover(function() {
                cont.data('svg_obj').reset().play();
            }, function() {});
        }, time);
        time += 300;
    });
});
jQuery(document).on('action.init_shortcodes', function(e, container) {
    "use strict";
    jQuery('.sc_popup:not(.inited)').each(function() {
        var id = jQuery(this).attr('id');
        if (!id) return;
        jQuery('a[href="#' + id + '"]').addClass('trx_addons_popup_link');
        jQuery(this).addClass('inited');
    });
});
(function() {
    "use strict";
    jQuery(document).on('action.init_hidden_elements', trx_addons_sc_skills_init);
    jQuery(document).on('action.init_shortcodes', trx_addons_sc_skills_init);
    jQuery(document).on('action.scroll_trx_addons', trx_addons_sc_skills_init);
    jQuery(document).on('action.resize_trx_addons', trx_addons_sc_skills_resize);

    function trx_addons_sc_skills_init(e, container) {
        if (container === undefined) container = jQuery('body');
        var scrollPosition = jQuery(window).scrollTop() + jQuery(window).height();
        container.find('.sc_skills_item:not(.inited)').each(function() {
            var skillsItem = jQuery(this);
            if (jQuery(this).parents('div:hidden,article:hidden').length > 0) {
                return;
            }
            var scrollSkills = skillsItem.offset().top;
            if (scrollPosition > scrollSkills) {
                var init_ok = true;
                var skills = skillsItem.parents('.sc_skills').eq(0);
                var type = skills.data('type');
                var total = (type == 'pie' && skills.hasClass('sc_skills_compact_on')) ? skillsItem.find('.sc_skills_data .pie') : skillsItem.find('.sc_skills_total').eq(0);
                var start = parseFloat(total.data('start'));
                var stop = parseFloat(total.data('stop'));
                var maximum = parseInt(total.data('max'), 10);
                var startPercent = Math.round(start / maximum * 100);
                var stopPercent = Math.round(stop / maximum * 100);
                var ed = total.data('ed');
                var speed = parseInt(total.data('speed'), 10);
                var step = start != parseInt(start, 10) || stop != parseInt(stop, 10) ? parseFloat(total.data('step')) : parseInt(total.data('step'), 10);
                var duration = parseInt(total.data('duration'), 10);
                if (isNaN(duration)) duration = Math.ceil(maximum / step) * speed;
                if (type == 'bar') {
                    var dir = skills.data('dir');
                    var count = skillsItem.find('.sc_skills_count').eq(0);
                    if (dir == 'horizontal') count.css('width', startPercent + '%').animate({
                        width: stopPercent + '%'
                    }, duration);
                    else if (dir == 'vertical') count.css('height', startPercent + '%').animate({
                        height: stopPercent + '%'
                    }, duration);
                    trx_addons_sc_skills_animate_counter(start, stop, speed, step, ed, total);
                } else if (type == 'counter') {
                    trx_addons_sc_skills_animate_counter(start, stop, speed, step, ed, total);
                } else if (type == 'pie') {
                    if (window.Chart) {
                        var steps = parseInt(total.data('steps'), 10);
                        var bg_color = total.data('bg_color');
                        var border_color = total.data('border_color');
                        var cutout = parseInt(total.data('cutout'), 10);
                        var easing = total.data('easing');
                        var options = {
                            segmentShowStroke: border_color != '',
                            segmentStrokeColor: border_color,
                            segmentStrokeWidth: border_color != '' ? 1 : 0,
                            percentageInnerCutout: cutout,
                            animation: skillsItem.parents('.vc_row[data-vc-full-width="true"]').length == 0,
                            animationSteps: steps,
                            animationEasing: easing,
                            animateRotate: true,
                            animateScale: skillsItem.parents('.vc_row[data-vc-full-width="true"]').length == 0,
                        };
                        var pieData = [];
                        total.each(function() {
                            var color = jQuery(this).data('color');
                            var stop = parseInt(jQuery(this).data('stop'), 10);
                            var stopPercent = Math.round(stop / maximum * 100);
                            pieData.push({
                                value: stopPercent,
                                color: color
                            });
                        });
                        if (total.length == 1) {
                            trx_addons_sc_skills_animate_counter(start, stop, Math.round(1500 / steps), step, ed, total);
                            pieData.push({
                                value: 100 - stopPercent,
                                color: bg_color
                            });
                        }
                        var canvas = skillsItem.find('canvas');
                        canvas.data('pie-data', pieData).data('pie-options', options).attr({
                            width: skillsItem.width(),
                            height: skillsItem.width()
                        }).css({
                            width: skillsItem.width(),
                            height: skillsItem.height()
                        });
                        new Chart(canvas.get(0).getContext("2d")).Doughnut(pieData, options);
                    } else init_ok = false;
                }
                if (init_ok) skillsItem.addClass('inited');
            }
        });
    }

    function trx_addons_sc_skills_animate_counter(start, stop, speed, step, ed, total) {
        start = Math.min(stop, start + step);
        total.text(start + ed);
        if (start < stop) {
            setTimeout(function() {
                trx_addons_sc_skills_animate_counter(start, stop, speed, step, ed, total);
            }, speed);
        }
    }

    function trx_addons_sc_skills_resize() {
        jQuery('.sc_skills_pie canvas').each(function() {
            var canvas = jQuery(this);
            if (canvas.parents('div:hidden,article:hidden').length > 0) {
                return;
            }
            var skillsItem = canvas.parent();
            if (skillsItem.width() != canvas.width()) {
                var data = canvas.data('pie-data');
                var opt = canvas.data('pie-options');
                if (data === undefined || opt === undefined) return;
                canvas.empty().attr({
                    width: skillsItem.width(),
                    height: skillsItem.width()
                }).css({
                    width: skillsItem.width(),
                    height: skillsItem.height()
                });
                opt.animation = false;
                new Chart(canvas.get(0).getContext("2d")).Doughnut(data, opt);
            }
        });
    }
})();
(function() {
    "use strict";
    jQuery(document).on('action.init_sliders', trx_addons_init_sliders);
    jQuery(document).on('action.init_hidden_elements', trx_addons_init_hidden_sliders);

    function trx_addons_init_sliders(e, container) {
        if (container.find('.sc_slider_controller:not(.inited)').length > 0) {
            container.find('.sc_slider_controller:not(.inited)').each(function() {
                var controller = jQuery(this).addClass('inited');
                var slider_id = controller.data('slider-id');
                if (!slider_id) return;
                var controller_id = controller.attr('id');
                if (controller_id == undefined) {
                    controller_id = 'sc_slider_controller_' + Math.random();
                    controller_id = controller_id.replace('.', '');
                    controller.attr('id', controller_id);
                }
                jQuery('#' + slider_id + ' .slider_container').attr('data-controller', controller_id);
                var controller_style = controller.data('style');
                var controller_effect = controller.data('effect');
                var controller_direction = controller.data('direction');
                var controller_interval = controller.data('interval');
                var controller_height = controller.data('height');
                var controller_per_view = controller.data('slides-per-view');
                var controller_space = controller.data('slides-space');
                var controller_controls = controller.data('controls');
                var controller_html = '';
                jQuery('#' + slider_id + ' .swiper-slide').each(function(idx) {
                    var slide = jQuery(this);
                    var image = slide.data('image');
                    var title = slide.data('title');
                    var cats = slide.data('cats');
                    var date = slide.data('date');
                    controller_html += '<div class="slider-slide swiper-slide"' + ' style="' + (image !== undefined ? 'background-image: url(' + image + ');' : '') + '"' + '>' + '<div class="sc_slider_controller_info">' + '<span class="sc_slider_controller_info_number">' + (idx < 9 ? '0' : '') + (idx + 1) + '</span>' + '<span class="sc_slider_controller_info_title">' + title + '</span>' + '</div>' + '</div>';
                });
                controller.html('<div id="' + controller_id + '_outer"' + ' class="slider_outer slider_swiper_outer slider_style_controller' + ' slider_outer_' + (controller_controls == 1 ? 'controls slider_outer_controls_side' : 'nocontrols') + ' slider_outer_nopagination' + ' slider_outer_' + (controller_per_view == 1 ? 'one' : 'multi') + ' slider_outer_direction_' + (controller_direction == 'vertical' ? 'vertical' : 'horizontal') + '"' + '>' + '<div id="' + controller_id + '_swiper"' + ' class="slider_container slider_swiper swiper-slider-container' + ' slider_' + (controller_controls == 1 ? 'controls slider_controls_side' : 'nocontrols') + ' slider_nopagination' + ' slider_notitles' + ' slider_noresize' + ' slider_' + (controller_per_view == 1 ? 'one' : 'multi') + ' slider_direction_' + (controller_direction == 'vertical' ? 'vertical' : 'horizontal') + '"' + ' data-slides-min-width="100"' + ' data-controlled-slider="' + slider_id + '"' + ' data-direction="' + (controller_direction == 'vertical' ? 'vertical' : 'horizontal') + '"' + (controller_effect !== undefined ? ' data-effect="' + controller_effect + '"' : '') + (controller_interval !== undefined ? ' data-interval="' + controller_interval + '"' : '') + (controller_per_view !== undefined ? ' data-slides-per-view="' + controller_per_view + '"' : '') + (controller_space !== undefined ? ' data-slides-space="' + controller_space + '"' : '') + (controller_height !== undefined ? ' style="height:' + controller_height + '"' : '') + '>' + '<div class="slider-wrapper swiper-wrapper">' + controller_html + '</div>' + '</div>' + (controller_controls == 1 ? '<div class="slider_controls_wrap"><a class="slider_prev swiper-button-prev" href="#"></a><a class="slider_next swiper-button-next" href="#"></a></div>' : '') + '</div>');
            });
        }
        if (container.find('.sc_slider_controls:not(.inited)').length > 0) {
            container.find('.sc_slider_controls:not(.inited)').each(function() {
                var controls = jQuery(this).addClass('inited');
                var slider_id = controls.data('slider-id');
                if (!slider_id) return;
                slider_id += '_swiper';
                if (jQuery('#' + slider_id).length == 0) return;
                controls.on('click', 'a', function(e) {
                    if (jQuery(this).hasClass('slider_next')) TRX_ADDONS_STORAGE['swipers'][slider_id].slideNext();
                    else TRX_ADDONS_STORAGE['swipers'][slider_id].slidePrev();
                    e.preventDefault();
                    return false;
                });
                if (controls.find('.slider_progress_bar').length > 0) {
                    var bar = controls.find('.slider_progress_bar');
                    jQuery('#' + slider_id).on('slider_init slide_change_start', function(e) {
                        if (TRX_ADDONS_STORAGE['swipers'][slider_id]) {
                            var s = TRX_ADDONS_STORAGE['swipers'][slider_id];
                            var current = jQuery(s.slides[s.activeIndex]).data('slide-number') + 1,
                                total = s.params.loop ? Math.ceil((s.slides.length - s.loopedSlides * 2) / s.params.slidesPerGroup) : s.snapGrid.length;
                            if (total > 0) bar.width(Math.ceil(current / total * 100) + '%');
                        }
                    });
                    bar.parent().on('click', function(e) {
                        var s = TRX_ADDONS_STORAGE['swipers'][slider_id];
                        var total = s.params.loop ? Math.ceil((s.slides.length - s.loopedSlides * 2) / s.params.slidesPerGroup) : s.snapGrid.length;
                        var slide_number = Math.max(0, Math.min(total - 1, Math.floor(total * e.offsetX / jQuery(this).width())));
                        var slide_idx = jQuery('#' + slider_id).find('[data-slide-number="' + slide_number + '"]').index();
                        s.slideTo(slide_idx);
                        e.preventDefault();
                        return false;
                    });
                }
            });
        }
        if (container.find('.slider_swiper:not(.inited)').length > 0) {
            container.find('.slider_swiper:not(.inited)').each(function() {
                if (jQuery(this).parents('div:hidden,article:hidden').length > 0) return;
                var slider = jQuery(this);
                var id = slider.attr('id');
                if (id == undefined) {
                    id = 'swiper_' + Math.random();
                    id = id.replace('.', '');
                    slider.attr('id', id);
                }
                var cont = slider.parent().hasClass('slider_swiper_outer') ? slider.parent().attr('id', id + '_outer') : slider;
                var cont_id = cont.attr('id');
                var is_controller = slider.parents('.sc_slider_controller').length > 0;
                var controller_id = slider.data('controller');
                slider.find('.swiper-slide').each(function(idx) {
                    jQuery(this).attr('data-slide-number', idx);
                });
                slider.css({
                    'display': 'block',
                    'opacity': 0
                }).addClass(id).addClass('inited').data('settings', {
                    mode: 'horizontal'
                });
                var direction = slider.data('direction');
                if (direction != 'vertical') direction = 'horizontal';
                var smw = slider.data('slides-min-width');
                if (smw === undefined) {
                    smw = 180;
                    slider.attr('data-slides-min-width', smw);
                }
                var spv = slider.data('slides-per-view');
                if (spv == undefined) {
                    spv = 1;
                    slider.attr('data-slides-per-view', spv);
                }
                var width = slider.width();
                if (width == 0) width = slider.parent().width();
                if (direction == 'horizontal') {
                    if (width / spv < smw) spv = Math.max(1, Math.floor(width / smw));
                }
                var space = slider.data('slides-space');
                if (space == undefined) space = 0;
                var interval = slider.data('interval');
                if (interval === undefined) interval = Math.round(5000 * (1 + Math.random()));
                if (isNaN(interval)) interval = 0;
                if (TRX_ADDONS_STORAGE['swipers'] === undefined) TRX_ADDONS_STORAGE['swipers'] = {};
                TRX_ADDONS_STORAGE['swipers'][id] = new Swiper('.' + id, {
                    direction: direction,
                    calculateHeight: !slider.hasClass('slider_height_fixed'),
                    resizeReInit: true,
                    autoResize: true,
                    effect: slider.data('effect') ? slider.data('effect') : 'slide',
                    pagination: slider.hasClass('slider_pagination') ? '#' + cont_id + ' .slider_pagination_wrap' : false,
                    paginationClickable: slider.hasClass('slider_pagination') ? '#' + cont_id + ' .slider_pagination_wrap' : false,
                    paginationType: slider.hasClass('slider_pagination') && slider.data('pagination') ? slider.data('pagination') : 'bullets',
                    nextButton: slider.hasClass('slider_controls') ? '#' + cont_id + ' .slider_next' : false,
                    prevButton: slider.hasClass('slider_controls') ? '#' + cont_id + ' .slider_prev' : false,
                    autoplay: slider.hasClass('slider_noautoplay') || interval == 0 ? false : parseInt(interval, 10),
                    autoplayDisableOnInteraction: true,
                    initialSlide: 0,
                    slidesPerView: spv,
                    loopedSlides: spv,
                    spaceBetween: space,
                    speed: 600,
                    centeredSlides: false,
                    loop: true,
                    grabCursor: !is_controller,
                    slideToClickedSlide: is_controller,
                    touchRatio: is_controller ? 0.2 : 1,
                    onSlideChangeStart: function(swiper) {
                        cont.find('.slider_titles_outside_wrap .active').removeClass('active').fadeOut();
                        var controlled_slider = jQuery('#' + slider.data(is_controller ? 'controlled-slider' : 'controller') + ' .slider_swiper');
                        var controlled_id = controlled_slider.attr('id');
                        if (TRX_ADDONS_STORAGE['swipers'][controlled_id] && jQuery('#' + controlled_id).attr('data-busy') != 1) {
                            slider.attr('data-busy', 1);
                            setTimeout(function() {
                                slider.attr('data-busy', 0);
                            }, 300);
                            var slide_number = jQuery(swiper.slides[swiper.activeIndex]).data('slide-number');
                            var slide_idx = controlled_slider.find('[data-slide-number="' + slide_number + '"]').index();
                            TRX_ADDONS_STORAGE['swipers'][controlled_id].slideTo(slide_idx);
                        }
                        slider.trigger('slide_change_start');
                    },
                    onSlideChangeEnd: function(swiper) {
                        var slide_number = jQuery(swiper.slides[swiper.activeIndex]).data('slide-number');
                        var titles = cont.find('.slider_titles_outside_wrap .slide_info');
                        if (titles.length > 0) {
                            titles.eq(slide_number).addClass('active').fadeIn(300);
                        }
                        cont.find('.swiper-pagination-custom > span').removeClass('swiper-pagination-button-active').eq(slide_number).addClass('swiper-pagination-button-active');
                        cont.find('.trx_addons_video_player.with_cover.video_play').removeClass('video_play').find('.video_embed').empty();
                        slider.attr('data-busy', 0);
                        slider.trigger('slide_change_end');
                    }
                });
                slider.trigger('slider_init');
                cont.find('.swiper-pagination-custom').on('click', '>span', function(e) {
                    jQuery(this).siblings().removeClass('swiper-pagination-button-active');
                    var t = jQuery(this).addClass('swiper-pagination-button-active').index() * TRX_ADDONS_STORAGE['swipers'][id].params.slidesPerGroup;
                    TRX_ADDONS_STORAGE['swipers'][id].params.loop && (t += TRX_ADDONS_STORAGE['swipers'][id].loopedSlides), TRX_ADDONS_STORAGE['swipers'][id].slideTo(t);
                    e.preventDefault();
                    return false;
                });
                slider.attr('data-busy', 1).animate({
                    'opacity': 1
                }, 'fast');
                setTimeout(function() {
                    slider.attr('data-busy', 0);
                    trx_addons_set_controller_height(controller_id, slider);
                }, 300);
                jQuery(window).trigger('scroll');
            });
        }
        if (container.find('.slider_elastistack:not(.inited)').length > 0) {
            container.find('.slider_elastistack:not(.inited)').each(function() {
                if (jQuery(this).parents('div:hidden,article:hidden').length > 0) return;
                var slider = jQuery(this);
                var id = slider.attr('id');
                if (id == undefined) {
                    id = 'elastistack_' + Math.random();
                    id = id.replace('.', '');
                    slider.attr('id', id);
                }
                var cont = slider.parent().hasClass('slider_outer') ? slider.parent().attr('id', id + '_outer') : slider;
                var cont_id = cont.attr('id');
                var images = slider.find('ul.stack__images').attr('id', id + '_images');
                var images_id = images.attr('id');
                slider.css({
                    'display': 'block',
                    'opacity': 0
                }).addClass(id).addClass('inited').data('settings', {
                    mode: 'horizontal'
                });
                trx_addons_resize_sliders(e, cont);
                var stack = new ElastiStack(images.get(0), {
                    onUpdateStack: function(idx) {
                        var titles = cont.find('.slider_titles_outside_wrap');
                        if (titles.length > 0) {
                            titles.find('.active').removeClass('active').hide();
                            titles.find('.slide_info').eq(idx).addClass('active').fadeIn(300);
                        }
                        cont.find('.trx_addons_video_player.with_cover.video_play').removeClass('video_play').find('.video_embed').empty();
                        slider.trigger('slide_change_end');
                    }
                });
                cont.find('.slider_next').on('click', function(e) {
                    stack.nextItem({
                        transform: 'translate3d(0, -60px, 400px)'
                    });
                    e.preventDefault();
                    return false;
                });
                cont.find('.slider_titles_outside_wrap .slide_info').eq(0).addClass('active').fadeIn(300);
                slider.animate({
                    'opacity': 1
                }, 'fast', function() {
                    stack._setStackStyle();
                });
            });
        }
    }

    function trx_addons_init_hidden_sliders(e, container) {
        trx_addons_init_sliders(e, container);
        trx_addons_resize_sliders(e, container);
    }
    jQuery(document).on('action.resize_trx_addons', trx_addons_resize_sliders);

    function trx_addons_resize_sliders(e, container) {
        if (container === undefined) container = jQuery('body');
        container.find('.slider_container.inited').each(function() {
            var slider = jQuery(this);
            if (slider.parents('div:hidden,article:hidden').length > 0) return;
            var id = slider.attr('id');
            var direction = slider.data('direction');
            if (direction != 'vertical') direction = 'horizontal';
            var slider_width = slider.width();
            var last_width = slider.data('last-width');
            if (isNaN(last_width)) last_width = 0;
            if (last_width == 0 || last_width != slider_width) {
                if (direction != 'vertical') slider.data('last-width', slider_width);
                var on_resize = false;
                var spv = slider.data('slides-per-view');
                if (spv === undefined) spv = 1;
                if (slider.hasClass('slider_swiper')) {
                    if (TRX_ADDONS_STORAGE['swipers'][id].params.slidesPerView != 'auto') {
                        if (direction == 'horizontal') {
                            var smw = slider.data('slides-min-width');
                            if (slider_width / spv < smw) spv = Math.max(1, Math.floor(slider_width / smw));
                            if (TRX_ADDONS_STORAGE['swipers'][id].params.slidesPerView != spv) {
                                TRX_ADDONS_STORAGE['swipers'][id].params.slidesPerView = spv;
                                TRX_ADDONS_STORAGE['swipers'][id].params.loopedSlides = spv;
                            }
                        }
                        on_resize = true;
                    }
                }
                if (!slider.hasClass('slider_noresize') || slider.height() == 0) {
                    var slide = slider.find('.slider-slide').eq(0);
                    var slide_width = slide.width();
                    var slide_height = slide.height();
                    var ratio = slider.data('ratio');
                    if (ratio === undefined || ('' + ratio).indexOf(':') < 1) {
                        ratio = slide_height > 0 ? slide_width + ':' + slide_height : "16:9";
                        slider.attr('data-ratio', ratio);
                    }
                    ratio = ratio.split(':');
                    var ratio_x = !isNaN(ratio[0]) ? Number(ratio[0]) : 16;
                    var ratio_y = !isNaN(ratio[1]) ? Number(ratio[1]) : 9;
                    var height = Math.floor((spv == 1 ? slider_width : slide_width) / ratio_x * ratio_y);
                    slider.height(height);
                    on_resize = true;
                    if (slider.next('.slider_titles_outside_wrap').length == 1) {
                        slider.next('.slider_titles_outside_wrap').css({
                            'top': height + 'px'
                        });
                    }
                    if (slider.hasClass('slider_elastistack')) {
                        slider.find('.slider-wrapper,.stack__images,.slider-slide').height(height);
                    }
                    trx_addons_set_controller_height(slider.data('controller'), slider);
                }
                if (on_resize && slider.hasClass('slider_swiper')) TRX_ADDONS_STORAGE['swipers'][id].onResize();
            }
        });
    }

    function trx_addons_set_controller_height(controller_id, slider) {
        var controller = controller_id ? jQuery('#' + controller_id) : false;
        if (controller && controller.length > 0 && controller.hasClass('sc_slider_controller_vertical') && controller.hasClass('sc_slider_controller_height_auto')) {
            if (jQuery(window).width() >= 768) {
                var paddings = parseFloat(controller.css('paddingTop'));
                if (isNaN(paddings)) paddings = 0;
                controller.find('.slider_container').height(slider.height() - 2 * paddings);
            } else {
                var controller_spv = controller.data('slides-per-view');
                if (isNaN(controller_spv)) controller_spv = 1;
                controller.find('.slider_container').height(controller_spv * 100);
            }
        }
    }
})();
jQuery(document).on('action.ready_trx_addons', function() {
    "use strict";
    if (jQuery('.sc_layouts_cart').length > 0 && !jQuery('body').hasClass('added_to_cart_inited')) {
        jQuery('body').addClass('added_to_cart_inited');
        jQuery(document).on('added_to_cart', function() {
            var total = jQuery('.widget_shopping_cart').eq(0).find('.total .amount').text();
            if (total != undefined) {
                jQuery('.sc_layouts_cart_summa').text(total);
            }
            var cnt = 0;
            jQuery('.widget_shopping_cart_content').eq(0).find('.cart_list li').each(function() {
                var q = jQuery(this).find('.quantity').html().split(' ', 2);
                if (!isNaN(q[0])) cnt += Number(q[0]);
            });
            var items = jQuery('.sc_layouts_cart_items').eq(0).text().split(' ', 2);
            items[0] = cnt;
            jQuery('.sc_layouts_cart_items').text(items[0] + ' ' + items[1]);
            jQuery('.sc_layouts_cart_items_short').text(items[0]);
            jQuery('.sc_layouts_cart').data({
                'items': cnt ? cnt : 0,
                'summa': total ? total : 0
            });
        });
        jQuery(document.body).on('edd_cart_item_added edd_cart_item_removed edd_quantity_updated', function(e, data) {
            var items = jQuery('.sc_layouts_cart_items').eq(0).text().split(' ', 2);
            items[0] = data.cart_quantity ? data.cart_quantity : data.quantity;
            jQuery('.sc_layouts_cart_items').text(items[0] + ' ' + items[1]);
            jQuery('.sc_layouts_cart_items_short').text(items[0]);
            jQuery('.sc_layouts_cart_summa').text(data.total);
            jQuery('.sc_layouts_cart').data({
                'items': data.cart_quantity ? data.cart_quantity : 0,
                'summa': data.total ? data.total : 0
            });
        });
        jQuery('.sc_layouts_cart:not(.inited)').addClass('inited').on('click', '.sc_layouts_cart_icon,.sc_layouts_cart_details', function(e) {
            var widget = jQuery(this).siblings('.sc_layouts_cart_widget');
            if (widget.length > 0 && widget.text().replace(/\s*/g, '') != '') {
                jQuery(this).parents('.sc_layouts_cart').toggleClass('sc_layouts_cart_opened');
                jQuery(this).siblings('.sc_layouts_cart_widget').slideToggle();
            }
            e.preventDefault();
            return false;
        }).on('click', '.sc_layouts_cart_widget_close', function(e) {
            jQuery(this).parents('.sc_layouts_cart').removeClass('sc_layouts_cart_opened');
            jQuery(this).parent().slideUp();
            e.preventDefault();
            return false;
        });
    }
});
jQuery(document).on('action.ready_trx_addons', function() {
    "use strict";
    jQuery('.sc_layouts_logo,.custom-logo-link').on('click', function(e) {
        if (jQuery(this).attr('href') == '#') {
            trx_addons_document_animate_to(0);
            e.preventDefault();
            return false;
        }
    });
});
(function() {
    "use strict";
    jQuery(document).on('action.before_ready_trx_addons', function() {
        window.trx_addons_init_sfmenu = function(selector) {
            jQuery(selector).show().each(function() {
                var animation_in = jQuery(this).parent().data('animation-in');
                if (animation_in == undefined) animation_in = "none";
                var animation_out = jQuery(this).parent().data('animation-out');
                if (animation_out == undefined) animation_out = "none";
                jQuery(this).addClass('inited').superfish({
                    delay: 500,
                    animation: {
                        opacity: 'show'
                    },
                    animationOut: {
                        opacity: 'hide'
                    },
                    speed: animation_in != 'none' ? 500 : 200,
                    speedOut: animation_out != 'none' ? 500 : 200,
                    autoArrows: false,
                    dropShadows: false,
                    onBeforeShow: function(ul) {
                        if (jQuery(this).parents("ul").length > 1) {
                            var w = jQuery('.page_wrap').length > 0 ? jQuery('.page_wrap').width() : jQuery(window).width();
                            var par_offset = jQuery(this).parents("ul").offset().left;
                            var par_width = jQuery(this).parents("ul").outerWidth();
                            var ul_width = jQuery(this).outerWidth();
                            if (par_offset + par_width + ul_width > w - 20 && par_offset - ul_width > 0) jQuery(this).addClass('submenu_left');
                            else jQuery(this).removeClass('submenu_left');
                        }
                        if (jQuery(this).parents('[class*="columns-"]').length == 0 && animation_in != 'none') {
                            jQuery(this).removeClass('animated fast ' + animation_out);
                            jQuery(this).addClass('animated fast ' + animation_in);
                        }
                    },
                    onBeforeHide: function(ul) {
                        if (jQuery(this).parents('[class*="columns-"]').length == 0 && animation_out != 'none') {
                            jQuery(this).removeClass('animated fast ' + animation_in);
                            jQuery(this).addClass('animated fast ' + animation_out);
                        }
                    }
                });
            });
        };
        trx_addons_init_sfmenu('.sc_layouts_menu:not(.inited) > ul:not(.inited)');
        trx_addons_menu_collapse();
        jQuery('.sc_layouts_menu:not(.inited)').each(function() {
            if (jQuery(this).find('>ul.inited').length == 1) jQuery(this).addClass('inited');
        });
        jQuery('.menu_hover_slide_line:not(.slide_inited),.menu_hover_slide_box:not(.slide_inited)').each(function() {
            var menu = jQuery(this).addClass('slide_inited');
            var style = menu.hasClass('menu_hover_slide_line') ? 'line' : 'box';
            setTimeout(function() {
                menu.find('>ul').spasticNav({
                    style: style,
                    colorOverride: false
                });
            }, 500);
        });
        jQuery('.sc_layouts_menu_mobile_button_burger:not(.inited)').each(function() {
            var burger = jQuery(this);
            var popup = burger.find('.sc_layouts_menu_popup');
            if (popup.length == 1) {
                burger.addClass('inited').on('click', '>a', function(e) {
                    popup.toggleClass('opened').slideToggle();
                    e.preventDefault();
                    return false;
                });
                jQuery(document).on('click', function(e) {
                    jQuery('.sc_layouts_menu_popup.opened').removeClass('opened').slideUp();
                });
            }
        });
    });
    jQuery(document).on('action.resize_trx_addons', function() {
        trx_addons_menu_collapse();
    });

    function trx_addons_menu_collapse() {
        if (TRX_ADDONS_STORAGE['menu_collapse'] == 0) return;
        jQuery('.sc_layouts_menu').each(function() {
            if (jQuery(this).parents('div:hidden,section:hidden,article:hidden').length > 0) return;
            var ul = jQuery(this).find('>ul.inited');
            if (ul.length == 0) return;
            var sc_layouts_item = ul.parents('.sc_layouts_item');
            if (!sc_layouts_item.parent().hasClass('wpb_wrapper') && !sc_layouts_item.parent().hasClass('sc_layouts_column')) return;
            var w_max = sc_layouts_item.parent().width() - (Math.ceil(parseFloat(sc_layouts_item.css('marginLeft'))) + Math.ceil(parseFloat(sc_layouts_item.css('marginRight')))) - 2;
            sc_layouts_item.siblings().each(function() {
                if (!jQuery(this).hasClass('vc_empty_space')) w_max -= (jQuery(this).outerWidth() + Math.ceil(parseFloat(jQuery(this).css('marginLeft'))) + Math.ceil(parseFloat(jQuery(this).css('marginRight'))));
            });
            var w_all = 0;
            var move = false;
            var li_collapse = ul.find('li.menu-item.menu-collapse');
            if (li_collapse.length == 0) {
                ul.append('<li class="menu-item menu-collapse"><a href="#" class="sf-with-ul trx_addons_icon-dot3"></a><ul class="submenu"></ul></li>');
                li_collapse = ul.find('li.menu-item.menu-collapse');
            }
            var li_collapse_ul = li_collapse.find('> ul');
            ul.find('> li').each(function(idx) {
                var cur_item = jQuery(this);
                cur_item.data('index', idx);
                if (move || cur_item.attr('id') == 'blob') return;
                w_all += !cur_item.hasClass('menu-collapse') || cur_item.css('display') != 'none' ? cur_item.outerWidth() + Math.ceil(parseFloat(cur_item.css('marginLeft'))) + Math.ceil(parseFloat(cur_item.css('marginRight'))) : 0;
                if (w_all > w_max) move = true;
            });
            if (move) {
                w_all = li_collapse.outerWidth() + Math.ceil(parseFloat(li_collapse.css('marginLeft'))) + Math.ceil(parseFloat(li_collapse.css('marginRight')));
                ul.find("> li:not('.menu-collapse')").each(function(idx) {
                    var cur_item = jQuery(this);
                    var cur_width = cur_item.outerWidth() + Math.ceil(parseFloat(cur_item.css('marginLeft'))) + Math.ceil(parseFloat(cur_item.css('marginRight')));
                    if (w_all <= w_max) w_all += cur_width;
                    if (w_all > w_max) {
                        var moved = false;
                        li_collapse_ul.find('>li').each(function() {
                            if (!moved && Number(jQuery(this).data('index')) > idx) {
                                cur_item.attr('data-width', cur_width).insertBefore(jQuery(this));
                                moved = true;
                            }
                        });
                        if (!moved) cur_item.attr('data-width', cur_width).appendTo(li_collapse_ul);
                    }
                });
                li_collapse.show();
            } else {
                var items = li_collapse_ul.find('>li');
                var cnt = 0;
                move = true;
                items.each(function() {
                    if (!move) return;
                    if (items.length - cnt == 1) w_all -= (li_collapse.outerWidth() + Math.ceil(parseFloat(li_collapse.css('marginLeft'))) + Math.ceil(parseFloat(li_collapse.css('marginRight'))));
                    w_all += parseFloat(jQuery(this).data('width'));
                    if (w_all < w_max) {
                        jQuery(this).insertBefore(li_collapse);
                        cnt++;
                    } else move = false;
                });
                if (items.length - cnt == 0) li_collapse.hide();
            }
        });
    }
})();
(function($) {
    "use strict";
    $.fn.spasticNav = function(options) {
        options = $.extend({
            overlap: 0,
            style: 'box',
            reset: 50,
            color: '#00c6ff',
            colorOverride: true,
        }, options);
        return this.each(function() {
            var nav = $(this),
                currentPageItem = nav.find('>.current-menu-item,>.current-menu-parent,>.current-menu-ancestor'),
                hidden = false,
                blob, reset;
            if (currentPageItem.length === 0) {
                currentPageItem = nav.find('li').eq(0);
                hidden = true;
            }
            var a = currentPageItem.find('>a');
            var pl = parseInt(a.css('paddingLeft'), 10);
            if (isNaN(pl)) pl = 0;
            $('<li id="blob"></li>').css({
                width: options.style == 'box' ? a.outerWidth() : a.width(),
                left: currentPageItem.position().left + (options.style == 'box' ? 0 : pl),
                top: currentPageItem.position().top - options.overlap / 2,
                opacity: hidden ? 0 : 1
            }).appendTo(this);
            blob = $('#blob', nav);
            if (options.style == 'box') blob.css({
                height: currentPageItem.outerHeight() + options.overlap
            });
            if (options.colorOverride) {
                var bg = a.css('backgroundColor');
                blob.css({
                    backgroundColor: hidden || bg == 'transparent' ? options.color : bg
                });
            }
            nav.find('>li:not(#blob)').hover(function() {
                clearTimeout(reset);
                var a = $(this).find('>a');
                var pl = parseInt(a.css('paddingLeft'), 10);
                if (isNaN(pl)) pl = 0;
                if (options.colorOverride) {
                    var bg = a.css('backgroundColor');
                    if (bg != 'transparent') blob.css({
                        backgroundColor: bg
                    });
                }
                $(this).addClass('blob_over');
                blob.css({
                    left: $(this).position().left + (options.style == 'box' ? 0 : pl),
                    top: $(this).position().top - options.overlap / 2,
                    width: options.style == 'box' ? a.outerWidth() : a.width(),
                    opacity: 1
                });
            }, function() {
                reset = setTimeout(function() {
                    var a = currentPageItem.find('>a');
                    var pl = parseInt(a.css('paddingLeft'), 10);
                    if (isNaN(pl)) pl = 0;
                    if (options.colorOverride) {
                        var bg = a.css('backgroundColor');
                        if (bg != 'transparent') blob.css({
                            backgroundColor: bg
                        });
                    }
                    blob.css({
                        width: options.style == 'box' ? a.outerWidth() : a.width(),
                        left: currentPageItem.position().left + (options.style == 'box' ? 0 : pl),
                        opacity: hidden ? 0 : 1,
                    });
                }, options.reset);
                $(this).removeClass('blob_over');
            });
        });
    };
})(jQuery);
jQuery(document).on('action.ready_trx_addons', function() {
    "use strict";
    if (jQuery('.search_wrap:not(.inited)').length > 0) {
        jQuery('.search_wrap:not(.inited)').each(function() {
            var search_wrap = jQuery(this).addClass('inited');
            var search_field = search_wrap.find('.search_field');
            var ajax_timer = null;
            search_field.on('keyup', function(e) {
                if (e.keyCode == 27) {
                    search_field.val('');
                    trx_addons_search_close(search_wrap);
                    e.preventDefault();
                    return;
                }
                if (search_wrap.hasClass('search_ajax')) {
                    var s = search_field.val();
                    if (ajax_timer) {
                        clearTimeout(ajax_timer);
                        ajax_timer = null;
                    }
                    if (s.length >= 4) {
                        ajax_timer = setTimeout(function() {
                            jQuery.post(TRX_ADDONS_STORAGE['ajax_url'], {
                                action: 'ajax_search',
                                nonce: TRX_ADDONS_STORAGE['ajax_nonce'],
                                text: s
                            }).done(function(response) {
                                clearTimeout(ajax_timer);
                                ajax_timer = null;
                                var rez = {};
                                if (response == '' || response == 0) {
                                    rez = {
                                        error: TRX_ADDONS_STORAGE['msg_search_error']
                                    };
                                } else {
                                    try {
                                        rez = JSON.parse(response);
                                    } catch (e) {
                                        rez = {
                                            error: TRX_ADDONS_STORAGE['msg_search_error']
                                        };
                                        console.log(response);
                                    }
                                }
                                var msg = rez.error === '' ? rez.data : rez.error;
                                search_field.parents('.search_ajax').find('.search_results_content').empty().append(msg);
                                search_field.parents('.search_ajax').find('.search_results').fadeIn();
                            });
                        }, 500);
                    }
                }
            });
            search_wrap.find('.search_submit').on('click', function(e) {
                if ((search_wrap.hasClass('search_style_expand') || search_wrap.hasClass('search_style_fullscreen')) && !search_wrap.hasClass('search_opened')) {
                    search_wrap.addClass('search_opened');
                    setTimeout(function() {
                        search_field.get(0).focus();
                    }, 500);
                } else if (search_field.val() == '') {
                    if (search_wrap.hasClass('search_opened')) trx_addons_search_close(search_wrap);
                    else search_field.get(0).focus();
                } else {
                    search_wrap.find('form').get(0).submit();
                }
                e.preventDefault();
                return false;
            });
            search_wrap.find('.search_close').on('click', function(e) {
                trx_addons_search_close(search_wrap);
                e.preventDefault();
                return false;
            });
            search_wrap.find('.search_results_close').on('click', function(e) {
                jQuery(this).parent().fadeOut();
                e.preventDefault();
                return false;
            });
            search_wrap.on('click', '.search_more', function(e) {
                if (search_field.val() != '') search_wrap.find('form').get(0).submit();
                e.preventDefault();
                return false;
            });
        });
    }

    function trx_addons_search_close(search_wrap) {
        search_wrap.removeClass('search_opened');
        search_wrap.find('.search_results').fadeOut();
    }
});