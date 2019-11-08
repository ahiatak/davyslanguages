
@php
    $section = $sections->where('id', 2)->first();
@endphp

<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1508847342507 vc_row-has-fill scheme_dark" style="background-image: url('{{Voyager::image($section->thumbnail('cropped-big', 'image'))}}') !important;">
    <div class="wpb_column vc_column_container vc_col-sm-5 vc_col-lg-5 vc_col-md-5 vc_col-xs-12 vc_hidden-xs sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper"></div>
        </div>
    </div>
    <div class="wpb_column vc_column_container vc_col-sm-7 vc_col-lg-7 vc_col-md-7 vc_col-xs-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="vc_empty_space" style="height: 5em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 4.6em"><span class="vc_empty_space_inner"></span>
                </div>
                <div id="sc_title_65154540" class="sc_title color_style_default sc_title_default">
                    <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default">
                        {{ $section->getTranslatedAttribute('title', $langue, 'fr') }}</h2>
                </div>
                <!-- /.sc_title -->
                <div class="vc_empty_space" style="height: 1.2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 1.4em"><span class="vc_empty_space_inner"></span>
                </div>
                <div id="sc_title_387845693" class="sc_title color_style_default sc_title_default">
                    <h4 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">
                        {!! $section->getTranslatedAttribute('description', $langue, 'fr') !!}</h4>
                </div>
                <!-- /.sc_title -->
                <div class="vc_empty_space" style="height: 3.5em"><span class="vc_empty_space_inner"></span></div>
                <a href="{{route('contacts.index')}}" id="sc_button_887705286" class="sc_button color_style_link2 sc_button_default sc_button_size_normal sc_button_icon_left"><span
                        class="sc_button_text"><span class="sc_button_title">{{ $texts->where('id', 11)->first()->text }}</span></span><!-- /.sc_button_text --></a>
                <!-- /.sc_button -->
                <div class="vc_empty_space" style="height: 5em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 6.5em"><span class="vc_empty_space_inner"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>