<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Message;
use Faker\Generator as Faker;

class MessageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
       

        for($i = 0; $i <= 20; $i++) {

            $newMessage = new Message();

            $newMessage->appartment_id = $faker->numberBetween(1,20);
            $newMessage->name = $faker->firstName();
            $newMessage->lastname = $faker->lastName();
            $newMessage->email = $faker->email();
            $newMessage->text = $faker->paragraph(2);
            $newMessage->save();

        }
    }
}