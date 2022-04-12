<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class System_Controller extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function users()
    {
        $data = Model('Movement')::get();
        return $data;
    }

    public function inicia()
    {
        $users = [
            ['id' => 1, 'name' => 'João',],
            ['id' => 2, 'name' => 'José',],
            ['id' => 3, 'name' => 'Paulo',],
        ];

        foreach ($users as $d) {
            Model('Users')::create($d);
        }

        $movement = [
            ['id' => 1, 'name' => 'Deadlift'],
            ['id' => 2, 'name' => 'Back Squat'],
            ['id' => 3, 'name' => 'Bench Press'],
        ];

        foreach ($movement as $d) {
            Model('Movement')::create($d);
        }

        $personal_record = [
            ['id' => 1, 'user_id' => 1, 'movement_id' => 1, 'value' => 100.00, 'date' => '2021-01-01 00:00:00.0'],
            ['id' => 2, 'user_id' => 1, 'movement_id' => 1, 'value' => 180.00, 'date' => '2021-01-02 00:00:00.0'],
            ['id' => 3, 'user_id' => 1, 'movement_id' => 1, 'value' => 150.00, 'date' => '2021-01-03 00:00:00.0'],
            ['id' => 4, 'user_id' => 1, 'movement_id' => 1, 'value' => 110.00, 'date' => '2021-01-04 00:00:00.0'],
            ['id' => 5, 'user_id' => 2, 'movement_id' => 1, 'value' => 110.00, 'date' => '2021-01-04 00:00:00.0'],
            ['id' => 6, 'user_id' => 2, 'movement_id' => 1, 'value' => 140.00, 'date' => '2021-01-05 00:00:00.0'],
            ['id' => 7, 'user_id' => 2, 'movement_id' => 1, 'value' => 190.00, 'date' => '2021-01-06 00:00:00.0'],
            ['id' => 8, 'user_id' => 3, 'movement_id' => 1, 'value' => 170.00, 'date' => '2021-01-01 00:00:00.0'],
            ['id' => 9, 'user_id' => 3, 'movement_id' => 1, 'value' => 120.00, 'date' => '2021-01-02 00:00:00.0'],
            ['id' => 10, 'user_id' => 3, 'movement_id' => 1, 'value' => 130.00, 'date' => '2021-01-03 00:00:00.0'],
            ['id' => 11, 'user_id' => 1, 'movement_id' => 2, 'value' => 130.00, 'date' => '2021-01-03 00:00:00.0'],
            ['id' => 12, 'user_id' => 2, 'movement_id' => 2, 'value' => 130.00, 'date' => '2021-01-03 00:00:00.0'],
            ['id' => 13, 'user_id' => 3, 'movement_id' => 2, 'value' => 125.00, 'date' => '2021-01-03 00:00:00.0'],
            ['id' => 14, 'user_id' => 1, 'movement_id' => 2, 'value' => 110.00, 'date' => '2021-01-05 00:00:00.0'],
            ['id' => 15, 'user_id' => 1, 'movement_id' => 2, 'value' => 100.00, 'date' => '2021-01-01 00:00:00.0'],
            ['id' => 16, 'user_id' => 2, 'movement_id' => 2, 'value' => 120.00, 'date' => '2021-01-01 00:00:00.0'],
            ['id' => 17, 'user_id' => 3, 'movement_id' => 2, 'value' => 120.00, 'date' => '2021-01-01 00:00:00.0'],
        ];

        foreach ($personal_record as $d) {
            Model('PersonalRecord')::create($d);
        }

        return redirect('/');
    }
}
