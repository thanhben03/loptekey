<section>
    <header>
        <h2 class="text-lg font-medium text-gray-900">
            {{ __('Change Avatar') }}
        </h2>
    </header>

    <form id="send-verification" method="post" action="{{ route('verification.send') }}">
        @csrf
    </form>

    <form method="post" action="{{ route('profile.update') }}" class="mt-6 space-y-6">
        @csrf
        @method('patch')

        <div>
            <img src="{{asset($user->avatar)}}}" class="rounded-circle" style="width: 150px;"
                 alt="Avatar" />
            <label class="form-label" for="customFile">Default file input example</label>
            <input type="file" class="form-control" name="avatar" id="customFile" />
        </div>


        <div class="flex items-center gap-4">
            <x-primary-button>{{ __('Save') }}</x-primary-button>

            @if (session('status') === 'profile-updated')
                <p
                    x-data="{ show: true }"
                    x-show="show"
                    x-transition
                    x-init="setTimeout(() => show = false, 2000)"
                    class="text-sm text-gray-600"
                >{{ __('Saved.') }}</p>
            @endif
        </div>
    </form>
</section>
