@extends('layouts.app')

@section('link', 'active')

@section('title', 'Create Post')

@section('content')
<form method="POST" action="{{ route('posts.store') }}" enctype="multipart/form-data">
    @csrf
  <div class="mb-3">
    <label for="title" class="form-label">Title</label>
    <input type="text" name="title" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="body" class="form-label">Body</label>
    <textarea name='body' class="form-control"></textarea>
  </div>
  <div class="input-group mb-3">
    <input name="img" type="file" class="form-control" id="inputGroupFile02">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
    
</form>
@endsection