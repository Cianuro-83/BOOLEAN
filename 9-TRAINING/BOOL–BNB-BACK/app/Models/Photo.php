<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Appartment;

class Photo extends Model
{
    use HasFactory;

    protected $fillable = [
    'path',
    'name',
    'extension',
];

    public function appartment()
    {
        return $this->belongsTo(Appartment::class);
    }
}