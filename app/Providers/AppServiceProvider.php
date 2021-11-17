<?php

namespace App\Providers;

use App\About;
use App\Entreprise;
use App\Faq;
use App\Gallery;
use App\HowItWork;
use App\Image;
use App\Learn;
use App\Post;
use App\Price;
use App\Section;
use App\Service;
use App\Slide;
use App\Team;
use App\Testimonial;
use App\Text;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $locale = explode('/', request()->path())[0];

        session(['locale' => $locale]);

        if($locale != 'fr' && $locale != 'en'){
            $locale = 'fr';
        }

        View::share([
            'langue' => $locale,
            'davyslanguages' => Entreprise::all()->last(),
            'about' => About::all()->last(),
            'teams' => Team::all(),
            'galleries' => Gallery::all(),
            'services' => Service::all(),
            'learns' => Learn::orderBy('created_at', 'desc')->paginate(9),
            'posts' => Post::orderBy('created_at', 'desc')->paginate(9),
            'testimonials' => Testimonial::all(),
            'slides' => Slide::all(),
            'sections' => Section::all(),
            'images' => Image::all(),
            'howItWorks' => HowItWork::all(),
            'faqs' => Faq::all(),
            'prices' => Price::all(),
            'texts' => Text::withTranslations()->get(),
        ]);
    }
}
