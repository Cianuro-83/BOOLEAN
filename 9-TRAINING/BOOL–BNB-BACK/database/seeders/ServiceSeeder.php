<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Service;
use App\Models\Appartment;  
use Faker\Generator as Faker;

class ServiceSeeder extends Seeder
{
    public function run(Faker $faker)
    {
        
        $services = ['Piscina', 'Ascensore', 'Fibra', 'Box auto'];

        foreach ($services as $serviceName) {
           
            $newService = new Service();
            $newService->name = $serviceName;
            $newService->save();

          

        }
    }
}