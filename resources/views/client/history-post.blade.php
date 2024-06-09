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
                            <table id="history-post-datatable" class="table dt-responsive nowrap w-100 dataTable no-footer dtr-inline collapsed" aria-describedby="basic-datatable_info" style="width: 1192px;">
                                <thead>
                                <tr>
                                    <th >Title</th>
                                    <th >Tag</th>
                                    <th >Created At</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($posts as $item)
                                    <tr class="odd">
                                        <td class="dtr-control sorting_1" tabindex="0">{{$item->post->title}}</td>
                                        <td>{{$item->post->tag_name}}</td>
                                        <td>{{$item->post->created_at}}</td>
                                        <td>
                                            @if($item->post->status)
                                                Đã duyệt
                                            @else
                                                Chờ duyệt
                                            @endif
                                        </td>
                                        <td>
                                            <form action="{{route('posts.delete', $item->post->id)}}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" onclick="return confirm('Bạn có chắc chắn muốn xóa ?')" class="btn btn-danger">Delete</button>

                                            </form>
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
