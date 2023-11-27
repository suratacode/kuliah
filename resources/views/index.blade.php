@extends('app')

@section('title', 'index')

@section('content')
<a href="/mahasiswas/create">Tambah</a>
<table class="table">
    <thead class="table-light" style="text-align: center;">
        <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Phone</th>
        <th scope="col">Message</th>
        <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($mahasiswas as $mahasiswa)
        <tr>
        <th scope="row" style="text-align: center;">{{$mahasiswa->id}}</th>
        <td>{{$mahasiswa->name}}</td>
        <td>{{$mahasiswa->phone}}</td>
        <td>{{$mahasiswa->message}}</td>
        <td>
            <a href="/mahasiswas/{{ $mahasiswa->id}}/edit">Edit</a> | 
            <a href="/mahasiswas/{{ $mahasiswa->id}}" onclick="event.preventDefault();
                document.getElementById('delete-form{{ $mahasiswa->id }}').submit();">Delete</a>

            <form action="/mahasiswas/{{ $mahasiswa->id}}" method="POST" id="delete-form-{{ $mahasiswa->id }}"  style="display: none;">
            @method('DELETE') @csrf
            </form>

            
        </td>
        </tr>
        @endforeach
    </tbody>
</table>
<!-- memanggil perintah pagination -->
{{ $mahasiswas->links()}}
@endsection

