<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Config;

class TomTomController extends Controller
{
    private $base_url = "https://api.tomtom.com/search/2/geocode";

    public function getGeoData($address)
    {
        $apiKey = Config::get('app.tomtom_api_key');
        $response = Http::withOptions(['verify' => false])->get("$this->base_url/$address.json", [
            "storeResult" => false,
            "limit" => 5,
            "countrySet" => "it",
            "key" => $apiKey
        ]);

        $preparedLocations = $this->prepareLocations($response->json('results'));

        return response()->json($preparedLocations);
    }

    private function prepareLocations($locations)
    {
        $preparedLocations = [];

        if (is_array($locations) && count($locations) > 0) {
            foreach ($locations as $location) {
                $preparedLocation = [
                    'address' => $location['address'],
                    'position' => $location['position']
                ];
                array_push($preparedLocations, $preparedLocation);
            }
        }

        return $preparedLocations;
    }
}