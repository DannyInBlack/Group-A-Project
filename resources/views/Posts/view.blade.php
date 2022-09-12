@extends('layouts.app')

@section('title', 'Post '.$post['title'])

@section('link2', 'active')

@section('content')

@if($post['img'])

<p><img style="width: 300px;" src="{{ Storage::disk('public')->url($post['img']); }}"></p>

@endif
<p>Created At: {{ $post['created_at'] }} <br>
Edited At: {{ $post['updated_at'] }}</p>

<p>Title: {{ $post['title'] }} <br>
Author: <a href="{{ route('users.show',['id' => $post->user['id']]) }}"> {{ $post->user['name'] }} </a></p>
<p>Body: {{ $post['body'] }}</p>

<p><a href="{{ route('posts.index') }}"><button type="button" class="btn btn-primary">Go Back</button></a></p>


@endsection