@extends('layouts.app')

@section('banner')
    @includeIf('abouts.banner')
@endsection

@push('css')

<style type="text/css" data-type="vc_shortcodes-custom-css">
        .vc_custom_1509364425606 {
            margin-right: 0px !important;
            margin-left: 0px !important;
            background-image: url(http:wp-content/uploads/2017/08/image-25.jpg);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: contain !important;
        }

        .vc_custom_1508428918477 {
            background-image: url(http:wp-content/uploads/2017/10/image-3.jpg);
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1508253345704 {
            background-color: #0c1220 !important;
        }

        .vc_custom_1509364499080 {
            margin-right: 0px !important;
            margin-left: 0px !important;
            background-image: url(http:wp-content/uploads/2017/08/about-bg-man.jpg);
            background-position: top right !important;
            background-repeat: no-repeat !important;
            background-size: contain !important;
        }

        .vc_custom_1502704883772 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508846263563 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508846268643 {
            margin-right: 0px !important;
            margin-left: 0px !important;
        }

        .vc_custom_1508846277573 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508846273253 {
            padding-right: 0px !important;
            padding-left: 0px !important;
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508846307629 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508846313182 {
            margin-right: 0px !important;
            margin-left: 0px !important;
        }

        .vc_custom_1509364611435 {
            padding-right: 0px !important;
            padding-left: 0px !important;
            background-color: #102048 !important;
        }

        .vc_custom_1509364619069 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508313931303 {
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }
    </style>
    <noscript>
        <style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style>
    </noscript>

    <style type="text/css" id="trx_addons-inline-styles-inline-css">
        .vc_custom_1506954838499 {
            padding-left: 1.5em !important;
        }

        .vc_custom_1507724891088 {
            background-image: url(wp-content/uploads/2017/10/main_header_bg.jpg);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1507730445537 {
            background-image: url(wp-content/uploads/2017/10/bg.jpg);
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

    @php $title = $texts->where('id', 2)->first()->text @endphp

    <article id="post-32" class="post_item_single post_type_page post-32 page type-page status-publish hentry">

        <div class="post_content entry-content">
            <div class="vc_row wpb_row vc_row-fluid">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                </div>
            </div>
            
            @includeIf('abouts.overview')

            @includeIf('sections.cours')

            <div class="vc_row wpb_row vc_row-fluid">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>{{-- 
                            <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                            <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                        </div>
                    </div>
                </div>
            </div>

            @includeIf('sections.etranger-etude')


            @includeIf('prices.overview')
            
            

        </div>

    </article>

    @includeIf('sections.video')



@endsection