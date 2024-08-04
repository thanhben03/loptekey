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
            <form id="formCreatePayment" action="{{route('createPaymentLink')}}" method="POST">
                @csrf
                <div class="col-6">
                    <h2>Nạp tiền</h2>
                    <div class="form-group">
                        <label for="amount">Số tiền cần nạp</label>
                        <input id="amount" name="amount" class="form-control mb-2" type="number" placeholder="Min: {{$minCharge}}">
                    </div>
                    <div class="">
                        <button class="btn btn-info" id="btn-charge">
                            Nạp
                        </button>
                    </div>
                </div>
            </form>
            <div class="col-6">
                <h3>Lưu ý</h3>

            </div>
        </div>
        <div class="row mt-4">
            <div class="col-6">
                <h2>Lich sử nạp</h2>
            </div>
        </div>

        <div class="row mt-4">

            <div class="col-12">
                <div class="card">
                    <div class="card-body overflow-auto">
                        <div id="basic-datatable_wrapper" class="">
                            <div class="row dt-row">
                                <div class="col-sm-12">
                                    <table id="history-post-datatable" class="table dt-responsive nowrap w-100 dataTable no-footer dtr-inline collapsed" aria-describedby="basic-datatable_info">
                                        <thead>
                                        <tr>
                                            <th>Order Code</th>
                                            <th>Amount</th>
                                            <th>Content</th>
                                            <th>Status</th>
                                            <th>Created At</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($charges as $item)
                                            <tr class="odd">
                                                <td class="" tabindex="0">{{$item->id}}</td>
                                                <td>{{$item->amount}}</td>
                                                <td>{{$item->content}}</td>
                                                <td>
                                                    @if($item->status)
                                                        Đã duyệt
                                                    @else
                                                        Chờ duyệt
                                                    @endif
                                                </td>
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
        // $(function () {
        //     showModal()
        // })
        $("#basic-datatable").DataTable()

        const formCreatePayment = $("#formCreatePayment");
        formCreatePayment.submit(function (e) {
            e.preventDefault();
            charge(e);
        })
        function showModal() {
            Swal.fire({
                title: "Thông báo !",
                html: `
                <p>Inbox qua fanpage hoặc telegram: </p>
                <div>
                    <span>Telegram: </span><a href='https://t.me/LopteMod'>Click</a><br>
                    <span>Fanpage: </span><a href='https://www.facebook.com/cnlopte'>Click</a>
                </div>
                `,
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "OK"
            })
        }
        async function charge(form) {
            const amount = $("#amount").val();
            if (amount < {{$minCharge}}) {
                alert("Số tiền phải lớn hơn hoặc bằng " + {{$minCharge}})
                return;
            }
            const confrim = await Swal.fire({
                title: "Nhắc nhở !",
                text: "Bạn có chắc chắn ?",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "OK"
            })
            if (confrim.isConfirmed) {
                form.currentTarget.submit();
            }
        }
    </script>
@endpush
