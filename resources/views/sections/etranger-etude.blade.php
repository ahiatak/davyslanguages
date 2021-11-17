@php
    $section = $sections->where('id', 3)->first();
@endphp

<div class="vc_row wpb_row vc_row-fluid vc_custom_1509364499080 vc_row-has-fill hide_bg_image_on_mobile scheme_dark" style="background-image: url('{{Voyager::image($section->thumbnail('cropped-medium', 'image'))}}') !important;">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner vc_custom_1508846307629">
            <div class="wpb_wrapper">
                <div class="vc_empty_space  hide_on_mobile" style="height: 4.5em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1508846313182">
                    <div class="wpb_column vc_column_container vc_col-sm-8 vc_col-lg-7 vc_col-md-7 vc_col-xs-12 vc_col-has-fill sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner vc_custom_1509364611435">
                            <div class="wpb_wrapper">
                                <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                                <div id="sc_content_1894024743" class="sc_content color_style_default sc_content_default sc_content_width_70p sc_float_center">
                                    <div class="sc_content_container">
                                        <div id="sc_title_1016257793" class="sc_title color_style_default sc_title_default">
                                            <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag"><b>{{ $section->getTranslatedAttribute('title', $langue, 'fr') }}</h2>
                                        </div>
                                        <!-- /.sc_title -->
                                        <div class="vc_empty_space" style="height: 2.2em"><span class="vc_empty_space_inner"></span></div>

                                        <div class="wpb_text_column wpb_content_element ">
                                            <div class="wpb_wrapper">
                                                {!! $section->getTranslatedAttribute('description', $langue, 'fr') !!}

                                            </div>
                                        </div>
                                        <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                                        <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 1.5em"><span class="vc_empty_space_inner"></span></div>
                                        <div id="sc_skills_219423879" class="sc_skills sc_skills_counter" data-type="counter">
                                            <div class="sc_skills_columns sc_item_columns trx_addons_columns_wrap columns_padding_bottom">
                                                <div class="sc_skills_column trx_addons_column-1_3">
                                                    <div class="sc_skills_item_wrap">
                                                        <div class="sc_skills_item">
                                                            <div class="sc_skills_icon icon-note-1"></div>
                                                            <div class="sc_skills_total" data-start="0" data-stop="2" data-step="1" data-max="2" data-speed="1" data-duration="1067" data-ed="">2</div>
                                                        </div>
                                                        <div class="sc_skills_item_title">Langue</div>
                                                    </div>
                                                </div>
                                                <div class="sc_skills_column trx_addons_column-1_3">
                                                    <div class="sc_skills_item_wrap">
                                                        <div class="sc_skills_item">
                                                            <div class="sc_skills_icon icon-archive"></div>
                                                            <div class="sc_skills_total" data-start="0" data-stop="5" data-step="1" data-max="5" data-speed="1" data-duration="1417" data-ed="">5</div>
                                                        </div>
                                                        <div class="sc_skills_item_title">Traducteurs</div>
                                                    </div>
                                                </div>
                                                <div class="sc_skills_column trx_addons_column-1_3">
                                                    <div class="sc_skills_item_wrap">
                                                        <div class="sc_skills_item">
                                                            <div class="sc_skills_icon icon-shirt"></div>
                                                            <div class="sc_skills_total" data-start="0" data-stop="780" data-step="2.4" data-max="240" data-speed="24" data-duration="7800" data-ed="">0</div>
                                                        </div>
                                                        <div class="sc_skills_item_title">Clients</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.sc_content -->
                                <div class="vc_empty_space" style="height: 3em"><span class="vc_empty_space_inner"></span></div>
                                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 1.8em"><span class="vc_empty_space_inner"></span></div>
                            </div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-4 vc_col-lg-5 vc_col-md-5 vc_col-xs-5 vc_hidden-xs sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner vc_custom_1509364619069">
                            <div class="wpb_wrapper"></div>
                        </div>
                    </div>
                </div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 4.5em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>