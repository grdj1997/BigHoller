<%@ Page Language="vb" AutoEventWireup="false"%>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bigholler - Restaurant Apps, Online Ordering, Digital Marketing</title>
        <meta name="description" content="It starts with a restaurant app. The importance of a restaurant app cannot be overstated. Your digital marketing begins and ends with BigHoller.">
        <meta name="keywords" content="mobile app, mobileapp, food ordering app, online food order, order online, custom mobile app, restaurent app, restaurent mobile app" />
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel='shortcut icon' type='image/x-icon' href='favicon-com.png' />

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style-2.css" type="text/css">
    </head>

    <body class="pricing-page">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <%         
            Response.WriteFile ("inc\mobile-nav.inc")
        %>

        <div class="wrapper">
            <%
                Response.WriteFile ("inc\header-2.inc")

                Response.WriteFile ("inc\page-header-1.inc")
            %>

            <h1 class="h2 poppins-light text-center text-white mt-5 mb-5">It all starts with a restaurant app</h1>

            <div id="carouselIndicators" class="carousel slide" data-interval="false" data-ride="carousel">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-10 offset-sm-1 col-md-12 offset-md-0 col-lg-10 offset-lg-1">
                            <ul class="nav nav-pills nav-fill justify-content-center">
                                <li data-target="#carouselIndicators" data-slide-to="0" class="nav-item col-md-4 pl-0 pr-0 active">
                                    <a href="#" class="tab-start btn btn-responsive btn-white-line d-block pt-3-1 pb-3-1">First Location</a>
                                </li>
                                <li data-target="#carouselIndicators" data-slide-to="1" class="nav-item col-md-4 pl-0 pr-0">
                                    <a href="#" class="tab-middle btn-responsive btn btn-white-line d-block pt-3-1 pb-3-1">Additional Locations</a>
                                </li>
                                <li data-target="#carouselIndicators" data-slide-to="2" class="nav-item col-md-4 pl-0 pr-0">
                                    <a href="#" class="tab-end btn-responsive btn btn-white-line d-block pt-2 pb-2">Power Up Your Online Ordering With Data Digits</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div><!-- #tabs -->

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        
                        <%
                            Response.WriteFile ("inc\pricing-table\first-location.inc")
                        %>

                    </div>
                    <div class="carousel-item">
                        
                        <%
                            Response.WriteFile ("inc\pricing-table\additional-locations.inc")
                        %>

                    </div>
                    <div class="carousel-item">
                        
                        <%
                            Response.WriteFile ("inc\pricing-table\data-digits.inc")
                        %>

                    </div>
                </div><!-- #caurosel-inner -->
            </div><!-- #caurosel -->

            <%
                Response.WriteFile ("inc\footer-2.inc")
            %>
        </div><!-- #wrapper -->

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            jQuery(document).ready(function($){
                $('.mobile-nav-trigger').click(function(){
                    $(this).toggleClass('open');
                    $('.wrapper').toggleClass('body-slide');
                });

                if ($('body').hasClass('pricing-page')) {
                    $('nav.main-nav > ul > li.pricing-link').addClass('current');
                }

                $('ul.nav-pills li a').click(function (e) {
                  $('ul.nav-pills li.active').removeClass('active');
                  $(this).parent().addClass('active');
                  $(this).addClass('btn-white');
                });
            });
        </script>
    </body>
</html>
