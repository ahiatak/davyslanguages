<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Entreprise;
use App\Mail\ContactDavys;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Alert;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('contacts.index');
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
        $contact = $request->all();
        Contact::create($request->all());
        if (Entreprise::all()->isNotEmpty()) {
            if(Entreprise::all()->last()->mail1){
                Mail::to(['email' => Entreprise::all()->last()->mail1])->send(new ContactDavys($request->all()));
            }        

            if(Entreprise::all()->last()->mail2){
                Mail::to(['email' => Entreprise::all()->last()->mail2])->send(new ContactDavys($request->all()));
            }
        }
               
        Alert::success('Succes', 'Demande envoyé avec succès !');
        
        return redirect()->route('contacts.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function show(Contact $contact)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function edit(Contact $contact)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Contact $contact)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function destroy(Contact $contact)
    {
        //
    }
}
