<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ContactDavys extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $client;

    public function __construct($client)
    {
        $this->client = [
            'name' => $client['name'],
            'email' => $client['email'], 
            'phone' => $client['phone'], 
            'message' => $client['message']
        ];
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.contact')->with([
            'name' => $this->client['name'],
            'email' => $this->client['email'], 
            'phone' => $this->client['phone'], 
            'message' => $this->client['message'], 
        ]);
    }
}
