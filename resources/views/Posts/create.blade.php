
<x-app-layout>
  <x-slot name="header">
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
          {{ "Create Post" }}
      </h2>
  </x-slot>

  <div class="py-12">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
        <div class="p-6 bg-white border-b border-gray-200">
          <form method="POST" action="{{ route('posts.store') }}" enctype="multipart/form-data">
                    @csrf
                  <div class="mb-3">
                    <label for="body" class="form-label">Body</label>
                    <textarea name='body' class="form-control"></textarea>
                  </div>
                  <div class="input-group mb-3">
                    <input name="img" type="file" class="form-control" id="inputGroupFile02">
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</x-app-layout>
