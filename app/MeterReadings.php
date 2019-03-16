<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MeterReadings extends Model
{
    //
    protected $fillable = [
        'customer_num',
        'utility_num',
        'meter_reading',
        'cell_no',
        'meter_reading_file_upload',
    ];
}
