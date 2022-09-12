@extends('layouts.app')

@section('title', 'Posts list')

@section('content')
<h1> User Posts </h1>

<table class="table  table-light table-striped table-bordered">
  <thead class="table-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Title</th>
      <th scope="col">Body</th>
      <th scope="col">Created At</th>
      <th scope="col">Posted by</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody class="table-group-divider">
    @if(isset($posts))
    @foreach($posts as $post)
    
    <tr>
      <th scope="row">{{ $post['id'] }}</th>
      <td>{{ $post['title'] }}</td>
      <td>{{ Str::limit($post['body'], 70, $end='.......'); }}</td>
      <td>{{ $post['created_at'] }}</td>
      <td>{{ $post->user['name'] }}</td>
      <td>
      <a href="{{ route('posts.show', ['id' =>  $post['id']]) }}"><button type="button" class="btn btn-info">View</button></a>
        @if(Auth::id() == $post->user['id'])
        <a href="{{ route('posts.edit', ['id' =>  $post['id']]) }}"><button type="button" class="btn btn-primary">Edit</button></a>
        <form style="display: inline" method="POST" action="{{ route('posts.delete', ['id' =>  $post['id']]) }}">
          @csrf
          @method('DELETE')
          <button type="submit" class="btn btn-danger">Delete</button>
        </form>
        @endif
      </td>
    </tr>
    @endforeach
    
  </tbody>
</table>
{{ $posts->links() }}
    @endif
@endsection