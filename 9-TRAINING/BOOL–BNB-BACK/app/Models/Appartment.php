<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Message;
use App\Models\Visit;
use App\Models\Sponsorship;
use App\Models\Service;
use App\Models\Photo;

class Appartment extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'rooms',
        'beds',
        'bathrooms',
        'mq',
        'address',
        'lat',
        'lon',
        'visible',
        'user_id'
    ];

    public function user() {

        return $this->belongsTo(User::class);

    }

    public function messages() {

        return $this->hasMany(Message::class);

    }

    public function visits() {

        return $this->hasMany(Visit::class);

    }

    public function sponsorships() {

        return $this->belongsToMany(Sponsorship::class);

    }

    public function services() {

        return $this->belongsToMany(Service::class);

    }
    public function photos()
{
    return $this->hasMany(Photo::class);
}

}