@extends('layouts.app')
@section('nav-menu')

  <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav menu">
                           
                             {{menu('services','bootstrap')}}
                                    
                        </ul>

                    </div>

@stop

@section('main-content')

<br>
<h2 class="text-center">NUESTROS SERVICIOS</h2>
<hr>  

<section style="margin-top: 25px; margin-bottom: 25px;">
	<div class="container">
		<div class="row">
		@foreach($services as $serv)
  <div class="col-sm-12 col-md-3">
    <div class="thumbnail">
      <img src="{{asset('/storage/'.$serv->image)}}" alt="..." style="height: 200px;">
      <div class="caption">
        <h3>{{$serv->name}}</h3>
        <p class="text-justify">{{$serv->description}}</p>
        <p><a href="/services/{{$serv->id}}" style="background-color: #222533;"  class="btn btn-primary" role="button">Ver servicio</a></p>
      </div>
    </div>
  </div>
  @endforeach
</div>
<center>{{ $services->links() }}</center>
	</div>

</section>
@endsection