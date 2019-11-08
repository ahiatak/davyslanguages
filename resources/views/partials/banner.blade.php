<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid vc_row-no-padding">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div id="widget_slider_986300422" class="widget_area sc_widget_slider vc_widget_slider wpb_content_element">
                    <aside id="widget_slider_986300422_widget" class="widget widget_slider">
                        <div class="slider_wrap slider_engine_revo slider_alias_main-slider">
                            <link href="http://fonts.googleapis.com/css?family=Muli:200%2C400" rel="stylesheet" property="stylesheet" type="text/css" media="all">
                            <div id="rev_slider_1_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-source="gallery" style="margin:0px auto;background:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
                                <!-- START REVOLUTION SLIDER 5.4.8.3 auto mode -->
                                <div id="rev_slider_1_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.8.3">
                                    <ul>
                                        <!-- SLIDE  -->
                                        @foreach($slides as $slide)
                                            <li data-index="rs-{{$loop->iteration}}" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-thumb="{{Voyager::image($slide->thumbnail('slide-1', 'image'))}}"
                                                data-delay="10000" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7=""
                                                data-param8="" data-param9="" data-param10="" data-description="">
                                                <!-- MAIN IMAGE -->
                                                <img src="{{Voyager::image($slide->thumbnail('cropped', 'image'))}}" alt="" title="Lets go over the details again" width="1920" height="803" data-bgposition="right center" data-kenburns="on" data-duration="15000" data-ease="Linear.easeNone"
                                                    data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-blurstart="0" data-blurend="0" data-offsetstart="0 0" data-offsetend="0 0" class="rev-slidebg"
                                                    data-no-retina>
                                                <!-- LAYERS -->

                                                <!-- LAYER NR. 1 -->
                                                <div class="tp-caption Muli-extralight-yellow   tp-resizeme  title_resp" id="slide-{{$loop->iteration}}-layer-3" data-x="23" data-y="center" data-voffset="-143" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"delay":700,"speed":1200,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                    data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
                                                    style="z-index: 5; white-space: nowrap; line-height: 90px; font-weight: 200; color: #04ded0; letter-spacing: 0px;">
                                                    {{ $slide->getTranslatedAttribute('texte1', $langue, 'fr') }} </div>

                                                <!-- LAYER NR. 2 -->
                                                <div class="tp-caption Muli-extralight-white   tp-resizeme  title_resp" id="slide-{{$loop->iteration}}-layer-4" data-x="23" data-y="center" data-voffset="-61" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"delay":2450,"speed":1000,"frame":"0","from":"x:-50px;opacity:0;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                    data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
                                                    style="z-index: 6; white-space: nowrap; letter-spacing: 0px;">
                                                    {{ $slide->getTranslatedAttribute('texte2', $langue, 'fr') }} </div>

                                                <!-- LAYER NR. 3 -->
                                                <div class="tp-caption Muli-extralight-white   tp-resizeme  title_resp" id="slide-{{$loop->iteration}}-layer-5" data-x="27" data-y="center" data-voffset="26" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"delay":3740,"speed":1000,"frame":"0","from":"x:-50px;opacity:0;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                                    data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
                                                    style="z-index: 7; white-space: nowrap; letter-spacing: 0px;">
                                                    {{ $slide->getTranslatedAttribute('texte3', $langue, 'fr') }} </div>

                                                <!-- LAYER NR. 4 -->
                                                <div class="tp-caption rev-btn   button_resp" id="slide-{{$loop->iteration}}-layer-6" data-x="27" data-y="center" data-voffset="130" data-width="['auto']" data-height="['auto']" data-type="button" data-actions='[{"event":"click","action":"simplelink","target":"_self","url":"\/fr\/contacts\/","delay":""}]'
                                                    data-responsive_offset="on" data-responsive="off" data-frames='[{"delay":5400,"speed":1200,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Linear.easeNone"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(29,29,29);bg:rgb(243,245,249);"}]'
                                                    data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[25,25,25,25]" data-paddingright="[45,45,45,45]" data-paddingbottom="[25,25,25,25]" data-paddingleft="[45,45,45,45]"
                                                    style="z-index: 8; white-space: nowrap; font-size: 11px; line-height: 12px; font-weight: 400; color: rgba(255,255,255,1); letter-spacing: 2px;font-family:Muli;text-transform:uppercase;background-color:#04ded0;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">
                                                    {{ $slide->getTranslatedAttribute('btn_text', $langue, 'fr') }} </div>
                                            </li>
                                        @endforeach
                                    </ul>
                                    <script>
                                        var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                        var htmlDivCss = "";
                                        if (htmlDiv) {
                                            htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                        } else {
                                            var htmlDiv = document.createElement("div");
                                            htmlDiv.innerHTML = "";
                                            document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                        }
                                    </script>
                                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                                </div>
                                <script>
                                    var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                    var htmlDivCss = ".tp-caption.Muli-extralight-yellow,.Muli-extralight-yellow{color:#fec557;font-size:70px;line-height:22px;font-weight:300;font-style:normal;font-family:Muli;text-decoration:none;background-color:transparent;border-color:transparent;border-style:none;border-width:0px 0px 0px 0px;border-radius:0px 0px 0px 0px}.tp-caption.Muli-extralight-white,.Muli-extralight-white{color:#ffffff;font-size:70px;line-height:80px;font-weight:200;font-style:normal;font-family:Muli;text-decoration:none;background-color:transparent;border-color:transparent;border-style:none;border-width:0px 0px 0px 0px;border-radius:0px 0px 0px 0px}";
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement("div");
                                        htmlDiv.innerHTML = "";
                                        document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                                <script type="text/javascript">
                                    if (setREVStartSize !== undefined) setREVStartSize({
                                        c: '#rev_slider_1_1',
                                        gridwidth: [1320],
                                        gridheight: [750],
                                        sliderLayout: 'auto'
                                    });

                                    var revapi1,
                                        tpj;
                                    (function() {
                                        if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad);
                                        else onLoad();

                                        function onLoad() {
                                            var host = location.origin;
                                            if (tpj === undefined) {
                                                tpj = jQuery;
                                                if ("off" == "on") tpj.noConflict();
                                            }
                                            if (tpj("#rev_slider_1_1").revolution == undefined) {
                                                revslider_showDoubleJqueryError("#rev_slider_1_1");
                                            } else {
                                                revapi1 = tpj("#rev_slider_1_1").show().revolution({
                                                    sliderType: "standard",
                                                    jsFileLocation: host + "/wp-content/plugins/revslider/public/assets/js/",
                                                    sliderLayout: "auto",
                                                    dottedOverlay: "none",
                                                    delay: 9000,
                                                    navigation: {
                                                        keyboardNavigation: "off",
                                                        keyboard_direction: "horizontal",
                                                        mouseScrollNavigation: "off",
                                                        mouseScrollReverse: "default",
                                                        onHoverStop: "off",
                                                        touch: {
                                                            touchenabled: "on",
                                                            touchOnDesktop: "on",
                                                            swipe_threshold: 75,
                                                            swipe_min_touches: 1,
                                                            swipe_direction: "horizontal",
                                                            drag_block_vertical: false
                                                        },
                                                        bullets: {
                                                            enable: true,
                                                            hide_onmobile: true,
                                                            hide_under: 768,
                                                            style: "custom",
                                                            hide_onleave: false,
                                                            direction: "horizontal",
                                                            h_align: "center",
                                                            v_align: "bottom",
                                                            h_offset: 0,
                                                            v_offset: 60,
                                                            space: 15,
                                                            tmp: ''
                                                        }
                                                    },
                                                    visibilityLevels: [1240, 1024, 778, 480],
                                                    gridwidth: 1320,
                                                    gridheight: 750,
                                                    lazyType: "none",
                                                    shadow: 0,
                                                    spinner: "spinner2",
                                                    stopLoop: "off",
                                                    stopAfterLoops: -1,
                                                    stopAtSlide: -1,
                                                    shuffle: "off",
                                                    autoHeight: "off",
                                                    disableProgressBar: "on",
                                                    hideThumbsOnMobile: "off",
                                                    hideSliderAtLimit: 0,
                                                    hideCaptionAtLimit: 0,
                                                    hideAllCaptionAtLilmit: 0,
                                                    debugMode: false,
                                                    fallbacks: {
                                                        simplifyAll: "off",
                                                        nextSlideOnWindowFocus: "off",
                                                        disableFocusListener: false,
                                                    }
                                                });
                                            }; /* END OF revapi call */

                                        }; /* END OF ON LOAD FUNCTION */
                                    }()); /* END OF WRAPPING FUNCTION */
                                </script>
                                <script>
                                    var htmlDivCss = ' #rev_slider_1_1_wrapper .tp-loader.spinner2{ background-color: #fec557 !important; } ';
                                    var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement('div');
                                        htmlDiv.innerHTML = '';
                                        document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                                <script>
                                    var htmlDivCss = unescape(".custom.tp-bullets%20%7B%0A%7D%0A.custom.tp-bullets%3Abefore%20%7B%0A%09content%3A%22%20%22%3B%0A%09position%3Aabsolute%3B%0A%09width%3A100%25%3B%0A%09height%3A100%25%3B%0A%09background%3Atransparent%3B%0A%09padding%3A10px%3B%0A%09margin-left%3A-10px%3Bmargin-top%3A-10px%3B%0A%09box-sizing%3Acontent-box%3B%0A%7D%0A.custom%20.tp-bullet%20%7B%0A%09width%3A12px%3B%0A%09height%3A12px%3B%0A%09position%3Aabsolute%3B%0A%09background%3A%23aaa%3B%0A%20%20%20%20background%3Argba%28125%2C125%2C125%2C0.5%29%3B%0A%09cursor%3A%20pointer%3B%0A%09box-sizing%3Acontent-box%3B%0A%7D%0A.custom%20.tp-bullet%3Ahover%2C%0A.custom%20.tp-bullet.selected%20%7B%0A%09background%3Argb%28125%2C125%2C125%29%3B%0A%7D%0A.custom%20.tp-bullet-image%20%7B%0A%7D%0A.custom%20.tp-bullet-title%20%7B%0A%7D%0A%0A");
                                    var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement('div');
                                        htmlDiv.innerHTML = '';
                                        document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                            </div>
                            <!-- END REVOLUTION SLIDER -->
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>
<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>