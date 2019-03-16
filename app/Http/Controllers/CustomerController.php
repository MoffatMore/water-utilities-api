<?php

namespace App\Http\Controllers;

use App\MeterReadings;
use App\ReportLeakage;
use App\RequestBill;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    //

    public function submit_leakage(Request $request){

        ReportLeakage::create([
            'name'=>  $request->name,
            'cell'=> $request->cell,
            'email'=> $request->email,
            'location' => $request->location,
            'leakage_location'=> $request->leakage_location,
            'physical_address'=> $request->physical_address
        ]);
        return response()->json(['success','Successfully reported meter leakage!']);
    }

    public function submit_meter_reading(Request $request){

//        if ($request->hasFile('photo'))
//        {
//            return response()->json(['success'=>'Successfully submitted meter reading!']);
//        }
        MeterReadings::create([
            'customer_num'=>  $request->customer_num,
            'utility_num'=> $request->utility_num,
            'meter_reading'=> $request->meter_reading,
            'cell_no' => $request->cell_no,
            'meter_reading_file_upload'=> $request->photo
        ]);

        return response()->json(['success'=>'Successfully submitted meter reading!']);
    }

    public function request_bill(Request $request)
    {
        $customer_num = $request->customer_num;
        $utility_num =  $request->utility_num;

        $bill = RequestBill::where([
            'customer_num'=>$customer_num,
            'utility_num' => $utility_num
        ])->get();

        if ($bill){
            return response()->json(['success'=>$bill]);
        }
        else{
            return response()->json(['fail'=>'No record of bill!']);
        }
    }

    public function pay_bill(Request $request){

    }







}
