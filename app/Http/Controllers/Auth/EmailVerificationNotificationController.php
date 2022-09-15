<?php

namespace App\Http\Controllers\Auth;


use Illuminate\contracts\Queue\ShouldQueue;
use App\Http\Controllers\Controller;
use App\Jobs\ProcessEmails;
use App\Providers\RouteServiceProvider;
use Illuminate\Bus\Queueable;
use Illuminate\Http\Request;


class EmailVerificationNotificationController extends Controller implements ShouldQueue
{
    /**
     * Send a new email verification notification.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */

    
    public function store(Request $request)
    {
        if ($request->user()->hasVerifiedEmail()) {
            return redirect()->intended(RouteServiceProvider::HOME);
        }

        
        
        $request->user()->sendEmailVerificationNotification();
        
        dispatch(new ProcessEmails())->delay(1);

        return back()->with('status', 'verification-link-sent');
    }
}
