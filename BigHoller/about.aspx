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

    <body class="about-page">
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

            <div id="main-body">
                <div class="container">
                    <div class="row">
                        <section>
                            <h1 class="poppins-semibold text-center text-white mt-4 mb-3">About Us</h1>
                            <h2 class="h6 text-center text-white col-6 offset-3 mb-4">You may recognize the BigHoller name. Fifteen years ago, BigHoller began as a restaurant online ordering company. We continue with our online ordering but through those 15 years, we listened.</h2>
                        </section><!-- #title-section -->

                        <section class="col-xs-12 col-md-8 offset-md-2 mb-3">
                            <h3 class="h4 mb-4">What restaurants want more than anything, are two things:</h3>

                            <ol>
                                <li><p>A company that can evolve with rapidly changing technology environment.</li>
                                <li><p>A company that knows where the wise money is spent in order to drive orders. Lots and lots of orders.</p>
                            </ol>
                         <h4>Our Restaurant App Drives Orders</h4>
                            <p>BigHoller has evolved. We are constantly studying the environment and responding to customer's needs. With so many choices, and so much competition, it is hard for a restaurant to hold on to its existing customer base, let alone attract new ones.</p>
                            <p>With the power of the BigHoller restaurant app and Data Digits, we have created a proven and measurable methodology of increasing your bottom line. It all starts with a restaurant app.</p></li>
                        </section><!-- #page-article -->


                    </div>
                </div>
            </div><!-- #main-body -->

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

                if ($('body').hasClass('about-page')) {
                    $('nav.main-nav > ul > li.about-link').addClass('current');
                }
            });
        </script>
    </body>
</html>
