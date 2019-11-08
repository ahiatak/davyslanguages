<style>
    .vc_row[data-vc-full-width].vc_hidden {
        opacity: 1;
    }
</style>

<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_sep_color_grey vc_custom_1508313931303  vc_custom_1508313931303"><span class="vc_sep_holder vc_sep_holder_l"><span  class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span  class="vc_sep_line"></span></span>
                </div>
                <div class="vc_empty_space" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                 {{--<div class="vc_empty_space  hide_on_mobile" style="height: 3em"><span class="vc_empty_space_inner"></span></div> --}}
                <div id="sc_title_1355251231" class="sc_title color_style_default sc_title_default">
                    <h1 class="sc_item_title sc_title_title sc_align_center sc_item_title_style_default sc_item_title_tag">{{ $texts->where('id', 43)->first()->text }}</h1>
                </div>
                <!-- /.sc_title -->
            </div>
        </div>
    </div>
</div>
<div class="vc_row wpb_row vc_row-fluid">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="vc_empty_space" style="height: 20em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
    </div>
</div>
<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1502704883772 vc_row-has-fill">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="sc_content_wrap sc_push_large">
                    <div id="sc_content_1328784846" class="sc_content color_style_default sc_content_default sc_content_width_1_1 sc_float_center">
                        <div class="sc_content_container">
                            <div id="sc_price_1905977728" class="sc_price color_style_default scheme_default sc_price_default">
                                <div class="sc_price_columns_wrap sc_item_columns trx_addons_columns_wrap columns_padding_bottom">
                                    @foreach($prices as $price)
                                        <div class="trx_addons_column-1_3">
                                            <div class="sc_price_item sc_price_item_default">
                                                <div class="sc_price_item_plan_wrapper">
                                                    <div class="sc_price_item_price"><span class="sc_price_item_price_value">{{$price->price}}</span><span class="sc_price_item_price_after">F/mois </span></div>
                                                    <h3 class="sc_price_item_title"><span>{!! $price->title !!}</span></h3>
                                                </div>
                                                <div class="sc_price_item_info">
                                                    <div class="sc_price_item_details">
                                                        <ul>
                                                            @foreach($price->p_items as $p_item)
                                                                <li>{{ $p_item->getTranslatedAttribute('title', $langue, 'fr') }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div><a href="#" class="sc_price_item_link sc_button without_text_link"></a></div>
                                                <!-- /.sc_price_item_info -->
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            
                            <div class="vc_empty_space" style="height: 1.5em"><span class="vc_empty_space_inner"></span></div>
                               

                            </div>
                        </div>
                    </div>
                    <!-- /.sc_content -->
                </div>
                <!-- /.sc_content_wrap -->
                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                {{-- <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2.8em"><span class="vc_empty_space_inner"></span></div> --}}
            </div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>