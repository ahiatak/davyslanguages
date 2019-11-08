@extends('layouts.app')

@section('banner')
    @includeIf('services.banner')
@endsection

@push('css')

    <style type="text/css" data-type="vc_shortcodes-custom-css">
        .vc_custom_1509365570913 {
            margin-right: 0px !important;
            margin-left: 0px !important;
            background-image: url(wp-content/uploads/2017/08/image-23.jpg?id=244);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: contain !important;
        }

        .vc_custom_1508149615340 {
            background-image: url(wp-content/uploads/2017/10/bg.jpg?id=620);
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1508164984417 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508839404361 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508243684560 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508844258104 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508844263833 {
            margin-right: 0px !important;
            margin-left: 0px !important;
        }

        .vc_custom_1508844273897 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508844269234 {
            padding-right: 0px !important;
            padding-left: 0px !important;
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508226839472 {
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }

        .vc_custom_1508839536114 {
            background-size: contain !important;
        }

        .vc_custom_1508839486273 {
            background-size: contain !important;
        }

        .vc_custom_1510174779341 {
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
            background-image: url(wp-content/uploads/2017/10/bg.jpg?id=620);
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
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg?id=620')}});
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

    @php $title = $texts->where('id', 44)->first()->text @endphp

    <article id="post-34" class="post_item_single post_type_page post-34 page type-page status-publish hentry">
        <div class="post_content entry-content">
            <div class="vc_row wpb_row vc_row-fluid">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                            <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                            <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                </div>
            </div>
            
            
            @includeIf('sections.translation')    

            @includeIf('services.overview')    
        

            <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1508243684560 vc_row-has-fill">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div class="vc_empty_space" style="height: 20em"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="vc_row-full-width vc_clearfix"></div>

            @includeIf('translates.create2') 
        </div>
        <!-- .entry-content -->


    </article>
@endsection