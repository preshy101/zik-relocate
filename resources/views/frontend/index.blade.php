@extends('layouts.app')

@section('content')
    <div class="container">

        @include('frontend._search')
<div class="row" style="margin-bottom: 50px">
    <div class="col-md-7 pt-5"  style="padding-top:70px">
<h1 class="display-1">A Community that helps u relocate confortably</h1>
<p class="lead">improving student safty including properties while relocating at ease,

    drivers willing to embark on your trip for a swift experience,

</p>
<button class="btn btn-primary btn-lg">Get started</button>
    </div>
    <div class="col-md-4">
        <img src="{{asset('img/home.jpeg')}}" alt="" style="width: 400px;" class="image-fluid w-25 d-block">
    </div>
</div>

        <div class="row">
 
            <div class="col-md-12"> 
                <h3> Recent Trips</h3> <br>
                @forelse ($posts as $post)
              
                    <div class="panel panel-default  " style="  margin-bottom: 40px; box-shadow: 4px 4px 10px">
                    {{-- <div class="panel panel-default  " style="border:1px solid rgba(27, 112, 224, 0.815); margin-bottom: 40px; box-shadow: 4px 4px 10px"> --}}
                        <div class="panel-heading">
                         <b class="text-primary"> Student</b> - <small> <b>{{ $post->user->name }}</b></small>
                            <span class="pull-right">
                                  Prefered Date of relocation-  <b>{{ $post->moveTime }}</b>
                                {{-- {{ $post->moveTime->toDayDateTimeString() }} --}}
                             </span>
                        </div>
                        <div class="panel-heading">
                         <b class="text-danger"> From</b>   {{ $post->title }}   

                           
                        </div>

                        <div class="panel-heading">
                        <b class="text-success"> Relocate to- </b> {{ $post->locateTo }}   

                            
                        </div>


                        <div class="panel-body">
                            <p>{{ str_limit($post->body, 200) }}</p>
                            <p>
                                Tags:
                                @forelse ($post->tags as $tag)
                                    <span class="label label-default">{{ $tag->name }}</span>
                                @empty
                                    <span class="label label-danger">No tag found.</span>
                                @endforelse
                       
                           
                                <span class="btn btn-sm btn-secondary"><b>Category-</b> {{ $post->category->name }}</span>
                                <br></p><span class="btn btn-sm btn-secondary">Advices <span class="badge">{{ $post->comments_count }}</span></span>

                       <a href="{{ url("/posts/{$post->id}") }}" class="btn btn-sm btn-info">See more</a>
                       @php
                        $driver = auth()->user();
                         $tripDriver = '';
                        if($post->driver_id){
                            $tripDriver = App\User::find($post->driver_id);
                        }
                       @endphp
                       @if($driver)
                       @if($driver->role && !$post->driver_id)     
                        {{-- <a href="{{ url("/driver/accept/post/{$post->id}/trip/{$driver->id}") }}" data-method="get" data-token="{{ csrf_token() }}"   class="btn btn-sm btn-danger"> Send Proposal </a> --}}
                        <a href="{{route('proposal',$post->id) }}"  class="btn btn-sm btn-danger"> Send Proposal </a>
                        
                        @endif
                        @elseif(!$post->driver_id)
                        <button   onclick="alert('Please Login to accept Trip')" class="btn btn-sm btn-danger"> Send Proposal </button>
                        @endif


                       @if($tripDriver)
                        <button  class="btn btn-sm btn-success">Accepted by {{$tripDriver->name}}</button>    
                        @endif
                           </p>
                        </div>
                    </div>
                     {!! $posts->links() !!}
                @empty
                    <div class="panel panel-default">
                        <div class="panel-heading">Not Found!!</div>

                        <div class="panel-body">
                            <p>Sorry! No post found.</p>
                        </div>
                    </div>
                @endforelse

                <div align="center">
                    {!! $posts->appends(['search' => request()->get('search')])->links() !!}
                </div>

            </div>

        </div>


        <div class="row" style="margin-top: 90px">
            <div class="col-md-4">
                <img class="image-fluid" style="width: 400px;" src="{{asset('img/about.jpeg')}}" alt=""  >
            </div>
            <div class="offset-md-2 col-md-2 ">
               
            </div>
            <div class="offset-md-2 col-md-6 ">
                <h1 class="display-1">
                    Solving the student transit problem at click of a button
                </h1>
                <p class="lead">with the help of our community students can transit safely with their property</p>
                <button class="btn btn-primary">Get started</button>
            </div>
        </div>
        
    </div>
        <div class="row bg-primary justify-content-center" style="margin-top: 70px">
           <div class="col-md-4 pl-5 align-self-center"> copyright reserved</div>  
        </div>
@endsection
