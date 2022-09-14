@extends('layouts.app')

@section('title', 'View user ')

@section('link2', 'active')

@section('content')

<p>User ID: {{ $user['id'] }}</p>
<p>Name: {{ $user['name'] }}</p>
<p>Email: {{ $user['email'] }}</p>
<p>Email Verified At: 
    @if(!is_null($user['email_verified_at']))
    {{ $user['email_verified_at'] }}
    @else
    {{ "Not Verified" }}
    @endif

</p>
<p>Posts:
    <ul>
    @foreach($user->posts() as $post)
    <li> 
    <a href="{{ route('posts.show',['id' => $post['id']]) }}">{{ $post['title'] }}</a>
    
    
    </li>
    @endforeach
    </ul>
</p>


@endsection