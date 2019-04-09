<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RequestBill extends Model
{
    //
    public $table = 'bill_enquiries';

    protected $fillable = [
        'customer_num',
        'utility_num',
        'bill_amount',
        'bill_status'
    ];
}
