<?php

namespace App\Http\Controllers;

use App\Feedback;
use App\MeterReadings;
use App\ReportLeakage;
use App\RequestBill;
use Illuminate\Http\Request;
use App\MeterConnection;

class CustomerController extends Controller
{
    //
    public const BILL_PER_LITER = 0.55;

    public function __construct()
    {

    }
    public function submitLeakage(Request $request){

        ReportLeakage::create([
            'name'=>  $request->name,
            'cell'=> $request->cell,
            'email'=> $request->email,
            'location' => $request->location,
            'leakage_location'=> $request->leakage_location,
            'physical_address'=> $request->physical_address
        ]);
        return response()->json(['success'=>'Successfully reported meter leakage!']);
    }

    public function submitMeterReading(Request $request){

        MeterReadings::create([
            'customer_num'=>  $request->customer_num,
            'utility_num'=> $request->utility_num,
            'meter_reading'=> $request->meter_reading,
            'cell_no' => $request->cell_no,
            'meter_reading_file_upload'=> $request->photo
        ]);

        return response()->json(['success'=>'Successfully submitted meter reading!']);
    }

    public function requestBill(Request $request)
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
        return response()->json(['fail'=>'No record of bill!']);
    }

    public function payBill(Request $request){
        return $request;
    }

    public function getFeedback(Request $request)
    {
        $feedback = Feedback::where([
            'customer_id'=> $request->customer_id,
            'utility_num'=>$request->utility_num
        ])->get();

        if ($feedback){
            return response()->json(['success'=>$feedback]);
        }
        return response()->json(['fail'=>'No feedback at the moment']);

    }

    public function newConnection(Request $request)
    {
        MeterConnection::create([
            'water_type'=> $request->water_type,
            'ownership' => $request->ownership,
            'meter_location'=> $request->meter_location,
            'name' => $request->name,
            'middle' => $request->middle,
            'surname' => $request->surname,
            'customer_num' => $request->customer_num,
            'email' => $request->email,
            'utility_num' => $request->utility_num,
            'marital_status' => $request->marital_status,
            'dob' => $request->dob,
            'identity' => $request->identity,
            'identity_num' => $request->identity_num,
            'plot_location' => $request->plot_location,
            'postal_address' => $request->postal_address,
            'tel_home' => $request->tel_home,
            'tel_work' => $request->tel_work,
            'plot_no' => $request->plot_no,
            'cell' => $request->cell,
            'ward' => $request->ward,
            'location' => $request->location,
            'owner_name' => $request->owner_name,
            'owner_middle' => $request->owner_middle,
            'owner_email' => $request->owner_email,
            'owner_identity_no' => $request->owner_identity_no,
            'owner_identity' => $request->owner_identity,
            'owner_surname' => $request->owner_surname,
            'owner_tel' => $request->owner_tel,
            'owner_cell' => $request->owner_cell,
            'owner_fax' => $request->owner_fax,
            'lease' => $request->lease,
        ]);
        return response()->json(['success'=>'Successfully requested meter connection!']);
    }

    public function getMeterReadings()
    {
        $meterReadings = MeterReadings::all();
        return response()->json(['meter_readings'=>$meterReadings]);
    }

    public function calculateBill(Request $request)
    {
        $customer_num = $request->customer_num;
        $utility_num = $request->utility_num;
        $bills = MeterReadings::where([
            'customer_num'=> $customer_num,
            'utility_num'=>$utility_num
            ])
            ->orderBy('id', 'DESC')
            ->get();
        $billCollection = collect($bills);
        $filtered = $billCollection->whereNotIn('meter_reading',[$request->meter_reading]);
        $filtered = $filtered->max();
        $billAmount = 0;
        if($filtered)
        {
            $meterReading = $filtered->meter_reading;
            $newMeterReading = $request->meter_reading;
            $liters =  $newMeterReading - $meterReading;
            $liters = substr($liters,4,8);
            $billAmount = $liters * 0.55;
            $billAmount = round($billAmount, 2);

        }
        else{
            $newMeterReading = $request->meter_reading;
            $liters =  $newMeterReading;
            $liters = substr($liters,4,8);
            $billAmount = $liters * 0.55;
            $billAmount = round($billAmount, 2);

        }
        RequestBill::create([
            'customer_num'=> $customer_num,
            'utility_num'=>$utility_num,
            'bill_amount'=>$billAmount,
            'bill_status'=>0
            ]);
        MeterReadings::find($request->id)->delete();
        return response()->json(['success'=>'Successfully approved meter reading for customer '.$customer_num]);

    }
}
