@extends('layouts.master')
@section('content')

    <div class="container-fluid">

        <!-- start page title -->
        <div class="py-3 py-lg-4">
            <div class="row">
                <div class="col-lg-6">
                    <div class="alert alert-success">Chúc bạn một ngày tốt lành !</div>
                </div>

            </div>
        </div>
        <!-- end page title -->
        <div class="row">
            <div class="col-6">
                <h2>Bảng xếp hạng</h2>
                <div class="">
                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">Top</th>
                            <th scope="col">Username</th>
                            <th scope="col">Post</th>
                            <th scope="col">Like</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($tops as $key => $top)
                            <tr>
                                <th>{{++$key}}</th>
                                <th>
                                    {{$top->post->user_post[0]->user->name}}
                                </th>
                                <th>
                                    {{$top->post->title}}
                                </th>
                                <th>{{$top->like_count}}</th>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
            <div class="col-6">
                <h3>Lưu ý</h3>
                <div class="">
                    <p>
                        Thưởng tháng này:
                        {{$total_reward}}
                    </p>
                    <p>Số tiền trên 1 like:
                        {{$price_per_like}}
                    </p>
                    <p>Tiền thưởng của bạn: {{$myReward}}</p>
                    @if(Session::has('msg'))
                        <div class="alert alert-success">
                                <p>{{ Session::get('msg') }}</p>
                        </div>
                    @endif
                    <a href="{{route('sendMoneyAward')}}" class="btn btn-primary">
                        Nhận thưởng
                    </a>
                </div>
            </div>
        </div>


    </div> <!-- container -->
@endsection

@push('custom-js')

    <script>

    </script>
@endpush
