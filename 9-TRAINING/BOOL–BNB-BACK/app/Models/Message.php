<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Appartment;

class Message extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'lastname',
        'email',
        'text',
        'appartment_id'
    ];

    public function appartment() {

        return $this->belongsTo(Appartment::class);

    }
}