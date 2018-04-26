@extends('voyager::master')

@section('css')

    @include('voyager::compass.includes.styles')
    
@stop

@section('page_header')

@stop

@section('content')
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Servicios <a href="services/create"><button class="btn btn-success">Añadir</button></a></h3>
  </div>
  <div class="panel-body">
<div class="table-responsive">
  	<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nombre</th>
      <th scope="col">Descripción</th>
      <th scope="col">Imagen</th>
      <th scope="col">Categoria</th>
      <th scope="col">Estado</th>
      <th scope="col">Opción</th>
    </tr>
  </thead>
  <tbody>

    @foreach($services as $ser)
<tr>
      <th scope="row">{{$ser->id}}</th>
      <td>{{$ser->name}}</td>
      <td>{{$ser->description}}</td>
      <td><img src="{{asset('imagenes/services/'.$ser->image)}}" width="64" height="64"></td>
      <td>{{$ser->idCategory}}</td>
      <td>{{$ser->status}}</td>
      <td><button class="btn btn-info">ver</button><button class="btn btn-dark">editar</button><button class="btn btn-warning">eliminar</button></td>
    </tr>
    	@endforeach
  </tbody>
</table>
  	</div>
{{ $services->links() }}
  </div>
</div>
@stop

@section('javascript')

@stop
