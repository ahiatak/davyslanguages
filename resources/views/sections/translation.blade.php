@php
    $section = $sections->where('id', 3)->first();
@endphp

<div class="vc_row wpb_row vc_row-fluid vc_custom_1509365570913 vc_row-has-fill hide_bg_image_on_mobile" style="background-image: url('{{Voyager::image($section->thumbnail('cropped-medium', 'image'))}}') !important;">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner vc_custom_1508844258104">
            <div class="wpb_wrapper">
                <div class="vc_empty_space  hide_on_mobile" style="height: 4.5em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1508844263833">
                    <div class="wpb_column vc_column_container vc_col-sm-5 sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner vc_custom_1508844273897">
                            <div class="wpb_wrapper"></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-7 vc_col-has-fill sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner vc_custom_1508844269234">
                            <div class="wpb_wrapper">
                                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2.2em"><span class="vc_empty_space_inner"></span></div>
                                <div id="sc_content_126526634" class="sc_content color_style_default sc_content_default sc_content_width_70p sc_float_center">
                                    <div class="sc_content_container">
                                        <div id="sc_title_824588186" class="sc_title color_style_default sc_title_default">
                                            <h6 class="sc_item_subtitle sc_title_subtitle sc_align_left sc_item_title_style_default">{{ $texts->where('id', 45)->first()->text }} </h6>
                                            <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">{{ $section->getTranslatedAttribute('title', $langue, 'fr') }}</h2>
                                        </div>
                                        <!-- /.sc_title -->
                                        <div class="vc_empty_space" style="height: 2.4em"><span class="vc_empty_space_inner"></span></div>

                                        <div class="wpb_text_column wpb_content_element ">
                                            <div class="wpb_wrapper">
                                                {!! $section->getTranslatedAttribute('description', $langue, 'fr') !!}

                                            </div>
                                        </div>
                                        <div class="vc_empty_space" style="height: 2.8em"><span class="vc_empty_space_inner"></span></div>
                                        <a href="/classic-1/" id="sc_button_1032593694" class="sc_button color_style_default sc_button_default sc_button_size_normal sc_button_icon_left"><span class="sc_button_text"><span class="sc_button_title">{{ $texts->where('id', 12)->first()->text }}</span></span><!-- /.sc_button_text --></a>
                                        <!-- /.sc_button -->
                                    </div>
                                </div>
                                <!-- /.sc_content -->
                                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2.2em"><span class="vc_empty_space_inner"></span></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 4.5em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
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