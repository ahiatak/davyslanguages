<div class="vc_row wpb_row vc_row-fluid vc_custom_1509357335520 vc_row-has-fill hide_bg_image_on_mobile" style="background-image: url({{Voyager::image($about->thumbnail('cropped', 'image'))}}) !important; ">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner vc_custom_1508843633579">
            <div class="wpb_wrapper">
                <div class="vc_empty_space  hide_on_mobile" style="height: 4.5em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1508843641414">
                    <div class="wpb_column vc_column_container vc_col-sm-5 sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner vc_custom_1508843651837">
                            <div class="wpb_wrapper"></div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-7 vc_col-has-fill sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner vc_custom_1508843646838">
                            <div class="wpb_wrapper">
                                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                                <div class="vc_empty_space" style="height: 2.2em"><span class="vc_empty_space_inner"></span></div>
                                <div id="sc_content_143644196" class="sc_content color_style_default sc_content_default sc_content_width_70p sc_float_center">
                                    <div class="sc_content_container">
                                        <div id="sc_title_943484480" class="sc_title color_style_default sc_title_default">
                                            <h6 class="sc_item_subtitle sc_title_subtitle sc_align_left sc_item_title_style_default">
                                                {{ $texts->where('id', 11)->first()->text }}</h6>
                                            <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">
                                                {{ $about->getTranslatedAttribute('title', $langue, 'fr') }} </h2>
                                        </div>
                                        <!-- /.sc_title -->
                                        <div class="vc_empty_space" style="height: 2.3em"><span class="vc_empty_space_inner"></span>
                                        </div>

                                        <div class="wpb_text_column wpb_content_element ">
                                            <div class="wpb_wrapper">
                                                @if(url()->current() == route('abouts.index'))
                                                    {!! $about->getTranslatedAttribute('description', $langue, 'fr') !!}
                                                @else
                                                    {!! Str::limit($about->getTranslatedAttribute('description', $langue, 'fr'), 250) !!}
                                                @endif

                                            </div>
                                        </div>
                                        <div class="vc_empty_space" style="height: 2.8em"><span class="vc_empty_space_inner"></span>
                                        </div>
                                        @if(url()->current() != route('abouts.index'))
                                            <a href="{{route('abouts.index')}}" id="sc_button_2143448993" class="sc_button color_style_default sc_button_default sc_button_size_normal sc_button_icon_left"><span class="sc_button_text"><span
                                                        class="sc_button_title">{{ $texts->where('id', 12)->first()->text }}</span></span></a>  
                                        @endif
                                        
                                    </div>
                                </div>
                                <!-- /.sc_content -->
                                <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
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
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>