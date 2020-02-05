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

    <body class="product-page">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <%         
            Response.WriteFile ("inc\mobile-nav.inc")
        %>

        <div class="wrapper background-gray-1">
            <%
                Response.WriteFile ("inc\header-2.inc")

                Response.WriteFile ("inc\page-header-1.inc")
            %>

            <section id="TitleContainer">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="poppins-light text-center text-white mb-3">What makes BigHoller so unique</h1>
                            <h4 class="h6 text-center text-white col-12 col-md-8 offset-md-2 mb-4">BigHoller offers a complete restaurant app solution with a powerful set of marketing tools. View our slide show to see all the possibilities.</h2>

                            <a href="pricing.aspx" class="btn btn-lg btn-block btn-white-2 col-md-4 offset-md-4 mb-"5>Get Started</a>
                        </div>
                    </div>
                </div>
            </section>

            <section id="FirstSection" class="pb-0">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h3 class="poppins-light text-center mb-3">Be proud of your restaurant app</h3>
                            <p class="h6 col-12 col-md-8 offset-md-2 mb-4">Imagine the possibilities. Existing customers order more frequently. New customers become loyal fans. People you don't know become customers. It all starts with BigHoller's restaurant app.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section id="CalloutCard" class="blob-shape-2">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-10 offset-md-1">
                           <div class="card card-2">
                              <div class="pt-3 pb-3 text-center">
                                 <h4 class="poppins-semibold mb-3">It starts with a restaurant app</h4>
                                 <p class="poppins-regular mb-3">Learn about our full suite of digital marketing tools for restaurants.</p>
                              </div>
                           </div>
                        </div><!-- card -->
                    </div><!-- row -->
                </div><!-- container -->
            </section><!-- #callout-card -->

            <section id="second-section" class="pb-0">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h3 class="poppins-light text-center mb-3">Grab their attention and keep it</h3>
                            <p class="h6 text-center col-8 offset-2 mb-4">Restaurant apps are quickly becoming the new face of your business. We help you put your best foot forward.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section id="callout-card-2" class="blob-shape-3">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-6 col-md-10 offset-md-1">
                           <div class="card card-2">
                              <div class="text-center col-12 col-md-10 offset-md-1 col-lg-8 offset-lg-2 pt-3 pb-3">
                                 <h4 class="poppins-semibold mb-3">Get excited about the boost to your business and bottom line.</h4>
                                 <p class="poppins-regular mb-3">With Data Digits, no matter what online ordering system you are using, we will dramatically grow your online orders.</p>
                              </div>
                           </div>
                        </div><!-- card -->
                    </div><!-- row -->
                </div><!-- container -->
            </section><!-- #callout-card -->

            <section id="products-cta">
                <div class="container">
                    <div class="row">
                        <h3 class="poppins-light col-12 pt-md-5 mb-3 text-center">Ready to make your big impact? We are.</h3>
                        <p class="h6 col-10 offset-1 col-lg-8 offset-lg-2 text-center mb-4">Look around. There is no one offering our products and services at such a high level.</p>
                        <a href="pricing.aspx" class="btn btn-lg btn-block btn-blue col-md-4 offset-md-4 mb-"5>Get Started</a>
                    </div><!-- row -->
                </div><!-- container -->
            </section><!-- #prime-cta -->

            <%
                Response.WriteFile ("inc\footer-2.inc")
            %>
        </div><!-- #wrapper -->

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script>
            jQuery(document).ready(function($){
                $('.mobile-nav-trigger').click(function(){
                    $(this).toggleClass('open');
                    $('.wrapper').toggleClass('body-slide');
                });

                if ($('body').hasClass('product-page')) {
                    $('nav.main-nav > ul > li.product-link').addClass('current');
                }
            });
        </script>
    </body>
</html>
