@extends('layouts.app')

@section('banner')
    @includeIf('contacts.banner')
@endsection

@push('css')

    <style type="text/css" data-type="vc_shortcodes-custom-css">
        .vc_custom_1508843441846 {
            background-size: cover !important;
        }

        .vc_custom_1509355325934 {
            margin-right: 0px !important;
            margin-left: 0px !important;
            background-image: url(wp-content/uploads/2017/08/image-7.jpg);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: contain !important;
        }

        .vc_custom_1508843455074 {
            background-size: cover !important;
        }

        .vc_custom_1508843096605 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508843122265 {
            margin-right: 0px !important;
            margin-left: 0px !important;
            background-size: cover !important;
        }

        .vc_custom_1508843114781 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508843109686 {
            padding-right: 0px !important;
            padding-left: 0px !important;
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1510174937781 {
            background-color: #ffffff !important;
        }
    </style>

    <noscript>
        <style type="text/css"> 
            .wpb_animate_when_almost_visible { opacity: 1; }
        </style>
    </noscript>

    <style type="text/css" id="trx_addons-inline-styles-inline-css">
        .vc_custom_1506954838499 {
            padding-left: 1.5em !important;
        }

        .vc_custom_1507724891088 {
            background-image: url(wp-content/uploads/2017/10/main_header_bg.jpg?id=601);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1507730445537 {
            background-image: url(wp-content/uploads/2017/10/bg.jpg) !important;
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
        .scheme_darksome.footer_wrap, .footer_wrap .scheme_darksome.vc_row {
            background-color: #660066;
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg')}});
            color: #a2afcb;
        }

        .scheme_darksome.footer_wrap, .footer_wrap .scheme_darksome.vc_row {
            
            background-color: #660066;
             /* background-image: url(); */
            color: #f7f7f7;

        }
    </style>
@endpush

@section('content')

    @php
        $image2 = $images->where('id', 3)->first();
    @endphp

    @php $title = "Cours d'anglais - ambassade des etats-unis au Togo" @endphp
    @php 
        if(session('locale') == 'en'){ $title = "English Courses - U.S. Embassy Togo"; }
    @endphp


    <article id="post-35" class="post_item_single post_type_page post-35 page type-page status-publish hentry">


        <div class="post_content entry-content">
            <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1508843441846 vc_row-has-fill">
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
            <div class="vc_row-full-width vc_clearfix"></div>
            <div class="vc_row wpb_row vc_row-fluid vc_custom_1509355325934 vc_row-has-fill hide_bg_image_on_mobile" style="background-image: url('{{Voyager::image($image2->url)}}');">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner vc_custom_1508843096605">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space  hide_on_mobile" style="height: 4.5em"><span class="vc_empty_space_inner"></span></div>
                            <div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1508843122265 vc_row-has-fill vc_row-o-content-middle vc_row-flex">
                                <div class="wpb_column vc_column_container vc_col-sm-5 sc_layouts_column_icons_position_left">
                                    <div class="vc_column-inner vc_custom_1508843114781">
                                        <div class="wpb_wrapper"></div>
                                    </div>
                                </div>
                                <div class="wpb_column vc_column_container vc_col-sm-7 vc_col-has-fill sc_layouts_column_icons_position_left">
                                    <div class="vc_column-inner vc_custom_1508843109686">
                                        <div class="wpb_wrapper">
                                            <div class="vc_empty_space" style="height: 3em"><span class="vc_empty_space_inner"></span></div>
                                            <div class="vc_empty_space  hide_on_mobile" style="height: 3.1em"><span class="vc_empty_space_inner"></span></div>
                                            <div id="sc_content_1326928248" class="sc_content color_style_default sc_content_default sc_content_width_70p sc_float_center">
                                                <div class="sc_content_container">
                                                    <div id="sc_title_2097062587" class="sc_title color_style_default sc_title_default">
                                                        <h6 class="sc_item_subtitle sc_title_subtitle sc_align_left sc_item_title_style_default">{{ $texts->where('id', 42)->first()->text }}</h6>
                                                        <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">{{ $texts->where('id', 53)->first()->text }}</h2>
                                                    </div>
                                                    <!-- /.sc_title -->
                                                    <div class="vc_empty_space" style="height: 2.2em"><span class="vc_empty_space_inner"></span></div>

                                                    <div class="wpb_text_column wpb_content_element ">
                                                        <div class="wpb_wrapper">
                                                            <p>{{ $texts->where('id', 54)->first()->text }} <a href="#sc_content_1039758343">{{ $texts->where('id', 71)->first()->text }} :</a></p>

                                                        </div>
                                                    </div>
                                                    <div class="vc_empty_space" style="height: 2.2em"><span class="vc_empty_space_inner"></span></div>
                                                    <div id="widget_contacts_1447980259" class="widget_area sc_widget_contacts vc_widget_contacts wpb_content_element">
                                                        <aside id="widget_contacts_1447980259_widget" class="widget widget_contacts">
                                                            <div class="contacts_wrap">
                                                                <div class="contacts_info">
                                                                    <span class="address_block"><span class="address_label">{{ $texts->where('id', 55)->first()->text }}</span><span class="contacts_address">{{$davyslanguages->about1}}</span></span>
                                                                    <span class="email_block"><span class="email_label">Email</span>
                                                                        <span class="contacts_email"><a href="mailto:{{$davyslanguages->mail1}}">{{$davyslanguages->mail1}}</a></span>
                                                                    </span>

                                                                    <span class="phone_block"><span class="email_label">{{ $texts->where('id', 73)->first()->text }}</span>
                                                                        @if($davyslanguages->tel1)
                                                                            <span class="contacts_email">
                                                                                <i class="fa fa-mobile" style="color: #3e3ed3"> </i>
                                                                                <a href="tel:{{$davyslanguages->tel1}}">{{$davyslanguages->tel1}}</a>
                                                                            </span>
                                                                        @endif

                                                                        @if($davyslanguages->tel2)
                                                                            <span class="contacts_email">
                                                                                <i class="fa fa-mobile" style="color: #3e3ed3"> </i>
                                                                                <a href="tel:{{$davyslanguages->tel2}}">{{$davyslanguages->tel2}}</a>
                                                                            </span>
                                                                        @endif

                                                                        @if($davyslanguages->tel5)
                                                                            <span class="contacts_email">
                                                                                <i class="fa fa-whatsapp" style="color: #3e3ed3"> </i>
                                                                                <a href="https://api.whatsapp.com/send?phone={{$davyslanguages->tel5}}">+{{$davyslanguages->tel5}}</a>
                                                                            </span>
                                                                        @endif
                                                                    </span>

                                                                    
                                                                        
                                                                </div>
                                                            </div>
                                                            <!-- /.contacts_wrap -->
                                                        </aside>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.sc_content -->
                                            <div class="vc_empty_space" style="height: 3em"><span class="vc_empty_space_inner"></span></div>
                                            <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_empty_space  hide_on_mobile" style="height: 4.5em"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                </div>
            </div>
            <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1508843455074 vc_row-has-fill">
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
            <div class="vc_row-full-width vc_clearfix"></div>
            <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid vc_row-no-padding">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div id="sc_googlemap_294593193_wrap" class="sc_googlemap_wrap">
                                <div id="sc_googlemap_294593193" class="sc_googlemap sc_googlemap_default" style="width:100%;height:617px;" data-zoom="14" data-style="dark" data-cluster-icon=""><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.687436842722!2d1.2357296142656977!3d6.172587028856891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1023e24762c6b39d%3A0x8cc1c529a9204c25!2sDavys&#39;Languages!5e0!3m2!1sfr!2stg!4v1572097295629!5m2!1sfr!2stg%22" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" aria-label="One"></iframe></div>
                            </div>
                            <!-- /.sc_googlemap_wrap -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="vc_row-full-width vc_clearfix"></div>
            <div class="vc_row wpb_row vc_row-fluid zero_height">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="sc_content_wrap sc_push_medium">
                                <div id="sc_content_1039758343" class="sc_content color_style_default sc_content_default sc_content_width_1_1 sc_float_center sc_padding_small extra_margin  vc_custom_1510174937781">
                                    <div class="sc_content_container">
                                        <div class="vc_empty_space" style="height: 1.6em"><span class="vc_empty_space_inner"></span></div>
                                        <div class="vc_empty_space  hide_on_mobile" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                                        <div id="sc_title_709005779" class="sc_title color_style_default sc_title_default">
                                            <h2 class="sc_item_title sc_title_title sc_align_center sc_item_title_style_default sc_item_title_tag">{{ $texts->where('id', 52)->first()->text }}</h2>
                                        </div>
                                        <!-- /.sc_title -->
                                        <div class="vc_empty_space" style="height: 3em"><span class="vc_empty_space_inner"></span></div>
                                        <div class="vc_empty_space  hide_on_mobile" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                                        <div role="form" class="wpcf7" id="wpcf7-f623-p35-o1" lang="en-US" dir="ltr">
                                            <div class="screen-reader-response"></div>
                                            <form action="{{route('contacts.store')}}" method="post" class="wpcf7-form">
                                                @csrf
                                                <div class="columns_wrap">
                                                    <div class="column-1_3"><span class="wpcf7-form-control-wrap text-47"><input type="text" required="" name="name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="{{ $texts->where('id', 26)->first()->text }}" /></span></div>
                                                    <div class="column-1_3"><span class="wpcf7-form-control-wrap email-416"><input type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="{{ $texts->where('id', 27)->first()->text }}" /></span></div>
                                                    <div class="column-1_3"><span class="wpcf7-form-control-wrap tel-432"><input type="tel" required="" name="phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel" aria-required="true" aria-invalid="false" placeholder="{{ $texts->where('id', 28)->first()->text }}" /></span></div>
                                                </div>
                                                <div class="columns_wrap">
                                                    <div class="column-1_1"><span class="wpcf7-form-control-wrap textarea-793"><textarea name="message" required="" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="{{ $texts->where('id', 36)->first()->text }}"></textarea></span></div>
                                                </div>
                                                <div class="columns_wrap">
                                                    <div class="column-1_1 center"><input type="submit" value="{{ $texts->where('id', 36)->first()->text }}" class="wpcf7-form-control wpcf7-submit" /></div>
                                                </div>
                                                <div class="wpcf7-response-output wpcf7-display-none"></div>
                                            </form>
                                        </div>
                                        <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                                        <div class="vc_empty_space  hide_on_mobile" style="height: 1.8em"><span class="vc_empty_space_inner"></span></div>
                                    </div>
                                </div>
                                <!-- /.sc_content -->
                            </div>
                            <!-- /.sc_content_wrap -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- .entry-content -->


    </article>


@endsection