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

    <body class="contact-page">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <%         
            Response.WriteFile ("inc\mobile-nav.inc")
        %>

        <div class="wrapper background-gray-1">
            <%
                Response.WriteFile ("inc\header-1.inc")
            %>

            <section id="main-body" class="text-center">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="poppins-medium">Get In Touch</h1>
                            <h2 class="h4 text-gray-1">We're happy to hear from you. What's on your mind?</h2>
                        </div>
                    </div>
                </div>
            </section>

            <section class="background-white">
                <div class="container">
                    <div class="row">
                        <div class="card-container font-poppins col-xs-12 col-sm-6 mb-3">
                            <a href="contact-support.aspx">
                                <div class="card">
                                    <h3 class="poppins-semibold text-blue">Contact Support</h3>
                                    <div class="card-table">
                                        <p class="mb-0 text-gray-1">Any help you need starts here.</p>
                                    </div>
                                </div>
                            </a>
                        </div><!-- #card-1 -->
                        
                        <div class="card-container col-xs-12 col-sm-6 mb-3">
                            <a href="contact-sales.aspx">
                                <div class="card">
                                    <h3 class="poppins-semibold text-blue">Contact Sales</h3>
                                    <div class="card-table">
                                        <p class="mb-0 text-gray-1">How can we signup you up today?</p>
                                    </div>
                                </div>
                            </a>
                        </div><!-- #card-2 -->            

                        <div class="card-container font-poppins col-xs-12 col-sm-6 mb-3">
                            <a href="contact-partners.aspx">
                                <div class="card">
                                    <h3 class="poppins-semibold text-blue">Partners</h3>
                                    <div class="card-table">
                                        <p class="mb-0 text-gray-1">For collaborations, integrations and co-marketing.</p>
                                    </div>
                                </div>
                            </a>
                        </div><!-- #card-3 -->                         

                        <div class="card-container font-poppins col-xs-12 col-sm-6 mb-3">
                            <a href="contact-reseller.aspx">
                                <div class="card">
                                    <h3 class="poppins-semibold text-blue">Reseller</h3>
                                    <div class="card-table">
                                        <p class="mb-0 text-gray-1">Referrals: Interested in making money?</p>
                                    </div>
                                </div>
                            </a>
                        </div><!-- #card-4 --> 

                        <div class="card-container font-poppins col-xs-12 col-sm-12 mb-3">
                                <div class="card">
                                    <h3 class="poppins-semibold text-blue">Or Give us a Call</h3>
                                    <div class="card-table">
                                        <p class="mb-0 text-gray-1">888-BigHoller or 888-244-4655</p>
                                        <p class="mb-0 text-gray-1">If we cannot answer, please leave us a message. Someone will get back to you within the hour.</p>
                                    </div>
                                </div>
                        </div><!-- #card-4 --> 

                    </div>
                </div>
            </section>

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

                if ($('body').hasClass('contact-page')) {
                    $('nav.main-nav > ul > li.contact-link').addClass('current');
                }
            });
        </script>
    </body>
</html>
