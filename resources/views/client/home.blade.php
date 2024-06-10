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
                <h2>Mua key</h2>
                <div class="">
                    <select class="form-control" name="type" id="key_type">
                        @foreach($keyType as $key)
                            <option value="{{$key->id}}">{{$key->name_type}} - Giá: {{$key->price}}đ</option>
                        @endforeach
                    </select>
                    <button type="button" onclick="buyKey()" class="btn btn-success mt-4">Mua</button>
                </div>
            </div>
            <div class="col-6">
                <h3>Lưu ý</h3>
                <div class="">
                    <div class="alert alert-warning">
                        Mỗi key chỉ sử dụng cho một thiết bị duy nhất, key sẽ bắt đầu tính thời gian khi key được kích hoạt trên app
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-6">
                <h2>Key mua gần đây</h2>
            </div>
        </div>

        <div class="row mt-4">

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div id="basic-datatable_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                            <div class="row dt-row">
                                <div class="col-sm-12">
                                    <table id="basic-datatable" class="table dt-responsive nowrap w-100 dataTable no-footer dtr-inline collapsed" aria-describedby="basic-datatable_info" style="width: 1192px;">
                                        <thead>
                                        <tr>
                                            <th class="sorting sorting_asc" tabindex="0" aria-controls="basic-datatable" rowspan="1" colspan="1" style="width: 191px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="basic-datatable" rowspan="1" colspan="1" style="width: 288px;" aria-label="Position: activate to sort column ascending">Loại key</th>
                                            <th class="sorting" tabindex="0" aria-controls="basic-datatable" rowspan="1" colspan="1" style="width: 138px;" aria-label="Office: activate to sort column ascending">Giá</th>
                                            <th class="sorting" tabindex="0" aria-controls="basic-datatable" rowspan="1" colspan="1" style="width: 70px;" aria-label="Age: activate to sort column ascending">Trạng thái</th>
                                            <th class="sorting" tabindex="0" aria-controls="basic-datatable" rowspan="1" colspan="1" style="width: 135px;" aria-label="Start date: activate to sort column ascending">Ngày hết hạn</th>
                                            <th class="sorting dtr-hidden" tabindex="0" aria-controls="basic-datatable" rowspan="1" colspan="1" style="width: 118px; display: none;" aria-label="Salary: activate to sort column ascending">Ngày mua</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($historyBuy as $item)
                                                <tr class="odd">
                                                    <td class="dtr-control sorting_1" tabindex="0">{{$item->key->name}}</td>
                                                    <td>{{$item->key->keyType->name_type}}</td>
                                                    <td>{{$item->key->keyType->price}}</td>
                                                    <td>
                                                        @if($item->key->status == 2)
                                                            Đã kích hoạt
                                                        @else 
                                                            Chưa kích hoạt
                                                        @endif
                                                    </td>
                                                    <td>{{$item->key->expired}}</td>
                                                    <td>{{$item->created_at}}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end card body-->
                </div>
                <!-- end card -->
            </div>
            <!-- end col-->
        </div>

    </div> <!-- container -->
@endsection

@push('custom-js')
    <script>
        $("#basic-datatable").DataTable()

        async function buyKey() {
            const confrim = await Swal.fire({
                title: "Nhắc nhở !",
                text: "Bạn có chắc chắn mua key này không ?",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "OK"
            })
            if (confrim.isConfirmed) {
                await $.ajax({
                    url: "{{route('buyKey')}}",
                    dataType: "json",
                    method: "POST",
                    data: {
                        "_token": "{{ csrf_token() }}",
                        "key_id": $("#key_type").val(),
                    },
                    success: function (res) {
                        Swal.fire({
                            title: res.data.msg,
                            html: `Bạn đã mua thành công ${res.data.name_type} : <b>${res.data.name}</b>`,
                            icon: "success"
                        });
                    },
                    error: function (xhr, status, error) {
                        console.log(error);
                        Swal.fire({
                            title: "Error !",
                            html: `${xhr.responseJSON.msg}`,
                            icon: "error"
                        });
                    }
                })
            }
        }
    </script>
@endpush
