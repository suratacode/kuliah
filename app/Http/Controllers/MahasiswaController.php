<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MahasiswaController extends Controller

{

    public function index()
    {
        // menampilkan data dari database ke view
        // $mahasiswas = DB::table('mahasiswas')->get();
        // return $mahasiswas;

        // Menampilkan data menggunakan query builder
        $mahasiswas = Mahasiswa::paginate(10); //membuat pagination

        return view('index', [
            //Menampilkan data ke halaman web
            'mahasiswas' => $mahasiswas
        ]);
    }

    // Menampilkan halaman form
    public function create()
    {
        return view('create');
    }

     public function store(Request $request)
    {
        $data = [
            'name' => $request->name,
            'phone' => $request->phone,
            'message' => $request->message
        ];
// menyimpan data ke dalam database
        // DB::table('mahasiswas')->insert($data);
        // return $data;

        // Input/Save data menggunakan query builder
        Mahasiswa::create($data);
        return redirect('/mahasiswas'); //mengembalikan ke halaman mahasiswas kembali
    }

    public function edit($id)
    {
        $product = Mahasiswa::findOrfail($id);
        return view('edit', compact('mahasiswa'));
    }


    public function update(Request $request, $id )
    {

        $product = Mahasiswa::findOrfail($id);


        $data = [
            'name' => $request->name,
            'phone' => $request->phone,
            'message' => $request->message
        ];

        // update data 
        // DB::table('mahasiswas')
        //     ->where('id', $id)
        //     ->update($data);
        // return $data;

        $product->update($data);

        return redirect('/mahasiswas');
    }

    public function destroy($id)
    {

        $mahasiswa = Mahasiswa::findOrFail($id);
        
        // Menghapus data pada database
        // DB::table('mahasiswas')
        // ->where('id', $id)
        // ->delete();
        $mahasiswa->delete();

        return redirect('/mahasiswas');
    }
    
}
