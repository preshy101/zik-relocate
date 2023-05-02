@extends('layouts.app')

@section('content')
    <div class="container">

     
  <h3 class="text-danger"><u>Proposal form</u></h3>
<div class="row">
    <div class="col-md-8">

        <h2>Student: <b> {{$post->user->name}}</b> </h2>
        <h2>From: <b> {{$post->title}}</b> </h2>
        <h2>To: <b> {{$post->locateTo}}</b> </h2>
    
    <form action="{{route('create.proposal', $post->id)}}" method="post">
        @csrf
        <label for="">Price</label>
        <input type="text"required name="price" id="" class="form-control"> 
                <label for="">Availability</label>
            <select class="form-control" name="timing" required id="">
            <option value="">select one</option>
            <option value="immediately">immediately</option>
            <option value="a day">a day</option>
            <option value="a week">a week</option> 
            </select>
                    <label for="">Info</label>

        <textarea class="form-control" name="body"required id="" cols="5" rows="5"></textarea>
            <label for=""></label><br>
            <input type="submit" class="btn btn-primary btn-lg" value="Sumbit">
    </form>
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
