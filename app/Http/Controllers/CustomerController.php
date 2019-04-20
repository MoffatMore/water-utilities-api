<?php

namespace App\Http\Controllers;

use App\Feedback;
use App\MeterReadings;
use App\ReportLeakage;
use App\RequestBill;
use Illuminate\Http\Request;
use App\MeterConnection;
use Illuminate\Support\Facades\Storage;
use thiagoalessio\TesseractOCR\TesseractOCR;
use Illuminate\Support\Facades\File;


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

    public function processImage(Request $request){
        if($request->photo){
            $image = $request->photo;
            $imageName = $request->file('photo')->getClientOriginalName();
            Storage::disk('public')->put($imageName,$image);
            exec("/Users/moffatmore/Desktop/tesseract/4.0.0_1/bin/tesseract $image $imageName");
        }
        $my_file = fopen($imageName.'.txt', 'r') or die("Unable to open file!");
        $contents = fread($my_file, filesize($imageName.'.txt'));
        $contents = preg_replace("/[^0-9]/", "", $contents);
        $meterReadings = MeterReadings::where([
            'meter_reading' => $imageName
        ])->first();

        $meter_reading = $meterReadings->meter_reading;
        $results = strcmp($contents, $meter_reading);
        if($results == 0)
        {
            $bills = MeterReadings::where([
                'meter_reading' => $imageName
                ])
                ->orderBy('id', 'DESC')
                ->get();
            $billCollection = collect($bills);
            $filtered = $billCollection->whereNotIn('meter_reading',[$meter_reading]);
            $filtered = $filtered->max();
            $billAmount = 0;
            if($filtered)
            {
                $meterReading = $filtered->meter_reading;
                $newMeterReading = $contents;
                $liters =  $newMeterReading - $meterReading;
                $liters = substr($liters,4,8);
                $billAmount = $liters * 0.55;
                $billAmount = round($billAmount, 2);
    
            }
            else{
                $newMeterReading = $contents;
                $liters = substr($newMeterReading,4,8);
                $billAmount = $liters * 0.55;
                $billAmount = round($billAmount, 2);
    
            }
            RequestBill::create([
                'customer_num'=> $meterReadings->customer_num,
                'utility_num'=>$meterReadings->utility_num,
                'bill_amount'=>$billAmount,
                'bill_status'=>0
                ]);
           
            return response()->json(['success'=>'Successfully verified meter readings.']);

        }else{
            MeterReadings::where([
                'customer_num'=> $meterReadings->customer_num,
                'utility_num'=>$meterReadings->utility_num
            ])->delete();
            return response()->json(['failed'=>"Meter reading mismatch! \n ". $meter_reading . ' is not equivalent '. $contents]);

        }
        
    }
    public function submitMeterReading(Request $request){

        MeterReadings::create([
            'customer_num'=>  $request->customer_num,
            'utility_num'=> $request->utility_num,
            'meter_reading'=> $request->meter_reading,
            'cell_no' => $request->cell_no,
            'meter_reading_file_upload'=> ''
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
            'email' => $request->email,
            'marital_status' => $request->marital_status,
            'dob' => $request->dob,
            'identity' => $request->identity,
            'identity_num' => $request->identity_num,
            'plot_location' => $request->plot_location,
            'postal_address' => $request->postal_address,
            'plot_no' => $request->plot_no,
            'cell' => $request->cell,
            'ward' => $request->ward,
        
        ]);
        return response()->json(['success'=>'Successfully requested meter connection!']);
    }

    public function getMeterReadings()
    {
        $meterReadings = MeterReadings::all();
        return response()->json(['meter_readings'=>$meterReadings]);
    }
    public function getLeakageReports()
    {
        $reports = ReportLeakage::all();
        return response()->json(['reports'=>$reports]);
    }
    public function calculateBill(Request $request)
    {
        $customer_num = $request->customer_num;
        $utility_num = $request->utility_num;
        return response()->json([
            'customer_num'=>$customer_num,
            'utility_num'=>$utility_num
            ]
        );
        
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
            $liters = substr($newMeterReading,4,8);
            $billAmount = $liters * 0.55;
            $billAmount = round($billAmount, 2);

        }
        RequestBill::create([
            'customer_num'=> $customer_num,
            'utility_num'=>$utility_num,
            'bill_amount'=>$billAmount,
            'bill_status'=>0
            ]);
        MeterReadings::where([
            'customer_num'=> $customer_num,
            'utility_num'=>$utility_num
        ])->delete();
        return response()->json(['success'=>'Successfully approved meter reading for customer '.$customer_num]);

    }
}
