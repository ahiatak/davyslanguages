<div class="wpb_column vc_column_container vc_col-sm-6 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div id="sc_title_2027539893" class="sc_title color_style_default sc_title_default">
                    <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">
                        {{ $texts->where('id', 22)->first()->text }}</h2>
                </div>
                <!-- /.sc_title -->
                <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>

                <div class="wpb_single_image wpb_content_element vc_align_left">

                    <figure class="wpb_wrapper vc_figure">
                        <div class="vc_single_image-wrapper   vc_box_border_grey"><img width="582" height="250" src="{{Voyager::image($image->url)}}" class="vc_single_image-img attachment-full" alt="" /></div>
                    </figure>
                </div>
                <div class="vc_empty_space" style="height: 2.8em"><span class="vc_empty_space_inner"></span></div>
                <div id="sc_services_1534776144" class="sc_services color_style_default sc_services_timeline sc_services_featured_left">
                    <div class="sc_services_content sc_item_content sc_item_columns_1">
                        @foreach($howItWorks as $howItWork)
                            <div class="sc_services_item with_content with_number sc_services_item_featured_left">
                                <div class="sc_services_item_timeline"></div><span class="sc_services_item_marker sc_services_item_number">0{{$loop->iteration}}</span>
                                <div class="sc_services_item_info">
                                    <div class="sc_services_item_header">
                                        <h4 class="sc_services_item_title"><a href="#"> {{ $howItWork->getTranslatedAttribute('title', $langue, 'fr') }} </a></h4>

                                    </div>
                                    <div class="sc_services_item_content">
                                        <p>
                                            {{ $howItWork->getTranslatedAttribute('description', $langue, 'fr') }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <!-- /.sc_services -->
                <div class="vc_empty_space  hide_on_mobile" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>