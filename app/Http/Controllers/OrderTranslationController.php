<?php

namespace App\Http\Controllers;

use App\OrderTranslation;
use Illuminate\Http\Request;
use App\Entreprise;
use App\Mail\ContactDavys;
use Illuminate\Support\Facades\Mail;
Use Alert;

class OrderTranslationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('translates.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        OrderTranslation::create([
            'name' => $request->name,
            'firstname' => $request->firstname,
            'email' => $request->email,
            'phone' => $request->phone,
            'source_language' => $request->source_language,
            'target_language' => $request->target_language,
            'type' => $request->type,
            'file' => $request->file->storeAs('order-translations',  $request->name.'_'.time(). '.'. $request->file->getClientOriginalExtension(), 'public'),
            'domain' => $request->domain,
            'deadline' => $request->deadline,
            'document_type' => $request->document_type,
            'message' => $request->message,
            'moyen_contact' => $request->moyen_contact,
        ]);
        

        if (Entreprise::all()->isNotEmpty()) {
            if(Entreprise::all()->last()->mail1){
                Mail::to(['email' => Entreprise::all()->last()->mail1])->send(new ContactDavys($request->all()));
            }        

            if(Entreprise::all()->last()->mail2){
                Mail::to(['email' => Entreprise::all()->last()->mail2])->send(new ContactDavys($request->all()));
            }
        }

         Alert::success('Succes', 'Demande envoyé avec succès !');
        return redirect(url()->current());
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OrderTranslation  $orderTranslation
     * @return \Illuminate\Http\Response
     */
    public function show(OrderTranslation $orderTranslation)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\OrderTranslation  $orderTranslation
     * @return \Illuminate\Http\Response
     */
    public function edit(OrderTranslation $orderTranslation)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OrderTranslation  $orderTranslation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrderTranslation $orderTranslation)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OrderTranslation  $orderTranslation
     * @return \Illuminate\Http\Response
     */
    public function destroy(OrderTranslation $orderTranslation)
    {
        //
    }
}
