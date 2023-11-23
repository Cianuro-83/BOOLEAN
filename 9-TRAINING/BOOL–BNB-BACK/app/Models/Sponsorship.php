<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Appartment;

class Sponsorship extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'price',
        'duration',
    ];

    public function appartments() {

        return $this->belongsToMany(Appartment::class);

    }
}