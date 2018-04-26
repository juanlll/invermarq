@extends('voyager::master')

@section('css')

    @include('voyager::compass.includes.styles')
    
@stop

@section('page_header')

@stop

@section('content')
<div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                  <h3>Nuevo servicio</h3>
                  @if (count($errors)>0)
                  <div class="alert alert-danger">
                        <ul>
                        @foreach ($errors->all() as $error)
                              <li>{{$error}}</li>
                        @endforeach
                        </ul>
                  </div>
                  @endif
            </div>
      </div>





                  {!!Form::open(array('url'=>'admin/services','method'=>'POST','autocomplete'=>'off','files'=>'true'))!!}
            {{Form::token()}}

<div class="row">

       <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">             
                  <div class="form-group">
                  <label for="name">Nombre</label>
                  <input type="text" name="name" required class="form-control" placeholder="Nombre...">
                  </div>
       </div>

       <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">           
                   <div class="form-group">
                              <label >Categoria</label>
                              <select name="idCategory" class="form-control">
                           		<option value="1">NN</option>
                              </select>
                   </div>
       </div>


       <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                        <div class="form-group">
                                    <label for="description">Descripción</label>
                                    <input type="text" name="description" required  class="form-control" placeholder="descripción...">
                         </div>
        </div>



                  <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">       
                                     <div class="form-group">
                                           <label for="status">Estado</label>
                                           <select name="status" class="form-control">
                           					<option value="1">Activo</option>
                           					<option value="0">Inactivo</option>
                              				</select>
                                     </div>
                  </div>

                   <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">       
                                     <div class="form-group">
                                           <label for="price">Precio</label>
                                           <input type="text" name="price" class="form-control" required placeholder="Precio...">
                                     </div>
                  </div>

                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">       
                                     <div class="form-group">
                                           <label for="amount">Cantidad</label>
                                           <input type="text" name="amount" class="form-control" required placeholder="Stock...">
                                     </div>
                  </div>


 <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">           
            <div class="form-group">
                  <label for="image">Imagen</label>
                  <input type="file" name="image" class="form-control" >
            </div>
 </div>

<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">           
            <div class="form-group">
                  <button class="btn btn-primary" type="submit">Guardar</button>
                  <button class="btn btn-danger" type="reset">Cancelar</button>
            </div>
       </div>
 </div>
            
            

                  {!!Form::close()!!}       
@stop

@section('javascript')

@stop
