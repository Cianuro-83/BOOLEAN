<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Appartment;
use App\Models\Service;
use App\Models\Sponsorship;
use Faker\Generator as Faker;

class AppartmentSeeder extends Seeder
{
    public function run(Faker $faker)
{
    $serviceIds = Service::all()->pluck('id')->all();
    $sponsorshipIds = Sponsorship::all()->pluck('id')->all();
  
    
    for ($i = 0; $i <= 20; $i++) {
        $newAppartment = new Appartment();
        $newAppartment->user_id = $faker->numberBetween(1, 10);
        $newAppartment->name = $faker->word();
        $newAppartment->rooms = $faker->randomDigit();
        $newAppartment->beds = $faker->randomDigit();
        $newAppartment->bathrooms = $faker->randomDigit();
        $newAppartment->mq = $faker->randomFloat(2, 1, 1000);
        $newAppartment->address = $faker->sentence(5);
        $newAppartment->lat = $faker->randomFloat(5, -180, 180);
        $newAppartment->lon = $faker->randomFloat(5, -180, 180);
        $newAppartment->visible = $faker->boolean();
      
        $newAppartment->save();

        
    $randomServiceIds = $faker->randomElements($serviceIds, rand(0,4));
    $newAppartment->services()->attach($randomServiceIds);

    $randomSponsorship = Sponsorship::find($faker->randomElement($sponsorshipIds));
    $start_date = now();
    $end_date = now()->addHours($randomSponsorship->duration);

    $newAppartment->sponsorships()->attach($randomSponsorship, [
        'start_date' => $start_date, 
        'end_date' => $end_date,
        'success' => $faker->boolean(),
    ]);
    

    }
}


}