<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Generator as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
         \App\Models\User::factory(10)->create([
            'birth_date' => function () use ($faker) {
                return $faker->date();
            },
         ]);
         \App\Models\User::create([
            'name' => 'admin',
            'lastname' => 'admin',
            'email' => 'admin@admin.com',
            'birth_date' => $faker->date(),
            'email_verified_at' => now(),
            'password' => bcrypt('booleaner'), 
            'remember_token' => \Illuminate\Support\Str::random(10),
        ]);

         $this->call([
            ServiceSeeder::class,
            SponsorshipSeeder::class,
            AppartmentSeeder::class,
            MessageSeeder::class,
            VisitSeeder::class,
         ]);
    }
}