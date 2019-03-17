<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    //
    public $fillable = [
        'customer_id',
        'utility_num',
        'leakage_id',
        'description'
    ];

    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }

    public function leakage()
    {
        return $this->hasOne('App\ReportLeakage');
    }
}
