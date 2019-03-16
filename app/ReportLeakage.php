<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ReportLeakage extends Model
{
    //
    protected $fillable = [
        'name',
        'cell',
        'email',
        'leakage_location',
        'location',
        'physical_address'
    ];
}
