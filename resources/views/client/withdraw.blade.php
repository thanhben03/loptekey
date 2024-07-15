@extends('layouts.master')
@section('content')

    <div class="container-fluid">
        @if(Session::has('msg'))
            <div class="alert alert-success">
                <p>{{ Session::get('msg') }}</p>
            </div>
        @endif
        <!-- start page title -->
        <div class="py-3 py-lg-4">
            <div class="row">
                <div class="col-lg-6">
                    <div class="alert alert-success">Chúc bạn một ngày tốt lành !</div>
                </div>

            </div>
        </div>
        <!-- end page title -->
        <form action="{{route('processWithdraw')}}" method="POST">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <h2>Rút tiền về ATM</h2>
                    <div class="form-group">
                        <label class="form-label" for="">Tên ngân hàng</label>
                        <input type="text" name="bank_name" placeholder="VD: Sacombank" class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="">STK</label>
                        <input type="text" name="stk" placeholder="VD: 1089009839" class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="">Chủ tài khoản</label>
                        <input type="text" name="fullname" placeholder="VD: Nguyen Van A" class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="">Số tiền (>= 20000đ)</label>
                        <input type="text" name="amount" placeholder="30000" class="form-control">
                    </div>

                    <button class="mt-2 btn btn-primary">Tạo</button>
                </div>
                <div class="col-md-6">
                    <h3>Lưu ý</h3>

                </div>
            </div>
        </form>
        <div class="row">
            <div class="col-md-6">
                <h2>Lịch sử rút</h2>
                <div class="">
                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Bank name</th>
                            <th scope="col">Stk</th>
                            <th scope="col">Full name</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($histories as $history)
                            <tr>
                                <th>{{$history->id}}</th>
                                <th>
                                    {{$history->bank_name}}
                                </th>
                                <th>
                                    {{$history->stk}}
                                </th>
                                <th>{{$history->fullname}}</th>
                                <th>{{$history->money}}</th>
                                <th>
                                    @if($history->status)
                                        Đã duyệt
                                    @else
                                        Chờ
                                    @endif
                                </th>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

    </div> <!-- container -->
@endsection

@push('custom-js')

    <script>

    </script>
@endpush
