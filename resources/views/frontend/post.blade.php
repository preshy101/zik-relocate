@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                       From  <b class="text-danger">{{ $post->title }} </b> Relocate To <b class="text-success">{{ $post->locateTo }} </b><small>by Student- <b>{{ $post->user->name }}</b></small>


                        <span class="pull-right">
                            {{ $post->created_at->toDayDateTimeString() }}
                        </span>
                    </div>

                    <div class="panel-body">
                        <p>{{ $post->body }}</p>
                        <p>
                            Category: <span class="label label-success">{{ $post->category->name }}</span> <br>
                            Tags:
                            @forelse ($post->tags as $tag)
                                <span class="label label-default">{{ $tag->name }}</span>
                            @empty
                                <span class="label label-danger">No tag found.</span>
                            @endforelse
                        </p>
                    </div>
                </div>

                @includeWhen(Auth::user(), 'frontend._form')

                @include('frontend._comments')

            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                 Proposals 
                 @php
                                $proposal = App\Proposal::where('post_id',$post->id)->get();
                                $countProposal = count($proposal);
                            @endphp
                        <span class="badge">
                           
                            {{ $countProposal  }}
                        </span>
                    </div>

                    <div class="panel-body">
                        <table class="table   ">
                            <tr>
                                <th >Name</th>
                                <th >Price</th>
                                <th>info</th>
                                <th >status</th>
                                @if(empty($post->driver_id))
                            <td>
                        
                            </td>  
                            @endif 
                            </tr>
                                <tbody>
                        @foreach ($proposal as $key => $item)
                           @php
                                $userz = App\User::where('id',$item->user_id)->first();
                           @endphp   
                              <tr>   
                            <td>{{$key+1}} - {{$userz->name}}</td>
                            <td>{{$item->price}}</td>
                            <td>{{str_limit($item->body)}}</td>
                            <td>{{($post->driver_id == $item->user_id)? 'Accepted': ''}}</td> 
                            @if(empty($post->driver_id))
                            <td>
                       <a href="{{ url("/driver/accept/post/{$post->id}/trip/{$item->user_id}") }}" data-method="get" data-token="{{ csrf_token() }}"   class="btn btn-sm btn-success">Accept</a>

                            </td>  
                            @endif 
                            </tr>  
                             @endforeach
                                </tbody>
                            
                        </table>
            </div>
            </div> 
            </div>
        </dev>
    </dev>
@endsection
