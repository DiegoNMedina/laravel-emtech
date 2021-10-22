<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ciudad extends Model
{
    use HasFactory;

    /* Relación */
    public function paquetes() {

        return $this->hasMany(Paquete::class);
    }
}
