<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PayBill extends Model
{
    //

    protected $fillable = [
        'customer_num',
        'utility_num',
        'amount',
    ];

}
