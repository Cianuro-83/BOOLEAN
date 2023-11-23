<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Appartment;
use App\Models\Visit;
use Faker\Generator as Faker;

class VisitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        $appartments = Appartment::all();


        foreach ($appartments as $appartment) {

            $newVisit = new Visit();
            $newVisit->appartment_id = $faker->numberBetween(1,20);
            $newVisit->ip = $faker->ipv6();
            $newVisit->save();

        }
        
    }
}