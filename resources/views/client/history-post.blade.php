{{--<div class="row mt-4">--}}
{{--    <div class="col-6">--}}
{{--        <h2>Key mua gần đây</h2>--}}
{{--    </div>--}}
{{--</div>--}}

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
                                    <th >Title</th>
                                    <th >Created At</th>
                                    <th>Status</th>
                                    <th>Like</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($posts as $item)
                                    <tr class="odd">
                                        <td class="" tabindex="0">{{$item->post->title}}</td>
                                        <td>{{$item->post->updated_at}}</td>
                                        <td>
                                            @if($item->post->status)
                                                Đã duyệt
                                            @else
                                                Chờ duyệt
                                            @endif
                                        </td>
                                        <td>{{$item->post->like->count()}}</td>
                                        <td>
                                            <form action="{{route('posts.delete', $item->post->id)}}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" onclick="return confirm('Bạn có chắc chắn muốn xóa ?')" class="btn btn-danger">Delete</button>

                                            </form>
                                            <a href="{{route('posts.edit', $item->post->id)}}" class="btn btn-info mt-2">Edit</a>
                                        </td>
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
