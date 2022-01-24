<!doctype html>
<html lang="{{ str_replace("_", "-", app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title> @if(isset($title)) {{$title}} @else {{ config("app.name", "Centre de Formation en Anglais au Togo | Davys'Languages") }} @endif</title>

    <meta name="google-site-verification" content="DJ485_fdAs_8M3emOxJttiGuxY-ay5xUOlvoadC_pS4" />

    <link property="stylesheet" rel="stylesheet" id="vc_extensions_cqbundle_adminicon-css"
        href="{{asset('wp-content/plugins/vc-extensions-bundle/css/admin_icon.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="wp-block-library-css"
        href="{{asset('wp-includes/css/dist/block-library/style.min.css')}}" type="text/css"
        media="all" />
    <link property="stylesheet" rel="stylesheet" id="contact-form-7-css"
        href="{{asset('wp-content/plugins/contact-form-7/includes/css/styles.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="essential-grid-plugin-settings-css"
        href="{{asset('wp-content/plugins/essential-grid/public/assets/css/settings.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="tp-open-sans-css"
        href="https://fonts.googleapis.com/css?family=Open+Sans%3A300%2C400%2C600%2C700%2C800&#038;ver=5.1.1"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="tp-raleway-css"
        href="https://fonts.googleapis.com/css?family=Raleway%3A100%2C200%2C300%2C400%2C500%2C600%2C700%2C800%2C900&#038;ver=5.1.1"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="tp-droid-serif-css"
        href="https://fonts.googleapis.com/css?family=Droid+Serif%3A400%2C700&#038;ver=5.1.1" type="text/css"
        media="all" />
    <link property="stylesheet" rel="stylesheet" id="tp-fontello-css"
        href="{{asset('wp-content/plugins/essential-grid/public/assets/font/fontello/css/fontello.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="rs-plugin-settings-css"
        href="{{asset('wp-content/plugins/revslider/public/assets/css/settings.css')}}"
        type="text/css" media="all" />
    <style id="rs-plugin-settings-inline-css" type="text/css">
        #rs-demo-id {}
    </style>
    <link property="stylesheet" rel="stylesheet" id="trx_addons-icons-css"
        href="{{asset('wp-content/plugins/trx_addons/css/font-icons/css/trx_addons_icons-embedded.min.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="swiperslider-css"
        href="{{asset('wp-content/plugins/trx_addons/js/swiper/swiper.min.css')}}" type="text/css"
        media="all" />
    <link property="stylesheet" rel="stylesheet" id="magnific-popup-css"
        href="{{asset('wp-content/plugins/trx_addons/js/magnific/magnific-popup.min.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="trx_addons-css"
        href="{{asset('wp-content/plugins/trx_addons/css/trx_addons.css')}}" type="text/css"
        media="all" />
    <link property="stylesheet" rel="stylesheet" id="trx_addons-animation-css"
        href="{{asset('wp-content/plugins/trx_addons/css/trx_addons.animation.min.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="trx_demo_icons-css"
        href="{{asset('wp-content/plugins/trx_demo/css/font-icons/css/trx_demo_icons.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="trx_demo_icons_animation-css"
        href="{{asset('wp-content/plugins/trx_demo/css/font-icons/css/animation.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="trx_demo_panels-css"
        href="{{asset('wp-content/plugins/trx_demo/css/trx_demo_panels.css')}}" type="text/css"
        media="all" />
    <link property="stylesheet" rel="stylesheet" id="js_composer_front-css"
        href="{{asset('wp-content/plugins/js_composer/assets/css/js_composer.min.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="wpgdprc.css-css"
        href="{{asset('wp-content/plugins/wp-gdpr-compliance/assets/css/front.css')}}"
        type="text/css" media="all" />
    <style id="wpgdprc.css-inline-css" type="text/css">
        div.wpgdprc .wpgdprc-switch .wpgdprc-switch-inner:before {
            content: "Yes";
        }

        div.wpgdprc .wpgdprc-switch .wpgdprc-switch-inner:after {
            content: "No";
        }
    </style>
    <link property="stylesheet" rel="stylesheet" id="prolingua-font-Montserrat-css"
        href="{{asset('wp-content/themes/prolingua/css/font-face/Montserrat/stylesheet.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="prolingua-font-google_fonts-css"
        href="https://fonts.googleapis.com/css?family=Muli:200,200i,300,300i,400,400i,600%7CUbuntu:300&#038;subset=latin,latin-ext"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="fontello-icons-css"
        href="{{asset('wp-content/themes/prolingua/css/font-icons/css/fontello-embedded.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="prolingua-main-css"
        href="{{asset('wp-content/themes/prolingua/style.css')}}" type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="prolingua-styles-css"
        href="{{asset('wp-content/themes/prolingua/css/__styles.css')}}" type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="prolingua-colors-css"
        href="{{asset('wp-content/themes/prolingua/css/__colors.css')}}" type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="mediaelement-css"
        href="{{asset('wp-includes/js/mediaelement/mediaelementplayer-legacy.min.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="wp-mediaelement-css"
        href="{{asset('wp-includes/js/mediaelement/wp-mediaelement.min.css')}}"
        type="text/css" media="all" />
    <link property="stylesheet" rel="stylesheet" id="prolingua-responsive-css"
        href="{{asset('wp-content/themes/prolingua/css/responsive.css')}}" type="text/css"
        media="all" />
    <script type="text/javascript"
        src="{{asset('wp-includes/js/jquery/jquery.js')}}"></script>
    <script type="text/javascript"
        src="{{asset('wp-includes/js/jquery/jquery-migrate.min.js')}}"></script>
    <script type="text/javascript"
        src="{{asset('wp-content/plugins/essential-grid/public/assets/js/jquery.esgbox.min.js')}}"></script>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    @laravelPWA

    <script type="text/javascript">
        var ajaxRevslider;
        var host = location.host;

        jQuery(document).ready(function () {
            // CUSTOM AJAX CONTENT LOADING FUNCTION
            ajaxRevslider = function (obj) {

                // obj.type : Post Type
                // obj.id : ID of Content to Load
                // obj.aspectratio : The Aspect Ratio of the Container / Media
                // obj.selector : The Container Selector where the Content of Ajax will be injected. It is done via the Essential Grid on Return of Content

                var content = "";

                data = {};

                data.action = "revslider_ajax_call_front";
                data.client_action = "get_slider_html";
                data.token = "9111097fac";
                data.type = obj.type;
                data.id = obj.id;
                data.aspectratio = obj.aspectratio;

                // SYNC AJAX REQUEST
                jQuery.ajax({
                    type: "post",
                    url: "https://"+ host +"/wp-admin/admin-ajax.php",
                    dataType: "json",
                    data: data,
                    async: false,
                    success: function (ret, textStatus, XMLHttpRequest) {
                        if (ret.success == true)
                            content = ret.data;
                    },
                    error: function (e) {
                        console.log(e);
                    }
                });

                // FIRST RETURN THE CONTENT WHEN IT IS LOADED !!
                return content;
            };

            // CUSTOM AJAX FUNCTION TO REMOVE THE SLIDER
            var ajaxRemoveRevslider = function (obj) {
                return jQuery(obj.selector + " .rev_slider").revkill();
            };

            // EXTEND THE AJAX CONTENT LOADING TYPES WITH TYPE AND FUNCTION
            var extendessential = setInterval(function () {
                if (jQuery.fn.tpessential != undefined) {
                    clearInterval(extendessential);
                    if (typeof (jQuery.fn.tpessential.defaults) !== "undefined") {
                        jQuery.fn.tpessential.defaults.ajaxTypes.push({
                            type: "revslider",
                            func: ajaxRevslider,
                            killfunc: ajaxRemoveRevslider,
                            openAnimationSpeed: 0.3
                        });
                        // type:  Name of the Post to load via Ajax into the Essential Grid Ajax Container
                        // func: the Function Name which is Called once the Item with the Post Type has been clicked
                        // killfunc: function to kill in case the Ajax Window going to be removed (before Remove function !
                        // openAnimationSpeed: how quick the Ajax Content window should be animated (default is 0.3)
                    }
                }
            }, 30);
        });
    </script>
    <style type="text/css">
        .recentcomments a {
            display: inline !important;
            padding: 0 !important;
            margin: 0 !important;
        }
    </style>

    <style type="text/css" id="custom-background-css">
        body.custom-background {
            background-color: #e7e9ee;
        }
    </style>


    <script type="text/javascript">
        function setREVStartSize(e) {
            try {
                e.c = jQuery(e.c);
                var i = jQuery(window).width(),
                    t = 9999,
                    r = 0,
                    n = 0,
                    l = 0,
                    f = 0,
                    s = 0,
                    h = 0;
                if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function (e, f) {
                    f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e)
                }), t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) {
                    var u = (e.c.width(), jQuery(window).height());
                    if (void 0 != e.fullScreenOffsetContainer) {
                        var c = e.fullScreenOffsetContainer.split(",");
                        if (c) jQuery.each(c, function (e, i) {
                            u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u
                        }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
                    }
                    f = u
                } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
                e.c.closest(".rev_slider_wrapper").css({
                    height: f
                })
            } catch (d) {
                console.log("Failure at Presize of Slider:" + d)
            }
        };
    </script>
    <style type="text/css" data-type="vc_shortcodes-custom-css">
        .vc_custom_1509357335520 {
            margin-right: 0px !important;
            margin-left: 0px !important;
            background-image: url({{asset('wp-content/uploads/2017/08/image-25.jpg')}});
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: contain !important;
        }

        .vc_custom_1508425880820 {
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg')}});
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1502699781255 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1502716510298 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508847342507 {
            background-image: url({{asset('wp-content/uploads/2017/10/image-3.jpg')}});
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1508488414725 {
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg')}});
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1502717415690 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508491654985 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508843633579 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508843641414 {
            margin-right: 0px !important;
            margin-left: 0px !important;
        }

        .vc_custom_1508843651837 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508843646838 {
            padding-right: 0px !important;
            padding-left: 0px !important;
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508426349820 {
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }

        .vc_custom_1508510305737 {
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }

        .vc_custom_1509983614156 {
            background-color: #ffffff !important;
        }
    </style><noscript>
        <style type="text/css">
            .wpb_animate_when_almost_visible {
                opacity: 1;
            }
        </style>
    </noscript>
    <style type="text/css" id="trx_addons-inline-styles-inline-css">
        .vc_custom_1508776062736 {
            padding-left: 1.5em !important;
        }

        .vc_custom_1507730445537 {
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg')}});
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1507024074354 {
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }

        .sc_layouts_row .custom-logo-link img,
        .custom-logo-link img,
        .sc_layouts_row .sc_layouts_logo img,
        .sc_layouts_logo img {
            max-height: 70px
        }
    </style>

    <style>
        .scheme_default button, .scheme_default input[type="reset"], .scheme_default input[type="submit"], .scheme_default input[type="button"], .scheme_default .post_item .more-link, .scheme_default .comments_wrap .form-submit input[type="submit"], .scheme_default #buddypress .comment-reply-link, .scheme_default #buddypress .generic-button a, .scheme_default #buddypress a.button, .scheme_default #buddypress button, .scheme_default #buddypress input[type="button"], .scheme_default #buddypress input[type="reset"], .scheme_default #buddypress input[type="submit"], .scheme_default #buddypress ul.button-nav li a, .scheme_default a.bp-title-button, .scheme_default .booked-calendar-wrap .booked-appt-list .timeslot .timeslot-people button, .scheme_default body #booked-profile-page .booked-profile-appt-list .appt-block .booked-cal-buttons .google-cal-button>a, .scheme_default body #booked-profile-page input[type="submit"], .scheme_default body #booked-profile-page button, .scheme_default body .booked-list-view input[type="submit"], .scheme_default body .booked-list-view button, .scheme_default body table.booked-calendar input[type="submit"], .scheme_default body table.booked-calendar button, .scheme_default body .booked-modal input[type="submit"], .scheme_default body .booked-modal button, .scheme_default .sc_button_default, .scheme_default .sc_button:not(.sc_button_simple):not(.sc_button_bordered):not(.sc_button_bg_image), .scheme_default .socials_share:not(.socials_type_drop) .social_icon, .scheme_default #tribe-bar-form .tribe-bar-submit input[type="submit"], .scheme_default #tribe-bar-form.tribe-bar-mini .tribe-bar-submit input[type="submit"], .scheme_default #tribe-bar-views li.tribe-bar-views-option a, .scheme_default #tribe-bar-views .tribe-bar-views-list .tribe-bar-views-option.tribe-bar-active a, .scheme_default #tribe-events .tribe-events-button, .scheme_default .tribe-events-button, .scheme_default .tribe-events-cal-links a, .scheme_default .tribe-events-sub-nav li a, .scheme_default .edd_download_purchase_form .button, .scheme_default #edd-purchase-button, .scheme_default .edd-submit.button, .scheme_default .widget_edd_cart_widget .edd_checkout a, .scheme_default .sc_edd_details .downloads_page_tags .downloads_page_data>a, .scheme_default .woocommerce #respond input#submit, .scheme_default .woocommerce .button, .scheme_default .woocommerce-page .button, .scheme_default .woocommerce a.button, .scheme_default .woocommerce-page a.button, .scheme_default .woocommerce button.button, .scheme_default .woocommerce-page button.button, .scheme_default .woocommerce input.button, .scheme_default .woocommerce-page input.button, .scheme_default .woocommerce input[type="button"], .scheme_default .woocommerce-page input[type="button"], .scheme_default .woocommerce input[type="submit"], .scheme_default .woocommerce-page input[type="submit"], .scheme_default .woocommerce #respond input#submit.alt, .scheme_default .woocommerce a.button.alt, .scheme_default .woocommerce button.button.alt, .scheme_default .woocommerce input.button.alt {
            color: #ffffff;
            background-color: #660066;
        }

        .scheme_default .trx_addons_scroll_to_top, .scheme_default .trx_addons_cv .trx_addons_scroll_to_top {
            color: #ffffff;
            border-color: #660066;
            background-color: #660066;
        }

        .scheme_default .vc_toggle_rounded .vc_toggle_icon {
            background-color: #660066;
        }

        .scheme_default .sc_layouts_menu_nav>li.current-menu-item>a, .scheme_default .sc_layouts_menu_nav>li.current-menu-parent>a, .scheme_default .sc_layouts_menu_nav>li.current-menu-ancestor>a {
            color: #660066 !important;
        }
    </style>

    <style>
        .scheme_darksome .mc4wp-form input[type="submit"], .scheme_darksome .woocommerce .woocommerce-message .button, .scheme_darksome .woocommerce .woocommerce-error .button, .scheme_darksome .woocommerce .woocommerce-info .button, .scheme_darksome .widget.woocommerce .button, .scheme_darksome .widget.woocommerce a.button, .scheme_darksome .widget.woocommerce button.button, .scheme_darksome .widget.woocommerce input.button, .scheme_darksome .widget.woocommerce input[type="button"], .scheme_darksome .widget.woocommerce input[type="submit"], .scheme_darksome .widget.WOOCS_CONVERTER .button, .scheme_darksome .widget.yith-woocompare-widget a.button, .scheme_darksome .widget_product_search .search_button {
   
            color: #1d1d1d;
            background-color: #f3f5f7;

        }
    </style>

    <style>
        .scheme_darksome .mc4wp-form input[type="email"] {
            background-color: transparent;
                border-color: #f7f7f7;
                color: #ffffff;
        }
    </style>

    <style>
        .scheme_darksome.footer_wrap, .footer_wrap .scheme_darksome.vc_row {

            background-color: #0f2149;
            color: #f7f7f7;

        }
    </style>

    <style>
        .scheme_default .vc_separator.vc_sep_color_grey .vc_sep_line {

            border-color: #eaecf0;

        }
    </style>

    <style>
        .scheme_darksome.footer_wrap a, .footer_wrap .scheme_darksome.vc_row a {

            color: #f2f2f2;

        }
    </style>

    <style>
        .scheme_default .sc_services_default .trx_addons_columns_wrap>[class*="trx_addons_column-"]:nth-child(2n) .sc_services_item_header {
        background-color: #660066;

        }
    </style>
    
    <style>
        .scheme_default .sc_services_default .trx_addons_columns_wrap>[class*="trx_addons_column-"]:nth-child(2n+1) .sc_services_item_header {
        background-color: #2a2a2a;
        }
    </style>

    <style>
        .scheme_dark .sc_button_default.color_style_link2, .scheme_dark .sc_button.color_style_link2:not(.sc_button_simple):not(.sc_button_bordered):not(.sc_button_bg_image) {

            color: #ffffff;
            background-color: #660066;

        }
    </style>

    <style>
        .scheme_default button:hover, .scheme_default button:focus, .scheme_default input[type="submit"]:hover, .scheme_default input[type="submit"]:focus, .scheme_default input[type="reset"]:hover, .scheme_default input[type="reset"]:focus, .scheme_default input[type="button"]:hover, .scheme_default input[type="button"]:focus, .scheme_default .post_item .more-link:hover, .scheme_default .comments_wrap .form-submit input[type="submit"]:hover, .scheme_default .comments_wrap .form-submit input[type="submit"]:focus, .scheme_default #buddypress .comment-reply-link:hover, .scheme_default #buddypress .generic-button a:hover, .scheme_default #buddypress a.button:hover, .scheme_default #buddypress button:hover, .scheme_default #buddypress input[type="button"]:hover, .scheme_default #buddypress input[type="reset"]:hover, .scheme_default #buddypress input[type="submit"]:hover, .scheme_default #buddypress ul.button-nav li a:hover, .scheme_default a.bp-title-button:hover, .scheme_default .booked-calendar-wrap .booked-appt-list .timeslot .timeslot-people button:hover, .scheme_default body #booked-profile-page .booked-profile-appt-list .appt-block .booked-cal-buttons .google-cal-button>a:hover, .scheme_default body #booked-profile-page input[type="submit"]:hover, .scheme_default body #booked-profile-page button:hover, .scheme_default body .booked-list-view input[type="submit"]:hover, .scheme_default body .booked-list-view button:hover, .scheme_default body table.booked-calendar input[type="submit"]:hover, .scheme_default body table.booked-calendar button:hover, .scheme_default body .booked-modal input[type="submit"]:hover, .scheme_default body .booked-modal button:hover, .scheme_default .sc_button_default:hover, .scheme_default .sc_button:not(.sc_button_simple):not(.sc_button_bordered):not(.sc_button_bg_image):hover, .scheme_default .socials_share:not(.socials_type_drop) .social_icon:hover, .scheme_default #tribe-bar-form .tribe-bar-submit input[type="submit"]:hover, .scheme_default #tribe-bar-form .tribe-bar-submit input[type="submit"]:focus, .scheme_default #tribe-bar-form.tribe-bar-mini .tribe-bar-submit input[type="submit"]:hover, .scheme_default #tribe-bar-form.tribe-bar-mini .tribe-bar-submit input[type="submit"]:focus, .scheme_default #tribe-bar-views li.tribe-bar-views-option a:hover, .scheme_default #tribe-bar-views .tribe-bar-views-list .tribe-bar-views-option.tribe-bar-active a:hover, .scheme_default #tribe-events .tribe-events-button:hover, .scheme_default .tribe-events-button:hover, .scheme_default .tribe-events-cal-links a:hover, .scheme_default .tribe-events-sub-nav li a:hover, .scheme_default .edd_download_purchase_form .button:hover, .scheme_default .edd_download_purchase_form .button:active, .scheme_default .edd_download_purchase_form .button:focus, .scheme_default #edd-purchase-button:hover, .scheme_default #edd-purchase-button:active, .scheme_default #edd-purchase-button:focus, .scheme_default .edd-submit.button:hover, .scheme_default .edd-submit.button:active, .scheme_default .edd-submit.button:focus, .scheme_default .widget_edd_cart_widget .edd_checkout a:hover, .scheme_default .sc_edd_details .downloads_page_tags .downloads_page_data>a:hover, .scheme_default .woocommerce #respond input#submit:hover, .scheme_default .woocommerce .button:hover, .scheme_default .woocommerce-page .button:hover, .scheme_default .woocommerce a.button:hover, .scheme_default .woocommerce-page a.button:hover, .scheme_default .woocommerce button.button:hover, .scheme_default .woocommerce-page button.button:hover, .scheme_default .woocommerce input.button:hover, .scheme_default .woocommerce-page input.button:hover, .scheme_default .woocommerce input[type="button"]:hover, .scheme_default .woocommerce-page input[type="button"]:hover, .scheme_default .woocommerce input[type="submit"]:hover, .scheme_default .woocommerce-page input[type="submit"]:hover {
                color: #1d1d1d;
                background-color: #f3f5f7;

        }
    </style>

    <style>
        .scheme_default .post_layout_chess .post_info_top .post_categories a, .scheme_default .post_layout_classic .post_info_top .post_categories a, .scheme_default .post_layout_excerpt.post_format_standard:not(.has-post-thumbnail) .post_info_top .post_categories a {
            background-color: #0c1220;
            color: #ffffff;
        }
    </style>

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-151136276-1', 'auto');
        ga('send', 'pageview');
    </script>

    @stack('css')


</head>
<body class="@if(url()->current() == route('posts.index')) blog custom-background wp-custom-logo body_tag scheme_default blog_mode_home body_style_wide  is_stream blog_style_excerpt sidebar_show sidebar_left header_type_custom header_style_header-custom-385 header_position_default header_mobile_disabled menu_style_top no_layout wpb-js-composer js-comp-ver-5.7 vc_responsive  @elseif(url()->current() == route('learns.index')) archive category category-interesting-to-know category-21 custom-background wp-custom-logo body_tag scheme_default blog_mode_blog body_style_wide  is_stream blog_style_classic_3 blog_template sidebar_hide expand_content header_type_custom header_style_header-custom-385 header_position_default header_mobile_disabled menu_style_top no_layout wpb-js-composer js-comp-ver-5.7 vc_responsive @else home page-template-default page page-id-2 page-id-32 custom-background wp-custom-logo frontpage body_tag scheme_default blog_mode_front body_style_wide  is_stream blog_style_excerpt sidebar_hide expand_content remove_margins header_type_custom header_style_header-custom-938 header_style_header-custom-385 header_position_default header_mobile_disabled menu_style_top no_layout wpb-js-composer js-comp-ver-5.7 vc_responsive header_mobile_disabled @endif">

    <div class="body_wrap">
        <div class="page_wrap">
            @includeIf("partials.header")
            @includeIf("partials.header-mobile")

            <div class="page_content_wrap">
                <div class="content_wrap">
                    <div class="content">

                        @yield("content")


                    </div>

                    @yield('sidebar')

                </div>

            </div>

            @includeIf("partials.footer")


        </div>
    </div>

    <div class="custom_section custom_section_right ">
        <div class="custom_section_container">
            <div class="custom_section_socials socials_wrap"><a target="_blank"
                    href="{{$davyslanguages->facebook}}"
                    class="social_item social_item_style_icons social_item_type_icons"><span
                        class="social_icon social_facebook"><span class="icon-facebook"></span></span></a><a target="_blank"
                    href="{{$davyslanguages->instagram}}"
                    class="social_item social_item_style_icons social_item_type_icons"><span
                        class="social_icon social_instagramm"><span class="icon-instagramm"></span></span></a><a
                    target="_blank" href="{{$davyslanguages->twitter}}"
                    class="social_item social_item_style_icons social_item_type_icons"><span
                        class="social_icon social_twitter"><span class="icon-twitter"></span></span></a></div>
        </div>
    </div>
    <div class="custom_section custom_section_left ">
        <div class="custom_section_container">
            <div class="custom_section_content">
                <a href="{{route('order-translations.index')}}">{{ $texts->where('id', 10)->first()->text }}</a>
                <span class="divider"></span>
                <a href="{{route('contacts.index')}}">Contact</a>
            </div>
        </div>
    </div>
    
    
    
    <a href="#" class="trx_addons_scroll_to_top trx_addons_icon-up" title="Scroll to top"></a>
    
    @includeIf('whatsapp-chat-popup')
    <script>
            (function() {
                function addEventListener(element, event, handler) {
                    if (element.addEventListener) {
                        element.addEventListener(event, handler, false);
                    } else if (element.attachEvent) {
                        element.attachEvent("on" + event, handler);
                    }
                }

                function maybePrefixUrlField() {
                    if (this.value.trim() !== "" && this.value.indexOf("http") !== 0) {
                        this.value = "https://" + this.value;
                    }
                }

                var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
                if (urlFields && urlFields.length > 0) {
                    for (var j = 0; j < urlFields.length; j++) {
                        addEventListener(urlFields[j], "blur", maybePrefixUrlField);
                    }
                } /* test if browser supports date fields */
                var testInput = document.createElement("input");
                testInput.setAttribute("type", "date");
                if (testInput.type !== "date") {

                    /* add placeholder & pattern to all date fields */
                    var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
                    for (var i = 0; i < dateFields.length; i++) {
                        if (!dateFields[i].placeholder) {
                            dateFields[i].placeholder = "YYYY-MM-DD";
                        }
                        if (!dateFields[i].pattern) {
                            dateFields[i].pattern = "[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])";
                        }
                    }
                }

            })();
        </script>
        <script type="text/javascript">
            function revslider_showDoubleJqueryError(sliderID) {
                var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
                errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
                errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
                errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
                errorMessage = '<span style="font-size:16px;color:#BC0C06;">' + errorMessage + '</span>';
                jQuery(sliderID).show().html(errorMessage);
            }
        </script>
        <link property="stylesheet" rel="stylesheet" id="vc_hotspot_cq_style-css" href="{{asset('wp-content/plugins/vc-extensions-bundle/hotspot/css/style.min.css')}}" type="text/css" media="all" />
        <link property="stylesheet" rel="stylesheet" id="tooltipster-css" href="{{asset('wp-content/plugins/vc-extensions-bundle/hotspot/../profilecard/css/tooltipster.css')}}" type="text/css" media="all" />
        
        <script type="text/javascript" src="{{asset('wp-content/plugins/contact-form-7/includes/js/scripts.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/essential-grid/public/assets/js/jquery.themepunch.tools.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/trx_addons/js/swiper/swiper.jquery.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/trx_addons/js/magnific/jquery.magnific-popup.min.js')}}"></script>
        <script type="text/javascript">
            var host = location.host;
            /* <![CDATA[ */
            var TRX_ADDONS_STORAGE = {
                "ajax_url": "http:\/\/"+ host +"\/wp-admin\/admin-ajax.php",
                "ajax_nonce": "d1797701e5",
                "site_url": "http:\/\/"+ host ,
                "post_id": "2",
                "vc_edit_mode": "0",
                "popup_engine": "magnific",
                "animate_inner_links": "0",
                "menu_collapse": "1",
                "user_logged_in": "0",
                "email_mask": "^([a-zA-Z0-9_\\-]+\\.)*[a-zA-Z0-9_\\-]+@[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*\\.[a-z]{2,6}$",
                "msg_ajax_error": "Invalid server answer!",
                "msg_magnific_loading": "Loading image",
                "msg_magnific_error": "Error loading image",
                "msg_error_like": "Error saving your like! Please, try again later.",
                "msg_field_name_empty": "The name can't be empty",
                "msg_field_email_empty": "Too short (or empty) email address",
                "msg_field_email_not_valid": "Invalid email address",
                "msg_field_text_empty": "The message text can't be empty",
                "msg_search_error": "Search error! Try again later.",
                "msg_send_complete": "Send message complete!",
                "msg_send_error": "Transmit failed!",
                "ajax_views": "",
                "menu_cache": [".menu_mobile_inner > nav > ul"],
                "login_via_ajax": "1",
                "msg_login_empty": "The Login field can't be empty",
                "msg_login_long": "The Login field is too long",
                "msg_password_empty": "The password can't be empty and shorter then 4 characters",
                "msg_password_long": "The password is too long",
                "msg_login_success": "Login success! The page should be reloaded in 3 sec.",
                "msg_login_error": "Login failed!",
                "msg_not_agree": "Please, read and check Terms and Conditions",
                "msg_email_long": "E-mail address is too long",
                "msg_email_not_valid": "E-mail address is invalid",
                "msg_password_not_equal": "The passwords in both fields are not equal",
                "msg_registration_success": "Registration success! Please log in!",
                "msg_registration_error": "Registration failed!",
                "msg_sc_googlemap_not_avail": "Googlemap service is not available",
                "msg_sc_googlemap_geocoder_error": "Error while geocode address"
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/trx_addons/js/trx_addons.js')}}"></script>
        <script type="text/javascript">
            var host = location.host;
            /* <![CDATA[ */
            var TRX_DEMO_STORAGE = {
                "ajax_url": "http:\/\/"+ host +"\/wp-admin\/admin-ajax.php",
                "ajax_nonce": "d1797701e5",
                "site_url": "http:\/\/"+ host,
                "user_logged_in": "0",
                "msg_ajax_error": "Invalid server response! Try again later.",
                "tabs_delay": "5000"
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/trx_demo/js/trx_demo_panels.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/trx_addons/components/cpt/layouts/shortcodes/menu/superfish.min.js')}}"></script>
        <script type="text/javascript">
            var host = location.host;
            /* <![CDATA[ */
            var wpgdprcData = {
                "ajaxURL": "http:\/\/"+ host +"\/wp-admin\/admin-ajax.php",
                "ajaxSecurity": "3390555847",
                "consentVersion": "1",
                "consentStatus": "0",
                "isMultisite": "",
                "path": "\/",
                "blogId": ""
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/wp-gdpr-compliance/assets/js/front.js')}}"></script>
        <script type="text/javascript">
            var host = location.host;
            /* <![CDATA[ */
            var PROLINGUA_STORAGE = {
                "ajax_url": "http:\/\/"+ host +"\/wp-admin\/admin-ajax.php",
                "ajax_nonce": "d1797701e5",
                "site_url": "http:\/\/"+ host,
                "theme_url": "http:\/\/"+ host +"\/wp-content\/themes\/prolingua",
                "site_scheme": "scheme_default",
                "user_logged_in": "",
                "mobile_layout_width": "767",
                "mobile_device": "",
                "menu_side_stretch": "",
                "menu_side_icons": "1",
                "background_video": "",
                "use_mediaelements": "1",
                "comment_maxlength": "1000",
                "admin_mode": "",
                "email_mask": "^([a-zA-Z0-9_\\-]+\\.)*[a-zA-Z0-9_\\-]+@[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*\\.[a-z]{2,6}$",
                "strings": {
                    "ajax_error": "Invalid server answer!",
                    "error_global": "Error data validation!",
                    "name_empty": "The name can&#039;t be empty",
                    "name_long": "Too long name",
                    "email_empty": "Too short (or empty) email address",
                    "email_long": "Too long email address",
                    "email_not_valid": "Invalid email address",
                    "text_empty": "The message text can&#039;t be empty",
                    "text_long": "Too long message text"
                },
                "alter_link_color": "#3e3ed3",
                "button_hover": "default"
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="{{asset('wp-content/themes/prolingua/js/__scripts.js')}}"></script>
        <script type="text/javascript">
            var mejsL10n = {
                "language": "en",
                "strings": {
                    "mejs.install-flash": "You are using a browser that does not have Flash player enabled or installed. Please turn on your Flash player plugin or download the latest version from https:\/\/get.adobe.com\/flashplayer\/",
                    "mejs.fullscreen-off": "Turn off Fullscreen",
                    "mejs.fullscreen-on": "Go Fullscreen",
                    "mejs.download-video": "Download Video",
                    "mejs.fullscreen": "Fullscreen",
                    "mejs.time-jump-forward": ["Jump forward 1 second", "Jump forward %1 seconds"],
                    "mejs.loop": "Toggle Loop",
                    "mejs.play": "Play",
                    "mejs.pause": "Pause",
                    "mejs.close": "Close",
                    "mejs.time-slider": "Time Slider",
                    "mejs.time-help-text": "Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds.",
                    "mejs.time-skip-back": ["Skip back 1 second", "Skip back %1 seconds"],
                    "mejs.captions-subtitles": "Captions\/Subtitles",
                    "mejs.captions-chapters": "Chapters",
                    "mejs.none": "None",
                    "mejs.mute-toggle": "Mute Toggle",
                    "mejs.volume-help-text": "Use Up\/Down Arrow keys to increase or decrease volume.",
                    "mejs.unmute": "Unmute",
                    "mejs.mute": "Mute",
                    "mejs.volume-slider": "Volume Slider",
                    "mejs.video-player": "Video Player",
                    "mejs.audio-player": "Audio Player",
                    "mejs.ad-skip": "Skip ad",
                    "mejs.ad-skip-info": ["Skip in 1 second", "Skip in %1 seconds"],
                    "mejs.source-chooser": "Source Chooser",
                    "mejs.stop": "Stop",
                    "mejs.speed-rate": "Speed Rate",
                    "mejs.live-broadcast": "Live Broadcast",
                    "mejs.afrikaans": "Afrikaans",
                    "mejs.albanian": "Albanian",
                    "mejs.arabic": "Arabic",
                    "mejs.belarusian": "Belarusian",
                    "mejs.bulgarian": "Bulgarian",
                    "mejs.catalan": "Catalan",
                    "mejs.chinese": "Chinese",
                    "mejs.chinese-simplified": "Chinese (Simplified)",
                    "mejs.chinese-traditional": "Chinese (Traditional)",
                    "mejs.croatian": "Croatian",
                    "mejs.czech": "Czech",
                    "mejs.danish": "Danish",
                    "mejs.dutch": "Dutch",
                    "mejs.english": "English",
                    "mejs.estonian": "Estonian",
                    "mejs.filipino": "Filipino",
                    "mejs.finnish": "Finnish",
                    "mejs.french": "French",
                    "mejs.galician": "Galician",
                    "mejs.german": "German",
                    "mejs.greek": "Greek",
                    "mejs.haitian-creole": "Haitian Creole",
                    "mejs.hebrew": "Hebrew",
                    "mejs.hindi": "Hindi",
                    "mejs.hungarian": "Hungarian",
                    "mejs.icelandic": "Icelandic",
                    "mejs.indonesian": "Indonesian",
                    "mejs.irish": "Irish",
                    "mejs.italian": "Italian",
                    "mejs.japanese": "Japanese",
                    "mejs.korean": "Korean",
                    "mejs.latvian": "Latvian",
                    "mejs.lithuanian": "Lithuanian",
                    "mejs.macedonian": "Macedonian",
                    "mejs.malay": "Malay",
                    "mejs.maltese": "Maltese",
                    "mejs.norwegian": "Norwegian",
                    "mejs.persian": "Persian",
                    "mejs.polish": "Polish",
                    "mejs.portuguese": "Portuguese",
                    "mejs.romanian": "Romanian",
                    "mejs.russian": "Russian",
                    "mejs.serbian": "Serbian",
                    "mejs.slovak": "Slovak",
                    "mejs.slovenian": "Slovenian",
                    "mejs.spanish": "Spanish",
                    "mejs.swahili": "Swahili",
                    "mejs.swedish": "Swedish",
                    "mejs.tagalog": "Tagalog",
                    "mejs.thai": "Thai",
                    "mejs.turkish": "Turkish",
                    "mejs.ukrainian": "Ukrainian",
                    "mejs.vietnamese": "Vietnamese",
                    "mejs.welsh": "Welsh",
                    "mejs.yiddish": "Yiddish"
                }
            };
        </script>
        <script type="text/javascript" src="{{asset('wp-includes/js/mediaelement/mediaelement-and-player.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-includes/js/mediaelement/mediaelement-migrate.min.js')}}"></script>
        <script type="text/javascript">
            /* <![CDATA[ */
            var _wpmejsSettings = {
                "pluginPath": "\/wp-includes\/js\/mediaelement\/",
                "classPrefix": "mejs-",
                "stretching": "responsive"
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="{{asset('wp-includes/js/mediaelement/wp-mediaelement.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-includes/js/wp-embed.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/vc-extensions-bundle/hotspot/../profilecard/js/jquery.tooltipster.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/vc-extensions-bundle/hotspot/js/script.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min.js')}}"></script>
        <script type="text/javascript">
            /* <![CDATA[ */
            var mc4wp_forms_config = [];
            /* ]]> */
        </script>
        <script type="text/javascript" src="{{asset('wp-content/plugins/mailchimp-for-wp/assets/js/forms-api.min.js?ver=4.5.0')}}"></script>

        @include('sweetalert::alert')

        


</body>
</html>
