<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MeterConnection extends Model
{
    //
    protected $fillables = [
        'water_type',
        'ownership',
        'meter_location',
        'name',
        'middle',
        'surname',
        'email',
        'customer_num',
        'utility_num',
        'marital_status',
        'dob',
        'identity',
        'identity_num',
        'plot_location',
        'postal_address',
        'tel_home',
        'tel_work',
        'plot_no',
        'cell',
        'ward',
        'location',
        'owner_name',
        'owner_middle',
        'owner_email',
        'owner_identity_no',
        'owner_identity',
        'owner_surname',
        'owner_tel',
        'owner_cell',
        'owner_fax',
        'lease'
    ];
}
