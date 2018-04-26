@extends ('layouts.app')
@section('nav-menu')

  <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav menu">
                           
                             {{menu('site','bootstrap')}}
                        </ul>
                    </div>

@stop

@section ('main-content')

        <section id="home" class="home">
            <!-- Carousel -->
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <!-- Carousel-inner -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/slider_img.jpg" alt="Construction" style="width: 100%;">
                        <div class="overlay">
                            <div class="carousel-caption">
                                
                                <h1 style="color: orange;">SERVICIO</h1>
                                <h1 style="color:  orange;">DE</h1>
                                <h1 class="second_heading" style="color: #b2ff00;">Alquiler</h1>
                                <p>Caminetas - Buses - Andamios certificados y Equipos para Contrucción</p>
                                <a  class="btn know_btn" style="background-color: #222533;">Ver servicio</a>
                            </div>                  
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider_img.jpg" alt="Construction" style="width: 100%;">
                        <div class="overlay">
                            <div class="carousel-caption">

                               <h1 style="color: orange;">SERVICIO</h1>
                               <h1 style="color: orange;">DE</h1>
                                <h1 class="second_heading" style="color: #b2ff00;">Jardineria</h1>
                                <p >Consigue una limpieza espectacular, sostenible con el medio ambiente y de larga duración.</p>
                                <a  class="btn know_btn" style="background-color: #222533;">Ver servicio</a>

                                
                            </div>                  
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider_img.jpg" alt="Construction" style="width: 100%;">
                        <div class="overlay">
                            <div class="carousel-caption">
                                        <h1  style="color: orange;">VENTA</h1>
                                        <h1 style="color: orange;">DE</h1>
                                <h1 class="second_heading" style="color: #b2ff00;">PRODUCTOS</h1>
                                <p>Bandas sinteticas - Bandas de transmisión -  Bandas de polycord - Bandas de forrado de rodillo - Mallas - Teflón.</p>
                              <a  class="btn know_btn" style="background-color: #222533;">Ver servicio</a>
                            </div>                  
                        </div>
                    </div>
                </div><!-- Carousel-inner end -->



                <!-- Controls -->
                <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
                    <span class="fa fa-angle-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
                    <span class="fa fa-angle-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div><!-- Carousel end-->

        </section>


        <!-- About -->
        <section id="about">
            <div class="container about_bg">
                <div class="row">
                    <div class="col-lg-7 col-md-6">
                        <div class="about_content">
                            <h2>BIENVENIDO A NUESTRA COMPAÑIA</h2>
                            
                            <p class="text-justify">
                                {!! setting('bienvenido.description') !!}
                            </p>
                           
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-lg-offset-1">
                        <div class="about_banner">
                          <!--   <img src="images/man1.jpg" alt="" /> -->
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- About end -->

        <!-- Why us -->
        <section id="why_us">
            <div class="container text-center">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="head_title">
                            <h2>NOSOTROS</h2>
                           
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="why_us_item">
                            <span class="fa fa-map"></span>
                            <h4>MISIÓN</h4>
                             <div id="message1">
                             <p class="text-justify">{!! setting('nosotros.mision') !!}</p>
                         </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="why_us_item">
                            <span class="fa fa-eye"></span>
                            <h4>VISIÓN</h4>
                             <div id="message2">
                            <p class="text-justify">{!! setting('nosotros.vision') !!}</p>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="why_us_item">
                            <span class="fa fa-group"></span>
                           <h4>VALORES</h4>
                             <div id="message3">
                            <p class="text-justify ">
                               {!! setting('nosotros.valores') !!}</p>
                           </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="why_us_item">
                            <span class="fa fa-line-chart"></span>
                           <h4>COMPROMISO</h4>
                            <div id="message4">
                            <p class="text-justify">
                                {!! setting('nosotros.compromisos') !!}
                                 </p>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- Why us end -->

        <!-- Services -->
        <section id="services">
            <div class="container">
                <a href="/services/"><h2>SERVICIOS</h2></a>
                <div class="row">

                    @foreach($services as $serv)
                    <div class="col-md-4">
                        <div class="service_item">
                            <img src="{{asset('storage/'.$serv->image)}}" alt="Our Services" style="height: 200px;" />
                            <h3>{{$serv->name}}</h3>
                            <p class="text-justify">{{$serv->description}}</p>
                            <a  class="btn know_btn" style="background-color: #222533;" href="/services/{{$serv->id}}">Ver servicio</a>
                        </div>
                    </div>
                    @endforeach
                    
   
                </div>

            </div>
        </section><!-- Services end -->

        <!-- Portfolio -->
        <section id="portfolio">
            <div class="container portfolio_area text-center">
                <h2>Portafolio</h2>
                <p class="text-justify">
                    ñasldmlksadmksandlk
                    samdklsadmlkd kjfdn 
                    </p>

                <div id="filters">
                    <button class="button is-checked" data-filter="*">Show All</button>
                    <button class="button" data-filter=".buildings">Buildings</button>
                    <button class="button" data-filter=".interior">Interior Design</button>
                    <button class="button" data-filter=".isolation">Isolation</button>
                    <button class="button" data-filter=".plumbing">Plumbing</button>
                </div>
                <!-- Portfolio grid -->     
                <div class="grid">
                    <div class="grid-sizer"></div>
                    <div class="grid-item grid-item--width2 grid-item--height2 buildings plumbing interior">
                        <img alt="" src="images/highligh_img.jpg" >
                        <div class="portfolio_hover_area">
                            <a class="fancybox" href="images/highligh_img.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><span class="fa fa-search"></span></a>
                            <a href="#"><span class="fa fa-link"></span></a>
                        </div>  
                    </div>

                    <div class="grid-item buildings interior isolation">
                        <img alt="" src="images/portfolio1.jpg" >
                        <div class="portfolio_hover_area">
                            <a class="fancybox" href="images/portfolio1.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><span class="fa fa-search"></span></a>
                            <a href="#"><span class="fa fa-link"></span></a>
                        </div>   
                    </div>

                    <div class="grid-item interior plumbing isolation">
                        <img alt="" src="images/portfolio2.jpg" >
                        <div class="portfolio_hover_area">
                            <a class="fancybox" href="images/portfolio2.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><span class="fa fa-search"></span></a>
                            <a href="#"><span class="fa fa-link"></span></a>
                        </div>  
                    </div>

                    <div class="grid-item isolation buildings">
                        <img alt="" src="images/portfolio3.jpg" >
                        <div class="portfolio_hover_area">
                            <a class="fancybox" href="images/portfolio3.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><span class="fa fa-search"></span></a>
                            <a href="#"><span class="fa fa-link"></span></a>
                        </div>  
                    </div>

                    <div class="grid-item plumbing isolation">
                        <img alt="" src="images/portfolio4.jpg" >
                        <div class="portfolio_hover_area">
                            <a class="fancybox" href="images/portfolio4.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><span class="fa fa-search"></span></a>
                            <a href="#"><span class="fa fa-link"></span></a>
                        </div>  
                    </div>
                </div><!-- Portfolio grid end -->
            </div>
        </section><!-- Portfolio end -->

        <!-- Contact form -->
        <section id="contact_form">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 style="color: #b2ff00;">¿TIENES ALGUNA PREGUNTA? ¡SIÉNTETE LIBRE DE CONTACTARNOS!</h2>
                      <!--   <h2 class="second_heading" style="color: white;">Feel free to contact us!</h2> -->
                    </div>
                    <form role="form" class="form-inline text-right col-md-6" >
                        <div class="form-group">
                            <input type="text" class="form-control" id="msg" placeholder="Nombre">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="email" placeholder="Email">
                        </div>
                         <div class="form-group">
                           <input type="number" class="form-control" id="email" placeholder="Telefono">
                        </div>
                          <div class="form-group">
                            <input type="email" class="form-control" id="email" disabled>
                        </div>
                       
                         <div class="form-group">
                            <textarea class="form-control" rows="5" id="msg" placeholder="Mensaje"></textarea>
                        </div>
                        <button type="submit" class="btn submit_btn" >Enviar</button>
                    </form>             
                </div>
            </div>
        </section><!-- Contact form end -->

       
<script>
    let length = 520;
function more(div){
    if (div) {
  let trunc = div.innerHTML;
  
  if (trunc.length > length) {
    
    trunc = trunc.substring(0, length),
      trunc.replace(/\w+$/, '');
    
    trunc += '<a href="#" ' +
      'onclick="this.parentNode.innerHTML=' +
      'decodeURIComponent(\'' + encodeURIComponent(div.innerHTML) + 
      '\');return false;">' +
      'Ver mas<\/a>';
    
    div.innerHTML = trunc;
  }
}
}

this.more(document.getElementById('message1'));
this.more(document.getElementById('message2'));
this.more(document.getElementById('message3'));
this.more(document.getElementById('message4'));
</script>

@stop