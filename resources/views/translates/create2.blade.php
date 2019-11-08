<div class="vc_row wpb_row vc_row-fluid zero_height">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="sc_content_wrap sc_push_large">
                    <div id="sc_content_1245405695" class="sc_content color_style_default sc_content_default sc_content_width_1_1 sc_float_center sc_padding_small extra_margin  vc_custom_1509983614156">
                        <div class="sc_content_container">
                            <div class="vc_empty_space" style="height: 2.6em"><span class="vc_empty_space_inner"></span></div>
                            <div id="sc_title_983745401" class="sc_title color_style_default sc_title_default">
                                <h2 class="sc_item_title sc_title_title sc_align_center sc_item_title_style_default sc_item_title_tag">
                                    {{ $texts->where('id', 25)->first()->text }}</h2>
                            </div>
                            <!-- /.sc_title -->
                            <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                            <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                            <div role="form" class="wpcf7"  lang="en-US" dir="ltr">
                                <div class="screen-reader-response"></div>
                                <form action="{{route('order-translations.store')}}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="columns_wrap">
                                        <div class="column-1_3"><span class="wpcf7-form-control-wrap text-47"><input
                                                    type="text" name="name" required="" value=""
                                                    size="40"
                                                    class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                    aria-required="true"
                                                    aria-invalid="false"
                                                    placeholder="{{ $texts->where('id', 26)->first()->text }}" /></span>
                                        </div>
                                        <div class="column-1_3"><span class="wpcf7-form-control-wrap email-416"><input
                                                    type="email" name="email"
                                                    value="" size="40"
                                                    class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
                                                    aria-required="true"
                                                    aria-invalid="false"
                                                    placeholder="{{ $texts->where('id', 27)->first()->text }}" /></span>
                                        </div>
                                        <div class="column-1_3"><span class="wpcf7-form-control-wrap tel-432"><input
                                                    type="tel" required="" name="phone" value=""
                                                    size="40"
                                                    class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel"
                                                    aria-required="true"
                                                    aria-invalid="false"
                                                    placeholder="{{ $texts->where('id', 28)->first()->text }}" /></span>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_3"><span class="wpcf7-form-control-wrap menu-481"><select
                                                    name="source_language" required=""
                                                    class="wpcf7-form-control wpcf7-select"
                                                    aria-invalid="false">
                                                    <option value="">
                                                        {{ $texts->where('id', 29)->first()->text }}</option>
                                                    <option value="Anglais">Anglais
                                                    </option>
                                                    <option value="Français">Français
                                                    </option>
                                                </select></span></div>
                                        <div class="column-1_3"><span class="wpcf7-form-control-wrap menu-335"><select
                                                    name="target_language" required=""
                                                    class="wpcf7-form-control wpcf7-select"
                                                    aria-invalid="false">
                                                    <option value="">
                                                        {{ $texts->where('id', 30)->first()->text }}</option>
                                                    <option value="Anglais">Anglais
                                                    </option>
                                                    <option value="Français">Français
                                                    </option>
                                                </select></span></div>
                                        <div class="column-1_3"><span class="wpcf7-form-control-wrap radio-21"><span
                                                    class="wpcf7-form-control wpcf7-radio"><span
                                                        class="wpcf7-list-item first"><label><input
                                                                type="radio" 
                                                                name="type"
                                                                value="Company"
                                                                checked="checked" /><span
                                                                class="wpcf7-list-item-label">{{ $texts->where('id', 31)->first()->text }}</span></label>
                                            </span><span class="wpcf7-list-item last"><label><input
                                                                type="radio"
                                                                name="type"
                                                                value="Private" /><span
                                                                class="wpcf7-list-item-label">{{ $texts->where('id', 32)->first()->text }}</span></label>
                                            </span>
                                            </span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-2_3"><span class="wpcf7-form-control-wrap file-278"><span
                                                    class="fileform"><span
                                                        class="selectbutton">{{ $texts->where('id', 33)->first()->text }}</span><span id="fileformlabel">{{ $texts->where('id', 34)->first()->text }}</span><input type="file" name="file" required="" size="40" class="wpcf7-form-control wpcf7-file wpcf7-validates-as-required" accept=".jpg,.jpeg,.png,.gif,.pdf,.doc,.docx,.ppt,.pptx,.odt,.avi,.ogg,.m4a,.mov,.mp3,.mp4,.mpg,.wav,.wmv"
                                                aria-required="true" aria-invalid="false" /></span>
                                            </span>
                                        </div>
                                        <div class="column-1_3"><span class="wpcf7-form-control-wrap menu-707"><select
                                                    name="domain"
                                                    class="wpcf7-form-control wpcf7-select" required=""
                                                    aria-invalid="false">
                                                    <option value="">{{ $texts->where('id', 35)->first()->text }}
                                                    </option>
                                                    <option value="Marketing">Marketing
                                                    </option>
                                                    <option value="Healthcare">
                                                        Soins de santé</option>
                                                    <option value="Engineering">
                                                        Ingénerie</option>
                                                    <option value="Government">
                                                        Gouvernement</option><option value="Autres">
                                                        Autres</option>
                                                </select></span></div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1"><span class="wpcf7-form-control-wrap textarea-63"><textarea
                                                    name="message" cols="40"
                                                    rows="10"
                                                    class="wpcf7-form-control wpcf7-textarea"
                                                    aria-invalid="false"
                                                    placeholder="{{ $texts->where('id', 36)->first()->text }}"></textarea></span>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1 center"><input type="submit" value="{{ $texts->where('id', 37)->first()->text }}" class="" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                            <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                        </div>
                    </div>
                    <!-- /.sc_content -->
                </div>
                <!-- /.sc_content_wrap -->
            </div>
        </div>
    </div>
</div>