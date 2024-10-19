<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\BroadcastMessage;

class NewUserNotification extends Notification implements ShouldQueue
{
    use Queueable;

    protected $user;

    public function __construct($user)
    {
        $this->user = $user;
    }

    public function via($notifiable)
    {
        return ['broadcast', 'database'];
    }

    public function toBroadcast($notifiable)
    {
        return new BroadcastMessage([
            'message' => "New user registered: {$this->user->name} ({$this->user->email}) at " . now()->format('H:i A')
        ]);
    }

    public function toArray($notifiable)
    {
        return [
            'message' => "New user registered: {$this->user->name} ({$this->user->email}) at " . now()->format('H:i A'),
        ];
    }
}
