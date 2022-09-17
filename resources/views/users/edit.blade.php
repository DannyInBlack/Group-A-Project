@section('title', 'View user ')

<x-app-layout>
    <x-slot name="slot">
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <form action="{{route('users.update',['id'=>$user['id']])}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            @if($user['avatar'])
                            <img style="width: 200px" src="{{ Storage::disk('public')->url($user['avatar'])}}">
                            @endif
                            <div class="mb-3">
                                <label for="avatar" class="form-label"> Change your avatar</label>
                                <input type="file" name='avatar' value="{{$user['avatar']}}">
                            </div>
                            <div class="mb-3">
                                <label for="username" class="form-label"> Change your username</label>
                                <input type="text" name="username" value="{{$user['username']}}">
                            </div>
                            <div class="mb-3">
                                <label for="bio" class="form-label"> Change your bio</label>
                                <input type="text" name="bio" value="{{$user['bio']}}">
                            </div>
                            <div class="mb-3">
                                <label for="gender" class="form-label"> Change your gender</label>
                                <input type="text" name="gender" value="{{$user['gender']}}">
                            </div>
                            <input type="hidden" name="id" value="{{$user['id']}}">
                            <div class="mb-3">
                                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Change</button>
                            </div>
                        </form>
                        <a href="{{route('users.show',['id'=>Auth::id()])}}"><button class="bg-black hover:bg-black-700 text-white font-bold py-2 px-4 rounded">cancel</button></a>
                    </div>
                </div>
            </div>
        </div>
    </x-slot>
</x-app-layout>