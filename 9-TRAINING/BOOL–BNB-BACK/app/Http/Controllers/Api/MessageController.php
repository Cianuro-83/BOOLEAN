<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Message;
use App\Models\Appartment;
use App\Models\User;
use GrahamCampbell\ResultType\Success;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;


class MessageController extends Controller
{
    public function store(Request $request) {
        $data = $request->all();

        $validator = Validator::make($data, [
            'name'=> 'required|string|min:2|max:50',
            'lastname'=> 'required|string|min:2|max:50',
            'email'=> 'required|email|min:5|max:50',
            'text'=> 'required|string|min:5|max:3000',
            'appartment_id'=> 'required|integer',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors()
            ]);
        } 

        $message = new Message();
        $message->fill($data);
        $message->save();

        return response()->json(
            [
                'success' => true,
            ]
        );
    }
}