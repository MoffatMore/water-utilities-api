<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MeterConnection extends Model
{
    //
    protected $fillable = [
        'water_type',
        'ownership',
        'meter_location',
        'name',
        'middle',
        'surname',
        'email',
        'marital_status',
        'dob',
        'identity',
        'identity_num',
        'plot_location',
        'postal_address',
        'plot_no',
        'cell',
        'ward'
    ];
}
