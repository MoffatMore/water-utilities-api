<?php
/**
 * Created by PhpStorm.
 * User: moffatmore
 * Date: 15/03/19
 * Time: 00:49
 */

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
    /**
     * Create user
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] password
     * @param  [string] password_confirmation
     * @return [string] message
     */
    public function signup(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed'
        ]);

        if ($validator->fails())
        {
            return response()->json(['error'=>$validator->errors()],401);
        }

        User::create([
            'name'=> $request->name,
            'surname'=> $request->surname,
            'email'=> $request->email,
            'password'=> Hash::make($request->password),
            'customer_num'=> $request->customer_num,
            'utility_num'=> $request->utility_num,
            'plot_num'=> $request->plot_num,
            'plot_location'=> $request->plot_location,
            'identity'=> $request->identity,
            'identity_num'=> $request->identity_num,
            'postal_address'=> $request->postal_address,
            'mode'=>0,
            'cell'=> $request->cell
        ]);

        return response()->json([
            'success' => 'Successfully created user!'
        ], 201);
    }

    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
            'remember_me' => 'boolean'
        ]);

        $credentials = request(['email', 'password']);

        if(!Auth::attempt($credentials))
            return response()->json([
                'fail'=>'Incorrect credentials!'
            ]);

        $user = $request->user();

        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;

        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);

        $token->save();

        return response()->json([
            'success'=>'Successfully logged in!',
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'mode'=>$user->mode,
            'customer_num'=>$user->customer_num,
            'utility_num'=>$user->utility_num,
            'cell'=>$user->cell,
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
        ]);
    }

    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();

        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }

    /**
     * Get the authenticated User
     *
     * @return [json] user object
     */
    public function user(Request $request)
    {
        return response()->json($request->user());
    }

    public function userDetails(Request $request)
    {
        return response()->json(User::all());
    }
}
