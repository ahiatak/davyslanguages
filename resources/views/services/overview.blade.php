<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1508425880820 vc_row-has-fill scheme_dark">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space" style="height: 1.8em"><span class="vc_empty_space_inner"></span>
                </div>
                <div id="sc_title_1198257880" class="sc_title color_style_default sc_title_default">
                    <h1 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">
                        {{ $texts->where('id', 13)->first()->text }}<br> {{ $texts->where('id', 15)->first()->text }}</h1>
                </div>
                <!-- /.sc_title -->
                {{-- <div class="vc_empty_space" style="height: 3.1em"><span class="vc_empty_space_inner"></span></div> --}}
                {{-- <div class="vc_row wpb_row vc_inner vc_row-fluid">
                    <div class="wpb_column vc_column_container vc_col-sm-6 sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner">
                            <div class="wpb_wrapper">
                                <div class="wpb_text_column wpb_content_element ">
                                    <div class="wpb_wrapper">
                                        {{ $texts->where('id', 16)->first()->text }}
                                        
                                    </div>
                                </div>
                                <div class="vc_empty_space  hide_on_desktop hide_on_notebook hide_on_tablet" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                            </div>
                        </div>
                    </div>
                    <div class="wpb_column vc_column_container vc_col-sm-6 sc_layouts_column_icons_position_left">
                        <div class="vc_column-inner">
                            <div class="wpb_wrapper">
                                <div class="wpb_text_column wpb_content_element ">
                                    <div class="wpb_wrapper">
                                        {{ $texts->where('id', 17)->first()->text }}

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> --}}
                <div class="vc_empty_space" style="height: 23em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>
<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1502699781255 vc_row-has-fill">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="sc_content_wrap sc_push_large">
                    <div id="sc_content_2110353205" class="sc_content color_style_default sc_content_default sc_content_width_100p sc_float_center">
                        <div class="sc_content_container">
                            <div id="sc_services_148889642" class="sc_services color_style_default sc_services_default sc_services_featured_top">
                                <div class="sc_services_columns_wrap sc_item_columns sc_item_columns_4 trx_addons_columns_wrap columns_padding_bottom">
                                    @foreach($services as $service)
                                        <div class="trx_addons_column-1_4">
                                            <div class="sc_services_item with_content with_icon sc_services_item_featured_top">


                                                <div class="sc_services_item_header">
                                                    <h4 class="sc_services_item_title">
                                                        {{ $service->getTranslatedAttribute('title', $langue, 'fr') }} </h4>
                                                </div>
                                                @if($service->icon)
                                                    <div id="sc_services_148889642_{{$service->icon}}_1" class="sc_services_item_icon {{$service->icon}}">
                                                    </div>
                                                @else
                                                    <div id="sc_services_{{time()}}" class="sc_services_item_icon">
                                                        <img src="" alt="">
                                                    </div>
                                                @endif
                                                
                                                <div class="sc_services_item_info">
                                                    <div class="sc_services_item_content">
                                                        <ul>
                                                            @foreach($service->s_items as $s_item)
                                                                <li>{{ $s_item->getTranslatedAttribute('title', $langue, 'fr') }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                    {{-- <div class="sc_services_item_button sc_item_button">
                                                        <a href="#" class="button_icon"></a>
                                                    </div> --}}
                                                    <br>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <!-- /.sc_services -->
                        </div>
                    </div>
                    <!-- /.sc_content -->
                </div>
                <!-- /.sc_content_wrap -->
                {{-- <div class="vc_empty_space" style="height: 2.5em"><span class="vc_empty_space_inner"></span></div> --}}
                {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 1.5em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 0.8em"><span class="vc_empty_space_inner"></span>
                </div>
                <div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_custom_1508426349820  vc_custom_1508426349820">
                    <span class="vc_sep_holder vc_sep_holder_l"><span
                            style="border-color:#d5d9e2;"
                            class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span
                            style="border-color:#d5d9e2;"
                            class="vc_sep_line"></span></span>
                </div>
                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>

@php
    $section = $sections->where('id', 1)->first();
@endphp

<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1502716510298 vc_row-has-fill">
    <div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-6 vc_col-md-6 vc_col-xs-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="wpb_single_image wpb_content_element vc_align_left">

                    <figure class="wpb_wrapper vc_figure">
                        <div class="vc_single_image-wrapper   vc_box_border_grey"><img width="513" height="549" src="{{Voyager::image($section->thumbnail('cropped', 'image'))}}" class="vc_single_image-img attachment-full" alt="" srcset="{{Voyager::image($section->thumbnail('cropped', 'image'))}} 513w, {{Voyager::image($section->thumbnail('cropped', 'image'))}} 280w, {{Voyager::image($section->thumbnail('cropped-small', 'image'))}} 370w"
                                sizes="(max-width: 513px) 100vw, 513px" /></div>
                    </figure>
                </div>
                <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2.3em"><span class="vc_empty_space_inner"></span>
                </div>
            </div>
        </div>
    </div>
    <div class="wpb_column vc_column_container vc_col-sm-6 vc_col-lg-5 vc_col-md-6 vc_col-xs-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div id="sc_title_1267418587" class="sc_title color_style_default sc_title_default">
                    <h6 class="sc_item_subtitle sc_title_subtitle sc_align_left sc_item_title_style_default">
                        {{ $texts->where('id', 18)->first()->text }}</h6>
                    <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">
                        {{ $section->getTranslatedAttribute('title', $langue, 'fr') }} </h2>
                </div>
                <!-- /.sc_title -->
                <div class="vc_empty_space" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 1.3em"><span class="vc_empty_space_inner"></span>
                </div>

                <div class="wpb_text_column wpb_content_element ">
                    <div class="wpb_wrapper">
                        {!! Str::limit(strip_tags($section->getTranslatedAttribute('description', $langue, 'fr')), 170) !!}

                    </div>
                </div>
                <div class="vc_empty_space" style="height: 1.5em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 1.3em"><span class="vc_empty_space_inner"></span>
                </div>
                <a href="tel:+28892949400" id="sc_button_1803259722" class="sc_button color_style_default sc_button_default sc_button_size_normal sc_button_icon_left"><span
                        class="sc_button_text"><span class="sc_button_title">{{ $texts->where('id', 72)->first()->text }}</span></span><!-- /.sc_button_text --></a>
                <!-- /.sc_button -->
                <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2.3em"><span class="vc_empty_space_inner"></span>
                </div>
            </div>
        </div>
    </div>
    <div class="wpb_column vc_column_container vc_col-sm-1 vc_col-lg-1 vc_hidden-md vc_hidden-sm vc_hidden-xs sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper"></div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>