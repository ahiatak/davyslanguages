@php
    $image = $images->where('id', 2)->first();
@endphp


<div class="vc_row wpb_row vc_row-fluid vc_custom_1507724891088 vc_row-has-fill scheme_dark" style="background-image: url('{{Voyager::image($image->url)}}');">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="vc_empty_space" style="height: 7.3em"><span class="vc_empty_space_inner"></span></div>
                <div id="sc_content_528547404" class="sc_content color_style_default sc_content_default sc_content_width_1_1 sc_float_center">
                    <div class="sc_content_container">
                        <div class="sc_layouts_item">
                            <div id="sc_layouts_title_296613276" class="sc_layouts_title sc_align_center with_content">
                                <div class="sc_layouts_title_content">
                                    <div class="sc_layouts_title_title">
                                        <h1 class="sc_layouts_title_caption">
                                            @if(url()->current() == route('learns.index'))
                                                {{ $texts->where('id', 46)->first()->text }} 
                                            @else

                                                {{ $learn->getTranslatedAttribute('title', $langue, 'fr') }}
                                            @endif 
                                        </h1>
                                    </div>
                                    <div class="sc_layouts_title_breadcrumbs">
                                        <div class="breadcrumbs"><a class="breadcrumbs_item home" href="/">{{ $texts->where('id', 1)->first()->text }}</a><span class="breadcrumbs_delimiter"></span><span class="breadcrumbs_item current">{{ (isset($learn))? $learn->getTranslatedAttribute('title', $langue, 'fr') :  $texts->where('id', 47)->first()->text }}</span></div>
                                    </div>
                                </div>
                                <!-- .sc_layouts_title_content -->
                            </div>
                            <!-- /.sc_layouts_title -->
                        </div>
                    </div>
                </div>
                <!-- /.sc_content -->
                <div class="vc_empty_space" style="height: 8.1em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>