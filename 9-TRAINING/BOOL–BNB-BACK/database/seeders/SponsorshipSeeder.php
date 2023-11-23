<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Appartment;
use App\Models\Sponsorship;
use Faker\Generator as Faker;

class SponsorshipSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        $sponsorships =[
            [
                'name' => 'Bronze',
                'price' => 2.99,
                'duration' => 24,
            ],
            [
                'name' => 'Gold',
                'price' => 5.99,
                'duration' => 72,
            ],
            [
                'name' => 'Diamond',
                'price' => 9.99,
                'duration' => 144,
            ],
        ];

        foreach($sponsorships as $package){

            $sponsorship = new Sponsorship();
            $sponsorship->name = $package['name'];
            $sponsorship->price = $package['price'];
            $sponsorship->duration = $package['duration'];

            $sponsorship->save();
        }
    }
}