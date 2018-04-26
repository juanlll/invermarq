<!DOCTYPE html>
 <html lang="es"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Invermaq</title>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Custom Fonts -->
        <link rel="stylesheet" href="{{asset('custom-font/fonts.css')}}" />
        <!-- Bootstrap -->
        <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" />
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" />
        <!-- Bootsnav -->
        <link rel="stylesheet" href="{{asset('css/bootsnav.css')}}">
        <!-- Fancybox -->
        <link rel="stylesheet" type="text/css" href="{{asset('css/jquery.fancybox.css?v=2.1.5')}}" media="screen" /> 
        <!-- Custom stylesheet -->
        <link rel="stylesheet" href="{{asset('css/custom.css')}}" />
    </head>
    <body>

 
        <header>

             <!-- Top Navbar -->
            <div class="top_nav">
                <div class="container">
                    <ul class="list-inline info">
                        <li><a href="#"><span class="fa fa-phone"></span> 320 - 311 - 4712</a></li>
                        <li><a href="#"><span class="fa fa-envelope"></span> support@invermaq.com</a></li>
                        <li><a href="#"><span class="fa fa-clock-o"></span> Lunes - Sabado 9:00am - 7:00pm</a></li>
                    </ul>
                    <ul class="list-inline social_icon">
                        <li><a href=""><span class="fa fa-facebook"></span></a></li>
                        <li><a href=""><span class="fa fa-twitter"></span></a></li>
                        
                        <li><a href=""><span class="fa fa-youtube"></span></a></li>
                    </ul>           
                </div>
            </div><!-- Top Navbar end --> 
        

            <!-- Navbar -->
            <nav class="navbar bootsnav">
                <!-- Top Search -->
                <div class="top-search">
                    <div class="container">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <!-- Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="search"></li>
                        </ul>
                    </div>
                    <!-- Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href=""><h2 style="color: #b2ff00; margin-bottom: 0px;">invermaq</h2>
                            <p style="margin-top: 0px; color: white;">Inversiones y maquinaria</p></a>
                    </div>
                    <!-- Navigation -->
                      @yield('nav-menu')
                   
                </div>   
            </nav><!-- Navbar end -->
        </header><!-- Header end -->


        


 @yield('main-content')

        <!-- Footer -->
        <footer>
            <!-- Footer top -->
            <div class="container footer_top">
                <div class="row">
                    <div class="col-lg-4 col-sm-7">
                        <div class="footer_item">
                            <h4>Acerca de</h4>
                            <h2 style="color: #b2ff00; margin-bottom: 0px;">invermaq</h2>
                            <p style="margin-top: 0px; color: white;">Inversiones y maquinaria</p>

                            
                           <!--  <img class="logo" src="images/logo.png" alt="Construction" /> -->
                            <p class="text-justify">
                                askldmaskld
                                msalkdlkasmdlkasmdlk
                                samdklmasd
                                lkmaslkdmsad
                            asdkmasdlkmaslkdmaslkdma
                            skdmsakmdñlasmdñl
                            asmdmlñsa
                        asdkmaskdmñsamdñlsamdñlmsadm</p>

            <ul class="list-inline footer_social_icon">
                <li><a href=""><span class="fa fa-facebook" style="background-color: #b2ff00;"></span></a></li>
                <li><a href=""><span class="fa fa-twitter" style="background-color: #b2ff00;"></span></a></li>
                <li><a href=""><span class="fa fa-youtube" style="background-color: #b2ff00;"></span></a></li>
               <!--  <li><a href=""><span class="fa fa-google-plus" style="background-color: #b2ff00;"></span></a></li>
                <li><a href=""><span class="fa fa-linkedin" style="background-color: #b2ff00;"></span></a></li> -->
            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-5">
                        <div class="footer_item">
                            <h4>Links</h4>
                            <ul class="list-unstyled footer_menu">
                                <li><a href=""><span class="fa fa-play"></span>#LINK1</a>
                                <li><a href=""><span class="fa fa-play"></span>#LINK2</a>
                                    <li><a href=""><span class="fa fa-play"></span>#LINK32</a>
                                        <li><a href=""><span class="fa fa-play"></span>#LINK4</a>
                            </ul>
                        </div>
                    </div>
                   
                    <div class="col-lg-3 col-sm-5">
                        <div class="footer_item">
                            <h4>Informacion de Contacto</h4>
                            <ul class="list-unstyled footer_contact">
                                <li><a href=""><span class="fa fa-map-marker"></span>Neiva-Huila,Colombia</a></li>
                                <li><a href=""><span class="fa fa-envelope"></span> fladimir@invermaq.com</a></li>
                                <li><a href=""><span class="fa fa-mobile"></span><p>+57 320 323 2324</p></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- Footer top end -->

            <!-- Footer bottom -->
            <div class="footer_bottom text-center">
                <p class="wow fadeInRight">
                  <a href="http://juanvargasva.ml">juanvargasva.ml</a>
                </p>
            </div><!-- Footer bottom end -->
        </footer><!-- Footer end -->

        <!-- JavaScript -->
        <script src="{{asset('js/jquery-1.12.1.min.js')}}"></script>
        <script src="{{asset('js/bootstrap.min.js')}}"></script>

        <!-- Bootsnav js -->
        <script src="{{asset('js/bootsnav.js')}}"></script>

        <!-- JS Implementing Plugins -->
        <script src="{{asset('js/isotope.js')}}"></script>
        <script src="{{asset('js/isotope-active.js')}}"></script>
        <script src="{{asset('js/jquery.fancybox.js?v=2.1.5')}}"></script>

        <script src="{{asset('js/jquery.scrollUp.min.js')}}"></script>

        <script src="{{asset('js/main.js')}}"></script>
    </body> 
</html> 