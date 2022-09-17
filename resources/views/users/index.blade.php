

@section('title', 'users list')

<x-app-layout>
  <x-slot name="slot">
    <div class="py-4">
      <div class="max-w-3xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
      <div class="p-7 bg-white border-b border-gray-200">
    {{-- <h2> search results </h2> --}}

    <table class="table">
      <thead>
        <tr>
          @if(isset($body))
          <th scope="col">Search results for {{ $body }}</th>
          @else
          <th scope="col">Users</th>
          @endif
        </tr>
      </thead>
      <tbody >
        @foreach($users as $user)
        <tr>
            <td>
              <img style="border-radius: 50%;display:inline;margin:10px;" src="{{ Storage::disk('public')->url($user['avatar'])}}" width="50px" height="50px">
              <a style="text-decoration: none" href="{{route('users.show',['id'=>$user['id']])}}"> {{ $user['username'] }}</a>
            </td>
        </tr>
        @endforeach
      </tbody>
    </table>
    {{-- {{ $users->links() }} --}}
        
      </div>
      </div>
      </div>
    </div>
    

  </x-slot>
</x-app-layout>