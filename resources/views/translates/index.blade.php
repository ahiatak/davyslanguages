@extends('layouts.app')

@section('banner')
    @includeIf('translates.banner')
@endsection

@push('css')

    <noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>

    <style type="text/css" id="trx_addons-inline-styles-inline-css">
        .vc_custom_1506954838499 {
            padding-left: 1.5em !important;
        }

        .vc_custom_1507724891088 {
            background-image: url(wp-content/uploads/2017/10/main_header_bg.jpg?id=601) !important;
            background-position: top left ;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1507730445537 {
            background-image: url(wp-content/uploads/2017/10/bg.jpg?id=620) !important;
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
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg?id=620')}});
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

    @php $title = 'Traducteur Agrée au Togo' @endphp
    @php 
        if(session('locale') == 'en'){ $title = "Certified Translator in Togo"; }
    @endphp

    <article id="post-38" class="post_item_single post_type_page post-38 page type-page status-publish hentry">


        <div class="post_content entry-content">
            <div class="vc_row wpb_row vc_row-fluid">
                <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                    <div class="vc_column-inner">
                        <div class="wpb_wrapper">
                            <div id="sc_title_1091378612" class="sc_title color_style_default sc_title_default">
                            
                            </div>
                            <!-- /.sc_title -->
                            <div class="vc_empty_space" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                            <div class="vc_empty_space  hide_on_mobile" style="height: 1.5em"><span class="vc_empty_space_inner"></span></div>
                            <div role="form" class="wpcf7" id="wpcf7-f932-p38-o1" lang="en-US" dir="ltr">
                                <div class="screen-reader-response"></div>
                                <form action="{{route('order-translations.store')}}" method="post" class="wpcf7-form" enctype="multipart/form-data">
                                    @csrf
                                    
                                    <input type="hidden" name="message" value="Demande de traduction de document"/>
                                    
                                    <div class="columns_wrap">
                                        <div class="column-1_1">
                                            <h5>{{ $texts->where('id', 58)->first()->text }}</h5>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1"><span class="wpcf7-form-control-wrap menu-105"><select required="" name="deadline" class="wpcf7-form-control wpcf7-select" aria-invalid="false"><option >{{ $texts->where('id', 59)->first()->text }}</option><option value="{{ $texts->where('id', 60)->first()->text }}">{{ $texts->where('id', 60)->first()->text }}</option><option value="{{ $texts->where('id', 61)->first()->text }}">{{ $texts->where('id', 61)->first()->text }}</option><option value="{{ $texts->where('id', 62)->first()->text }}">{{ $texts->where('id', 62)->first()->text }}</option></select></span></div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1">
                                            <h5>{{ $texts->where('id', 63)->first()->text }}</h5>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1"><span class="wpcf7-form-control-wrap menu-213"><select name="document_type" required=""  class="wpcf7-form-control wpcf7-select" aria-invalid="false"><option >{{ $texts->where('id', 59)->first()->text }}</option><option value="Documents juridiques">Documents juridiques</option><option value="Documents financiers">Documents financiers</option><option value="Technical Documents"> Documents techniques</option><option value="Documents Business ">Documents Business </option><option value="Autres">Autres </option></select></span></div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1">
                                            <h5>{{ $texts->where('id', 34)->first()->text }}</h5>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1"><span class="wpcf7-form-control-wrap file-515"><span class="fileform"><span class="selectbutton">{{ $texts->where('id', 34)->first()->text }}</span><span id="fileformlabel">{{ $texts->where('id', 34)->first()->text }}</span><input type="file" name="file" required
                                                size="40" class="wpcf7-form-control wpcf7-file wpcf7-validates-as-required" accept=".jpg,.jpeg,.png,.gif,.pdf,.doc,.docx,.ppt,.pptx,.odt,.avi,.ogg,.m4a,.mov,.mp3,.mp4,.mpg,.wav,.wmv" aria-required="true"
                                                aria-invalid="false" /></span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1">
                                            <h5>{{ $texts->where('id', 64)->first()->text }}</h5>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1"><span class="wpcf7-form-control-wrap menu-598"><select name="domain"  class="wpcf7-form-control wpcf7-select" aria-invalid="false"><option value="Marketing">Marketing</option><option value="Santé">Santé</option><option value="Scientifique">Scientifique</option><option value="Diplômatique">Diplômatique</option></select><option value="Autres">Autres</option></select></span></div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_2">
                                            <h5>{{ $texts->where('id', 29)->first()->text }}</h5>
                                            <p><span class="wpcf7-form-control-wrap menu-930"><select name="source_language" required="" class="wpcf7-form-control wpcf7-select" aria-invalid="false"><option value="">{{ $texts->where('id', 29)->first()->text }} *</option><option value="Anglais">Anglais</option><option value="français">français</option></select></span></p>
                                        </div>
                                        <div class="column-1_2">
                                            <h5>{{ $texts->where('id', 30)->first()->text }}</h5>
                                            <p><span class="wpcf7-form-control-wrap menu-166"><select name="target_language" required="" class="wpcf7-form-control wpcf7-select" aria-invalid="false"><option value="">{{ $texts->where('id', 30)->first()->text }} *</option></option><option value="Anglais">Anglais</option><option value="français">français</option></select></span></p>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1">
                                            <h5>{{ $texts->where('id', 65)->first()->text }}</h5>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_2"><span class="wpcf7-form-control-wrap text-261"><input type="text" name="name" required=""  value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="{{ $texts->where('id', 66)->first()->text }} *" /></span></div>
                                        <div class="column-1_2"><span class="wpcf7-form-control-wrap text-988"><input type="text" name="firstname" required=""  value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="{{ $texts->where('id', 67)->first()->text }} *" /></span></div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1"><span class="wpcf7-form-control-wrap text-710">
                                            <select name="type" required=""  class="wpcf7-form-control wpcf7-select" aria-invalid="false">
                                                <option value="">{{ $texts->where('id', 31)->first()->text }} / {{ $texts->where('id', 32)->first()->text }}</option>
                                            <option value="Entreprise">{{ $texts->where('id', 31)->first()->text }}</option>
                                            <option value="Particulier">{{ $texts->where('id', 32)->first()->text }}</option></select></span></div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_2"><span class="wpcf7-form-control-wrap tel-759"><input type="tel" name="phone" required=""  value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel" aria-required="true" aria-invalid="false" placeholder="{{ $texts->where('id', 28)->first()->text }} *" /></span></div>
                                        <div class="column-1_2"><span class="wpcf7-form-control-wrap email-501"><input type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="{{ $texts->where('id', 27)->first()->text }} " /></span></div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1">
                                            <h5>{{ $texts->where('id', 68)->first()->text }}</h5>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1 extra"><span class="wpcf7-form-control-wrap radio-147"><span class="wpcf7-form-control wpcf7-radio"><span class="wpcf7-list-item first"><label><input type="radio" name="moyen_contact" value="{{ $texts->where('id', 69)->first()->text }}" checked="checked" /><span class="wpcf7-list-item-label">{{ $texts->where('id', 69)->first()->text }}</span></label>
                                            </span><span class="wpcf7-list-item last"><label><input type="radio" name="moyen_contact" value="{{ $texts->where('id', 70)->first()->text }}" /><span class="wpcf7-list-item-label">{{ $texts->where('id', 70)->first()->text }}</span></label>
                                            </span>
                                            </span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="columns_wrap">
                                        <div class="column-1_1 center"><input type="submit" value="{{ $texts->where('id', 37)->first()->text }}" class="wpcf7-form-control" /></div>
                                    </div>
                                    <div class="wpcf7-response-output wpcf7-display-none"></div>
                                </form>
                                <br><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- .entry-content -->


    </article>

@endsection