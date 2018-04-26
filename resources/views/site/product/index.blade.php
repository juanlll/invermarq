@extends('layouts.app')
@section('nav-menu')

  <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav menu">           
                             {{menu('products','bootstrap')}}
                        </ul>
                    </div>

@stop

@section('main-content')
<br>
<h2 class="text-center">NUESTROS PRODUCTOS</h2>
<hr>


<section style="margin-top: 25px; margin-bottom: 25px;">
	<div class="container">
    <center><ul class="nav nav-pills">
  <li role="presentation"><a href="/products" style="background-color: #222533; color: white;">Todos</a></li>
  @foreach($categories as $cat)
   <li role="presentation"><a href="/products?idcat={{$cat->id}}" style="background-color: #222533; color: white;">{{$cat->name}}</a></li>
   @endforeach

</ul>

<hr>
<a >Filtrado por:</a>
<h3>Andamios</h3>
</center>
<br>
		<div class="row">
		@foreach($products as $pro)
  <div class="col-sm-12 col-md-3">
    <div class="thumbnail">
      <img src="{{asset('/storage/'.$pro->image)}}" alt="..." style="height: 200px;">
      <div class="caption">
        <h3>{{$pro->name}}</h3>
        <p class="text-justify">{{$pro->description}}</p>
        <p><a href="/products/{{$pro->id}}" style="background-color: #222533;"  class="btn btn-primary" role="button">Ver servicio</a></p>
      </div>
    </div>
  </div>
  @endforeach
</div>
<center>{{ $products->links() }}</center>
	</div>

</section>
@endsection