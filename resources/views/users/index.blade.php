@extends('layouts.app')

@section('title', 'users list')

@section('content')
<h1> Users </h1>

<table class="table  table-light table-striped table-bordered">
  <thead class="table-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Number of Posts</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody class="table-group-divider">
    @if(isset($users))
    @foreach($users as $user)
    
    <tr>
      <th scope="row">{{ $user['id'] }}</th>
      <td>{{ $user['name'] }}</td>
      <td>{{ $user['email'] }}</td>
      @php($count = 0)
      @foreach($user->posts as $post)
      @php($count+=1)
      
      @endforeach
      <td>{{ $count }}</td>
      <td>
      <a href="{{ route('users.show', ['id' =>  $user['id']]) }}"><button type="button" class="btn btn-info">View</button></a>
      </td>
    </tr>
    @endforeach
    
  </tbody>
</table>
{{ $users->links() }}
    @endif
@endsection