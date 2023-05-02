<div class="row form-search" style="  margin-bottom: 40px;  ">
    {!! Form::open(['method' => 'GET', 'role' => 'form']) !!}
            <div class="col-md-10">
                {!! Form::text('search', request()->get('search'), ['class' => 'form-control', 'placeholder' => 'Search...']) !!}
            </div>
            <div class="col-md-2">
                {!! Form::submit('Sumbit', ['class' => 'btn btn-block btn-primary']) !!}
            </div>
    {!! Form::close() !!}
</div>
