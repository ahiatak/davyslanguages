@extends('layouts.app')

@section('banner')
    @includeIf('teams.banner')
@endsection

@push('css')

    <style type="text/css" data-type="vc_shortcodes-custom-css">
        .vc_custom_1509365832022 {
            margin-right: 0px !important;
            margin-left: 0px !important;
            background-image: url(http://prolingua.themerex.net/wp-content/uploads/2017/08/image-6.jpg) !important;
            background-position: top right !important;
            background-repeat: no-repeat !important;
            background-size: contain !important;
        }

        .vc_custom_1507882432931 {
            background-image: url(http://prolingua.themerex.net/wp-content/uploads/2017/10/bg.jpg) !important;
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1502567817885 {
            background-color: #f3f5f9 !important;
        }

        .vc_custom_1508843836064 {
            padding-right: 0px !important;
            padding-left: 0px !important;
        }

        .vc_custom_1508843842010 {
            padding-right: 0px !important;
            padding-left: 0px !important;
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
            background-image: url(//prolingua.themerex.net/wp-content/uploads/2017/10/main_header_bg.jpg);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1507730445537 {
            background-image: url(//prolingua.themerex.net/wp-content/uploads/2017/10/bg.jpg) !important;
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

@php $title = 'Traducteurs Interprètes Togo' @endphp
@php 
    if(session('locale') == 'en'){ $title = "Translators Interpreters Togo"; }
@endphp

<article id="post-37" class="post_item_single post_type_page post-37 page
    type-page status-publish hentry">
    <div class="post_content entry-content">
        
        
        <div class="vc_row wpb_row vc_row-fluid">
            <div class="wpb_column vc_column_container vc_col-sm-12
                sc_layouts_column_icons_position_left">
                <div class="vc_column-inner">
                    <div class="wpb_wrapper">
                        {{-- <div class="vc_empty_space" style="height: 4em">
                            <span class="vc_empty_space_inner"></span>
                        </div> --}}
                        <div class="vc_empty_space hide_on_mobile"
                            style="height: 2em">
                            <span class="vc_empty_space_inner"></span>
                        </div>
                        {{-- <div class="vc_empty_space hide_on_tablet
                            hide_on_mobile" style="height: 3em">
                            <span class="vc_empty_space_inner"></span>
                        </div> --}}
                        <div id="sc_title_861924825" class="sc_title
                            color_style_default sc_title_default">
                            <h1
                                class="sc_item_title sc_title_title
                                sc_align_center sc_item_title_style_default
                                sc_item_title_tag">
                                {{ $texts->where('id', 49)->first()->text }}
                            </h1>
                        </div>
                        <!-- /.sc_title -->
                        <div class="vc_empty_space" style="height: 14em">
                            <span class="vc_empty_space_inner"></span>
                        </div>
                        <div class="vc_empty_space hide_on_mobile"
                            style="height: 4em">
                            <span class="vc_empty_space_inner"></span>
                        </div>
                        <div class="vc_empty_space hide_on_tablet
                            hide_on_mobile" style="height: 1em">
                            <span class="vc_empty_space_inner"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div data-vc-full-width="true" data-vc-full-width-init="false"
            class="vc_row wpb_row vc_row-fluid vc_custom_1502567817885
            vc_row-has-fill">
            <div class="wpb_column vc_column_container vc_col-sm-12
                sc_layouts_column_icons_position_left">
                <div class="vc_column-inner">
                    <div class="wpb_wrapper">
                        <div class="sc_content_wrap sc_push_medium">
                            <div id="sc_content_1827437573"
                                class="sc_content color_style_default
                                sc_content_default sc_content_width_100p
                                sc_float_center">
                                <div class="sc_content_container">
                                    <div class="sc_team color_style_default
                                        sc_team_default">
                                        <div
                                            class="sc_team_columns_wrap
                                            sc_item_columns
                                            trx_addons_columns_wrap
                                            columns_padding_bottom">
                                            @foreach($teams as $team)
                                                <div class="trx_addons_column-1_3">
                                                    <div class="sc_team_item">
                                                        <div
                                                            class="post_featured
                                                            sc_team_item_thumb
                                                            trx_addons_hover
                                                            trx_addons_hover_style_info">
                                                            <a
                                                                href="#"
                                                                aria-hidden="true"><img
                                                                    width="1200"
                                                                    height="1200"
                                                                    src="{{Voyager::image($team->thumbnail('cropped', 'image'))}}"
                                                                    class="attachment-prolingua-thumb-extra
                                                                    size-prolingua-thumb-extra
                                                                    wp-post-image"
                                                                    alt="{{$team->name}}"
                                                                    srcset="{{Voyager::image($team->thumbnail('cropped', 'image'))}}
                                                                    1200w,
                                                                    {{Voyager::image($team->thumbnail('cropped-150', 'image'))}}
                                                                    150w,
                                                                    {{Voyager::image($team->thumbnail('cropped-300', 'image'))}}
                                                                    300w,
                                                                    {{Voyager::image($team->thumbnail('cropped-768', 'image'))}}
                                                                    768w,
                                                                    {{Voyager::image($team->thumbnail('cropped-1024', 'image'))}}
                                                                    1024w,
                                                                    {{Voyager::image($team->thumbnail('cropped-370', 'image'))}}
                                                                    370w,
                                                                    {{Voyager::image($team->thumbnail('cropped-90', 'image'))}}
                                                                    90w,
                                                                    {{Voyager::image($team->thumbnail('cropped-760', 'image'))}}
                                                                    760w"sizes="(max-width:
                                                                    1200px) 100vw,
                                                                    1200px" /></a>
                                                            <div
                                                                class="trx_addons_hover_content">
                                                                <div
                                                                    class="sc_team_item_socials
                                                                    socials_wrap
                                                                    trx_addons_hover_info">
                                                                    <a
                                                                        target="_blank"
                                                                        href="{{$team->twitter}}"
                                                                        class="social_item
                                                                        social_item_style_icons
                                                                        social_item_type_icons"><span
                                                                            class="social_icon
                                                                            social_twitter"><span
                                                                                class="icon-twitter"></span></span></a>
                                                                    <a
                                                                        target="_blank"
                                                                        href="{{$team->facebook}}"
                                                                        class="social_item
                                                                        social_item_style_icons
                                                                        social_item_type_icons"><span
                                                                            class="social_icon
                                                                            social_facebook"><span
                                                                                class="icon-facebook"></span></span>
                                                                    </a><a
                                                                        target="_blank"
                                                                        href="{{$team->instagram}}"
                                                                        class="social_item
                                                                        social_item_style_icons
                                                                        social_item_type_icons"><span
                                                                            class="social_icon
                                                                            social_instagramm"><span
                                                                                class="icon-instagramm"></span></span></a>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="trx_addons_hover_mask"></div>
                                                        </div>
                                                        <div
                                                            class="sc_team_item_info">
                                                            <div
                                                                class="sc_team_item_header">
                                                                <div
                                                                    class="sc_team_item_subtitle">
                                                                    {{ $team->getTranslatedAttribute('title', $langue, 'fr') }}
                                                                </div>
                                                                <h4
                                                                    class="sc_team_item_title">
                                                                    <a
                                                                        href="#">{{ $team->name }}</a>
                                                                </h4>
                                                            </div>
                                                            <div
                                                                class="sc_team_item_content">
                                                                <p>
                                                                    {{ $team->getTranslatedAttribute('description', $langue, 'fr') }}
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    <!-- /.sc_team -->
                                </div>
                            </div>
                            <!-- /.sc_content -->
                        </div>
                        <!-- /.sc_content_wrap -->
                        {{-- <div class="vc_empty_space" style="height: 4em">
                            <span class="vc_empty_space_inner"></span>
                        </div>
                        <div class="vc_empty_space hide_on_tablet
                            hide_on_mobile" style="height: 3em">
                            <span class="vc_empty_space_inner"></span>
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>
        <div class="vc_row-full-width vc_clearfix"></div>

    </div>
    <!-- .entry-content -->
</article>

@endsection