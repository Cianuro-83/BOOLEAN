<?php

namespace Database\Seeders;
use App\Models\Train;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Generator as Faker;

class TrainsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        for($i=0; $i<100; $i++){

            $dep_time = ['2023-04-13 08:45:00','2023-04-13 10:12:00', '2023-04-13 14:15:00', '2023-04-13 16:45:00', '2023-04-13 17:00:00'];
            $arr_time = ['2023-04-13 18:45:00','2023-04-13 20:12:00', '2023-04-13 21:15:00', '2023-04-13 23:45:00', '2023-04-14 17:00:00'];

            $new_train= new Train();
            $new_train->company=$faker->word();
            $new_train->departure_from=$faker->city();
            $new_train->arrive_to=$faker->city();
            $new_train->departure_time=$faker->randomElement($dep_time);
            $new_train->arrive_time=$faker->randomElement($arr_time);
            $new_train->train_code=$faker->bothify('??-####-??');;
            $new_train->number_of_carriage=$faker->numberBetween(1, 51);
            $new_train->delayed=$faker->boolean();
            $new_train->soppressed=$faker->boolean();

            $new_train->save();


        }
     
    }
}