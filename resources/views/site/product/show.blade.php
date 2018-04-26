@extends('layouts.app')
@section('main-content')

<style> 
#pro img{
height: none;
width: none;
}
</style>
   <!-- Services -->
        <section id="service-section" style="margin-top: 25px; margin-bottom: 25px;">
           
           	<div class="container" style="background-color: #eee;">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						<br>
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="{{asset('/storage/'.$product->image)}}" /></div>
						 
						</div>
						<br>
						
					</div>
					<div class="details col-md-6">
						<br>
						<h3 class="product-title">{{$product->name}}</h3>
					
						<p class="product-description">{{$product->description}}</p>
						<h4 class="price">MAS INFORMACION:</h4>
						<p" id="pro">{!!$product->body!!}</p>
						
					</div>
				</div>
			</div>
		</div>
	</div>
        </section><!-- Services end -->


@endsection