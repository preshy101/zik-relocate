@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            @php
                $userPostCount = App\Models\Post::where('user_id',auth()->user()->id)->get();
                $driverPostCount = App\Models\Post::where('driver_id',auth()->user()->id)->get();
                $completed = App\Models\Post::where('driver_id','!=', null)->get();
                $userPostCommentCount = App\Models\Comment::where('user_id',auth()->user()->id)->get();
                $completed = count($completed);
                $uPost = count($userPostCount);
                $driverPost = count($driverPostCount);
                $uComment = count($userPostCommentCount);
            @endphp

            @if(auth()->user()->role == 1 && auth()->user()->is_admin == 0)
            <h1>Welcome Driver</h1>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Accepted Trips </div>

                    <div class="panel-body">
                        <h1>{{ $driverPost }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Posts</div>

                    <div class="panel-body">
                        <h1>{{ $uPost }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Comments</div>

                    <div class="panel-body">
                        <h1>{{  $uComment }}</h1>
                    </div>
                </div>
            </div>
            @elseif(auth()->user()->role == 0 && auth()->user()->is_admin == 0)
            <h1>Welcome Student</h1>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Posts</div>

                    <div class="panel-body">
                        <h1>{{ $uPost }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Comments</div>

                    <div class="panel-body">
                        <h1>{{ $uComment }}</h1>
                    </div>
                </div>
            </div>
            @endif

                @if(auth()->user()->is_admin)
                <h1>Welcome Admin</h1>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Trips</div>

                    <div class="panel-body">
                        <h1>{{ $posts }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Accepted Trips</div>

                    <div class="panel-body">
                        <h1>{{ $completed }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Comments</div>

                    <div class="panel-body">
                        <h1>{{ $comments }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Tags</div>

                    <div class="panel-body">
                        <h1>{{ $tags }}</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Categories</div>

                    <div class="panel-body">
                        <h1>{{ $categories }}</h1>
                    </div>
                </div>
            </div>
            @endif

        </div>
    </div>
@endsection
