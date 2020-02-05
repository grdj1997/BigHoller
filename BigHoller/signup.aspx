<%@ Page Language="vb" AutoEventWireup="false" %>

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

    <body id="signup-page">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <%         
            Response.WriteFile ("inc\mobile-nav.inc")
        %>

        <div class="wrapper">
            <%
                Response.WriteFile ("inc\header-3.inc")
            %>
            <div id="carouselIndicators" class="carousel slide" data-interval="false" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div id="signup-first-step">
                           <section class="pt-0">
                              <div class="container">
                                 <div class="row">
                                    <form class="col-12 pl-0 pr-0" name="basicform" id="basicform1" method="post" action="welcome.aspx">
                                        <input type="hidden" name="PaymentType" value="">
                                        <input type="hidden" name="PaymentPlan" value='<%= Request.QueryString("plan") %>'>
                                        <div id="carouselIndicators" class="carousel slide" data-interval="false" data-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <div class="font-poppins font-light text-center mt-5 mb-5">
                                                        <p class="text-gray-2 mb-3">Step 1 <span class="text-muted">of 2</span></p>
                                                        <h2 class="h3">Start My Annual Plan</h2>
                                                    </div>
                                                    <div id="SignupStepOne" class="frm col-xs-12 col-md-8 offset-md-2">
                                                        <div class="col-xs-12 col-md-10 offset-md-1">
                                                            <fieldset>
                                                                <div class="form-group">
                                                                    <input type="text" placeholder="First Name" id="FirstName" name="FirstName" class="form-control" autocomplete="off">
                                                                </div>                                    

                                                                <div class="form-group">
                                                                    <input type="text" placeholder="Last Name" id="LastName" name="LastName" class="form-control" autocomplete="off">
                                                                </div>

                                                                <div class="form-group">
                                                                    <input type="text" placeholder="Email" id="Email" name="Email" class="form-control" autocomplete="off">
                                                                </div>

<%--                                                                <div class="form-group">
                                                                    <input type="password" placeholder="Password" id="Password" name="Password" class="form-control" autocomplete="off">
                                                                </div>--%>

                                                                <div class="form-group">
                                                                    <button type="submit" class="btn btn-blue btn-block btn-primary">Continue</button>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="font-poppins font-light text-center mt-5 mb-5">
                                                            <p class="text-gray-2 mb-3">Step 2 <span class="text-muted">of 2</span></p>
                                                            <h2 class="h3 mb-4">Set up your payment</h2>
                                                            <p class="font-poppins font-regular text-green-1 font-14">Your payments are SSL encrypted, <b>which means they're 100% safe with us.</b></p>
                                                        </div>

                                                        <div id="signup-steps">
                                                           <section class="pt-5">
                                                              <div class="container">
                                                                 <div class="row">
                                                                    <div class="col-xs-12 col-md-7">
                                                                        <div class="payment-type mb-5 d-block">
                                                                            <h6 class="font-14">Payment Mode</h6>
                                                                            <a class="border rounded p-2 ach-btn font-poppins font-14 font-medium d-inline-block active">ACH</a>
                                                                            <a class="border rounded p-2 cc-btn font-poppins font-14 font-medium d-inline-block">Credit Card (Outside of US)</a>
                                                                        </div>
                                                                        <fieldset class="cc-form d-block">
                                                                            <div class="form-group">
                                                                                <h6 class="font-14">Name of the Bank</h6>
                                                                                <input type="text" id="BankName" name="BankName" class="form-control" autocomplete="off">
                                                                            </div>

                                                                            <div class="form-group">
                                                                                <h6 class="font-14">Routing Number</h6>
                                                                                <input type="text" id="RoutingNumber" name="RoutingNumber" class="form-control" autocomplete="off">
                                                                            </div>

                                                                            <div class="form-group">
                                                                                <h6 class="font-14">Account Number</h6>
                                                                                <input type="text" id="AccountNumber" name="AccountNumber" class="form-control" autocomplete="off">
                                                                            </div>

                                                                            <% if (Request.QueryString("plan") = "first-location-monthly") %>
                                                                                <div class="form-group card text-center background-gray-1 p-4">
                                                                                    <b>You have selected the Monthly Plan</b>
                                                                                </div>
                                                                            <% end if %>
                                                                            <% if (Request.QueryString("plan") = "first-location-annual")  %>
                                                                                <div class="form-group card text-center background-gray-1 p-4">
                                                                                    <b>You have selected the Annual Plan</b>
                                                                                </div>
                                                                            <% end if %>
                                                                            <% if (Request.QueryString("plan") = "first-location-two-year") %>
                                                                                <div class="form-group card text-center background-gray-1 p-4">
                                                                                    <b>You have selected the Biennial Plan</b>
                                                                                </div>
                                                                            <% end if %>

                                                                            <div class="form-group mb-1">
                                                                                <button type="submit" class="btn btn-green-2 btn-lg btn-block btn-primary">Subscribe now</button>
                                                                            </div>
                                                                        </fieldset>

                                                                        <fieldset class="ach-form d-none">                                
                                                                            <div class="form-group">
                                                                                <h6 class="font-14">Card Number</h6>
                                                                                <input type="text" id="CardNumber" name="CardNumber" class="form-control" autocomplete="off">
                                                                            </div>

                                                                            <div class="form-group">
                                                                                <div class="form-row">
                                                                                    <div class="col">
                                                                                        <h6 class="font-14">Expiration Month</h6>
                                                                                        <select encrypt="true" class="form-control select-input" id="" name="CardExpirationMonth">
                                                                                            <option value="" selected="selected">Select one</option>
                                                                                                <option value="01">01</option>
                                                                                                <option value="02">02</option>
                                                                                                <option value="03">03</option>
                                                                                                <option value="04">04</option>
                                                                                                <option value="05">05</option>
                                                                                                <option value="06">06</option>
                                                                                                <option value="07">07</option>
                                                                                                <option value="08">08</option>
                                                                                                <option value="09">09</option>
                                                                                                <option value="10">10</option>
                                                                                                <option value="11">11</option>
                                                                                                <option value="12">12</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="col">
                                                                                        <h6 class="font-14">Expiration Year</h6>
                                                                                        <select encrypt="true" class="form-control select-input" id="" name="CardExpirationYear">
                                                                                            <option value="" selected="selected">Select one</option>
                                                                                            <option value="2019">2019</option>
                                                                                            <option value="2020">2020</option>
                                                                                            <option value="2021">2021</option>
                                                                                            <option value="2022">2022</option>
                                                                                            <option value="2023">2023</option>
                                                                                            <option value="2024">2024</option>
                                                                                            <option value="2025">2025</option>
                                                                                            <option value="2026">2026</option>
                                                                                            <option value="2027">2027</option>
                                                                                            <option value="2028">2028</option>
                                                                                            <option value="2029">2029</option>
                                                                                            <option value="2030">2030</option>
                                                                                            <option value="2031">2031</option>
                                                                                            <option value="2032">2032</option>
                                                                                            <option value="2033">2033</option>
                                                                                            <option value="2034">2034</option>
                                                                                            <option value="2035">2035</option>
                                                                                            <option value="2036">2036</option>
                                                                                            <option value="2037">2037</option>
                                                                                            <option value="2038">2038</option>
                                                                                            <option value="2039">2039</option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <div class="col">
                                                                                        <h6 class="font-14">Security Code</h6>
                                                                                            <input id="CardCVV" encrypt="true" type="text" value="" class="form-control card-cvv" name="CardCVVCode" maxlength="4">
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group">
                                                                                <div class="form-row">
                                                                                    <div class="col">
                                                                                        <h6 class="font-14">Postal Code</h6>
                                                                                        <input type="text" id="PostalCode" name="PostalCode" class="form-control" autocomplete="off">
                                                                                    </div>

                                                                                    <div class="col">
                                                                                        <h6 class="font-14">Country</h6>
                                                                                        <select encrypt="false" id="CCardCountry" class="form-control" default="CAN" name="CCardCountry">
                                                                                            <option value="" selected="selected">Select one</option>
                                                                                            <option value="AFG">Afghanistan</option>
                                                                                            <option value="ALA">Aland Islands</option>
                                                                                            <option value="ALB">Albania</option>
                                                                                            <option value="DZA">Algeria</option>
                                                                                            <option value="ASM">American Samoa</option>
                                                                                            <option value="AND">Andorra</option>
                                                                                            <option value="AGO">Angola</option>
                                                                                            <option value="AIA">Anguilla</option>
                                                                                            <option value="ATA">Antarctica</option>
                                                                                            <option value="ATG">Antigua and Barbuda</option>
                                                                                            <option value="ARG">Argentina</option>
                                                                                            <option value="ARM">Armenia</option>
                                                                                            <option value="ABW">Aruba</option>
                                                                                            <option value="AUS">Australia</option>
                                                                                            <option value="AUT">Austria</option>
                                                                                            <option value="AZE">Azerbaijan</option>
                                                                                            <option value="BHS">Bahamas</option>
                                                                                            <option value="BHR">Bahrain</option>
                                                                                            <option value="BGD">Bangladesh</option>
                                                                                            <option value="BRB">Barbados</option>
                                                                                            <option value="BLR">Belarus</option>
                                                                                            <option value="BEL">Belgium</option>
                                                                                            <option value="BLZ">Belize</option>
                                                                                            <option value="BEN">Benin</option>
                                                                                            <option value="BMU">Bermuda</option>
                                                                                            <option value="BTN">Bhutan</option>
                                                                                            <option value="BOL">Bolivia</option>
                                                                                            <option value="BES">Bonaire, Sint Eustatius and Saba</option>
                                                                                            <option value="BIH">Bosnia and Herzegovina</option>
                                                                                            <option value="BWA">Botswana</option>
                                                                                            <option value="BVT">Bouvet Island</option>
                                                                                            <option value="BRA">Brazil</option>
                                                                                            <option value="IOT">British Indian Ocean Territory</option>
                                                                                            <option value="VGB">British Virgin Islands</option>
                                                                                            <option value="BRN">Brunei</option>
                                                                                            <option value="BGR">Bulgaria</option>
                                                                                            <option value="BFA">Burkina Faso</option>
                                                                                            <option value="BDI">Burundi</option>
                                                                                            <option value="KHM">Cambodia</option>
                                                                                            <option value="CMR">Cameroon</option>
                                                                                            <option value="CAN">Canada</option>
                                                                                            <option value="CPV">Cape Verde</option>
                                                                                            <option value="CYM">Cayman Islands</option>
                                                                                            <option value="CAF">Central African Republic</option>
                                                                                            <option value="TCD">Chad</option>
                                                                                            <option value="CHL">Chile</option>
                                                                                            <option value="CHN">China</option>
                                                                                            <option value="CXR">Christmas Island</option>
                                                                                            <option value="CCK">Cocos Islands</option>
                                                                                            <option value="COL">Colombia</option>
                                                                                            <option value="COM">Comoros</option>
                                                                                            <option value="COG">Congo</option>
                                                                                            <option value="COK">Cook Islands</option>
                                                                                            <option value="CRI">Costa Rica</option>
                                                                                            <option value="CIV">Côte d'Ivoire</option>
                                                                                            <option value="HRV">Croatia</option>
                                                                                            <option value="CUB">Cuba</option>
                                                                                            <option value="CUW">Curaçao</option>
                                                                                            <option value="CYP">Cyprus</option>
                                                                                            <option value="CZE">Czech Republic</option>
                                                                                            <option value="DNK">Denmark</option>
                                                                                            <option value="DJI">Djibouti</option>
                                                                                            <option value="DMA">Dominica</option>
                                                                                            <option value="DOM">Dominican Republic</option>
                                                                                            <option value="ECU">Ecuador</option>
                                                                                            <option value="EGY">Egypt</option>
                                                                                            <option value="SLV">El Salvador</option>
                                                                                            <option value="GNQ">Equatorial Guinea</option>
                                                                                            <option value="ERI">Eritrea</option>
                                                                                            <option value="EST">Estonia</option>
                                                                                            <option value="ETH">Ethiopia</option>
                                                                                            <option value="FLK">Falkland Islands</option>
                                                                                            <option value="FRO">Faroe Islands</option>
                                                                                            <option value="FJI">Fiji</option>
                                                                                            <option value="FIN">Finland</option>
                                                                                            <option value="FRA">France</option>
                                                                                            <option value="GUF">French Guiana</option>
                                                                                            <option value="PYF">French Polynesia</option>
                                                                                            <option value="ATF">French Southern Territories</option>
                                                                                            <option value="GAB">Gabon</option>
                                                                                            <option value="GMB">Gambia</option>
                                                                                            <option value="GEO">Georgia</option>
                                                                                            <option value="DEU">Germany</option>
                                                                                            <option value="GHA">Ghana</option>
                                                                                            <option value="GIB">Gibraltar</option>
                                                                                            <option value="GRC">Greece</option>
                                                                                            <option value="GRL">Greenland</option>
                                                                                            <option value="GRD">Grenada</option>
                                                                                            <option value="GLP">Guadeloupe</option>
                                                                                            <option value="GUM">Guam</option>
                                                                                            <option value="GTM">Guatemala</option>
                                                                                            <option value="GGY">Guernsey</option>
                                                                                            <option value="GIN">Guinea</option>
                                                                                            <option value="GNB">Guinea-Bissau</option>
                                                                                            <option value="GUY">Guyana</option>
                                                                                            <option value="HTI">Haiti</option>
                                                                                            <option value="HMD">Heard Island And McDonald Islands</option>
                                                                                            <option value="HND">Honduras</option>
                                                                                            <option value="HKG">Hong Kong</option>
                                                                                            <option value="HUN">Hungary</option>
                                                                                            <option value="ISL">Iceland</option>
                                                                                            <option value="IND">India</option>
                                                                                            <option value="IDN">Indonesia</option>
                                                                                            <option value="IRN">Iran</option>
                                                                                            <option value="IRQ">Iraq</option>
                                                                                            <option value="IRL">Ireland</option>
                                                                                            <option value="IMN">Isle Of Man</option>
                                                                                            <option value="ISR">Israel</option>
                                                                                            <option value="ITA">Italy</option>
                                                                                            <option value="JAM">Jamaica</option>
                                                                                            <option value="JPN">Japan</option>
                                                                                            <option value="JEY">Jersey</option>
                                                                                            <option value="JOR">Jordan</option>
                                                                                            <option value="KAZ">Kazakhstan</option>
                                                                                            <option value="KEN">Kenya</option>
                                                                                            <option value="KIR">Kiribati</option>
                                                                                            <option value="XKX">Kosovo</option>
                                                                                            <option value="KWT">Kuwait</option>
                                                                                            <option value="KGZ">Kyrgyzstan</option>
                                                                                            <option value="LAO">Laos</option>
                                                                                            <option value="LVA">Latvia</option>
                                                                                            <option value="LBN">Lebanon</option>
                                                                                            <option value="LSO">Lesotho</option>
                                                                                            <option value="LBR">Liberia</option>
                                                                                            <option value="LBY">Libya</option>
                                                                                            <option value="LIE">Liechtenstein</option>
                                                                                            <option value="LTU">Lithuania</option>
                                                                                            <option value="LUX">Luxembourg</option>
                                                                                            <option value="MAC">Macao</option>
                                                                                            <option value="MKD">Macedonia</option>
                                                                                            <option value="MDG">Madagascar</option>
                                                                                            <option value="MWI">Malawi</option>
                                                                                            <option value="MYS">Malaysia</option>
                                                                                            <option value="MDV">Maldives</option>
                                                                                            <option value="MLI">Mali</option>
                                                                                            <option value="MLT">Malta</option>
                                                                                            <option value="MHL">Marshall Islands</option>
                                                                                            <option value="MTQ">Martinique</option>
                                                                                            <option value="MRT">Mauritania</option>
                                                                                            <option value="MUS">Mauritius</option>
                                                                                            <option value="MYT">Mayotte</option>
                                                                                            <option value="MEX">Mexico</option>
                                                                                            <option value="FSM">Micronesia</option>
                                                                                            <option value="MDA">Moldova</option>
                                                                                            <option value="MCO">Monaco</option>
                                                                                            <option value="MNG">Mongolia</option>
                                                                                            <option value="MNE">Montenegro</option>
                                                                                            <option value="MSR">Montserrat</option>
                                                                                            <option value="MAR">Morocco</option>
                                                                                            <option value="MOZ">Mozambique</option>
                                                                                            <option value="MMR">Myanmar</option>
                                                                                            <option value="NAM">Namibia</option>
                                                                                            <option value="NRU">Nauru</option>
                                                                                            <option value="NPL">Nepal</option>
                                                                                            <option value="NLD">Netherlands</option>
                                                                                            <option value="ANT">Netherlands Antilles</option>
                                                                                            <option value="NCL">New Caledonia</option>
                                                                                            <option value="NZL">New Zealand</option>
                                                                                            <option value="NIC">Nicaragua</option>
                                                                                            <option value="NER">Niger</option>
                                                                                            <option value="NGA">Nigeria</option>
                                                                                            <option value="NIU">Niue</option>
                                                                                            <option value="NFK">Norfolk Island</option>
                                                                                            <option value="MNP">Northern Mariana Islands</option>
                                                                                            <option value="PRK">North Korea</option>
                                                                                            <option value="NOR">Norway</option>
                                                                                            <option value="OMN">Oman</option>
                                                                                            <option value="PAK">Pakistan</option>
                                                                                            <option value="PLW">Palau</option>
                                                                                            <option value="PSE">Palestine</option>
                                                                                            <option value="PAN">Panama</option>
                                                                                            <option value="PNG">Papua New Guinea</option>
                                                                                            <option value="PRY">Paraguay</option>
                                                                                            <option value="PER">Peru</option>
                                                                                            <option value="PHL">Philippines</option>
                                                                                            <option value="PCN">Pitcairn</option>
                                                                                            <option value="POL">Poland</option>
                                                                                            <option value="PRT">Portugal</option>
                                                                                            <option value="PRI">Puerto Rico</option>
                                                                                            <option value="QAT">Qatar</option>
                                                                                            <option value="REU">Reunion</option>
                                                                                            <option value="ROU">Romania</option>
                                                                                            <option value="RUS">Russia</option>
                                                                                            <option value="RWA">Rwanda</option>
                                                                                            <option value="BLM">Saint Barthélemy</option>
                                                                                            <option value="SHN">Saint Helena</option>
                                                                                            <option value="KNA">Saint Kitts And Nevis</option>
                                                                                            <option value="LCA">Saint Lucia</option>
                                                                                            <option value="MAF">Saint Martin</option>
                                                                                            <option value="SPM">Saint Pierre And Miquelon</option>
                                                                                            <option value="VCT">Saint Vincent And The Grenadines</option>
                                                                                            <option value="WSM">Samoa</option>
                                                                                            <option value="SMR">San Marino</option>
                                                                                            <option value="STP">Sao Tome And Principe</option>
                                                                                            <option value="SAU">Saudi Arabia</option>
                                                                                            <option value="SEN">Senegal</option>
                                                                                            <option value="SRB">Serbia</option>
                                                                                            <option value="SYC">Seychelles</option>
                                                                                            <option value="SLE">Sierra Leone</option>
                                                                                            <option value="SGP">Singapore</option>
                                                                                            <option value="SXM">Sint Maarten (Dutch part)</option>
                                                                                            <option value="SVK">Slovakia</option>
                                                                                            <option value="SVN">Slovenia</option>
                                                                                            <option value="SLB">Solomon Islands</option>
                                                                                            <option value="SOM">Somalia</option>
                                                                                            <option value="ZAF">South Africa</option>
                                                                                            <option value="SGS">South Georgia And The South Sandwich Islands</option>
                                                                                            <option value="KOR">South Korea</option>
                                                                                            <option value="SSD">South Sudan</option>
                                                                                            <option value="ESP">Spain</option>
                                                                                            <option value="LKA">Sri Lanka</option>
                                                                                            <option value="SDN">Sudan</option>
                                                                                            <option value="SUR">Suriname</option>
                                                                                            <option value="SJM">Svalbard And Jan Mayen</option>
                                                                                            <option value="SWZ">Swaziland</option>
                                                                                            <option value="SWE">Sweden</option>
                                                                                            <option value="CHE">Switzerland</option>
                                                                                            <option value="SYR">Syria</option>
                                                                                            <option value="TWN">Taiwan</option>
                                                                                            <option value="TJK">Tajikistan</option>
                                                                                            <option value="TZA">Tanzania</option>
                                                                                            <option value="THA">Thailand</option>
                                                                                            <option value="COD">The Democratic Republic Of Congo</option>
                                                                                            <option value="TLS">Timor-Leste</option>
                                                                                            <option value="TGO">Togo</option>
                                                                                            <option value="TKL">Tokelau</option>
                                                                                            <option value="TON">Tonga</option>
                                                                                            <option value="TTO">Trinidad and Tobago</option>
                                                                                            <option value="TUN">Tunisia</option>
                                                                                            <option value="TUR">Turkey</option>
                                                                                            <option value="TKM">Turkmenistan</option>
                                                                                            <option value="TCA">Turks And Caicos Islands</option>
                                                                                            <option value="TUV">Tuvalu</option>
                                                                                            <option value="VIR">U.S. Virgin Islands</option>
                                                                                            <option value="UGA">Uganda</option>
                                                                                            <option value="UKR">Ukraine</option>
                                                                                            <option value="ARE">United Arab Emirates</option>
                                                                                            <option value="GBR">United Kingdom</option>
                                                                                            <option value="USA">United States</option>
                                                                                            <option value="UMI">United States Minor Outlying Islands</option>
                                                                                            <option value="URY">Uruguay</option>
                                                                                            <option value="UZB">Uzbekistan</option>
                                                                                            <option value="VUT">Vanuatu</option>
                                                                                            <option value="VAT">Vatican</option>
                                                                                            <option value="VEN">Venezuela</option>
                                                                                            <option value="VNM">Vietnam</option>
                                                                                            <option value="WLF">Wallis And Futuna</option>
                                                                                            <option value="ESH">Western Sahara</option>
                                                                                            <option value="YEM">Yemen</option>
                                                                                            <option value="ZMB">Zambia</option>
                                                                                            <option value="ZWE">Zimbabwe</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <% if (Request.QueryString("plan") = "first-location-monthly") %>
                                                                                <div class="form-group card text-center background-gray-1 p-4">
                                                                                    <b>You have selected the Monthly Plan</b>
                                                                                </div>
                                                                            <% end if %>
                                                                            <% if (Request.QueryString("plan") = "first-location-annual")  %>
                                                                                <div class="form-group card text-center background-gray-1 p-4">
                                                                                    <b>You have selected the Annual Plan</b>
                                                                                </div>
                                                                            <% end if %>
                                                                            <% if (Request.QueryString("plan") = "first-location-two-year") %>
                                                                                <div class="form-group card text-center background-gray-1 p-4">
                                                                                    <b>You have selected the Biennial Plan</b>
                                                                                </div>
                                                                            <% end if %>

                                                                            <div class="form-group mb-1">
                                                                                <button name="Step2Submit" type="submit" class="btn btn-green-2 btn-lg btn-block btn-primary">Subscribe now</button>
                                                                            </div>
                                                                        </fieldset>                                
                                                                        <b class="font-13">By proceeding, you agree to the <a href="/terms-of-use.aspx">Terms of Use</a> and <a href="/privacy-policy">Privacy policy</a>.</b>
                                                                    </div>
                                                                    <div class="col-xs-12 col-md-5">
                                                                        <div class="card background-gray-1 p-4 mb-3"><b>If you have more than one location, we will call you to discuss and finalize pricing.</b></div>
                                                                        <div class="card background-blue-1 p-4 mb-3"><b>To start, we will only be charging the setup fee. The process takes 3 to 5 business days to complete. At that point, we bill the rest.</b></div>
                                                                        <div class="card background-green-1 p-4 mb-3"><b>POWER UP YOUR ONLINE ORDERING WITH DATA DIGITS. Someone will be reaching out to you separately, to see if you are interested in signing up.</b></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>

            <%
                Response.WriteFile ("inc\footer-2.inc")
            %>
        </div><!-- #wrapper -->

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            jQuery(document).ready(function($){
                $('.mobile-nav-trigger').click(function(){
                    $(this).toggleClass('open');
                    $('.wrapper').toggleClass('body-slide');
                });

                if ($('body').hasClass('index-page')) {
                    $('nav.main-nav > ul > li.home-link > a').addClass('current');
                }

                $('ul.nav-pills li a').click(function (e) {
                    $('ul.nav-pills li.active').removeClass('active');
                    $(this).parent().addClass('active');
                    $(this).addClass('btn-white');
                });

                $('.mobile-nav-trigger').click(function(){
                    $(this).toggleClass('open');
                    $('.wrapper').toggleClass('body-slide');
                });

                if ($('body').hasClass('index-page')) {
                    $('nav.main-nav > ul > li.home-link > a').addClass('current');
                }

                $('ul.nav-pills li a').click(function (e) {
                    $('ul.nav-pills li.active').removeClass('active');
                    $(this).parent().addClass('active');
                    $(this).addClass('btn-white');
                });

                $('.ach-btn').click(function(){
                    $(this).addClass('active');
                    $('input[name="PaymentType"]').val('ach');
                    $('.cc-btn').removeClass('active');
                    $('.ach-form').removeClass('d-block').addClass('d-none');
                    $('.cc-form').removeClass('d-none').addClass('d-block');
                });

                $('.cc-btn').click(function(){
                    $(this).addClass('active');
                    $('input[name="PaymentType"]').val('cc');
                    $('.ach-btn').removeClass('active');
                    $('.ach-form').removeClass('d-none').addClass('d-block');
                    $('.cc-form').removeClass('d-block').addClass('d-none');
                });

                $(".carousel").carousel();


                // validate form on keyup and submit
                var v = jQuery("#basicform1").validate({
                    rules: {
                        FirstName: {
                          required: true,
                          minlength: 2,
                          maxlength: 16
                        },                     
                        LastName: {
                          required: true,
                          minlength: 2,
                          maxlength: 16
                        },
                        Email: {
                          required: true,
                          minlength: 2,
                          email: true,
                          maxlength: 100,
                        },
                        Password: {
                          required: true,
                          minlength: 6,
                          maxlength: 15,
                        },
                        upass2: {
                          required: true,
                          minlength: 6,
                          equalTo: "#upass1",
                        }

                    },
                    errorElement: "span",
                    errorClass: "help-inline-error",
                    submitHandler: function(form) {
                        console.log('Triggered');
                        //form.preventDefault();
                        console.log(this);

                        if (this.submitButton.innerHTML == 'Continue') {
                            $(".carousel").carousel(1);
                            return false;
                        } else {
                            form.submit();
                        }
                    }
                });

                $(".open1").click(function() {
                    if (v.form()) {
                        $(".frm").hide("fast");
                        $("#sf2").show("slow");
                    }
                });

                $(".open2").click(function() {
                    if (v.form()) {
                        $(".frm").hide("fast");
                        $("#sf3").show("slow");
                    }
                });
                
                $(".open3").click(function() {
                    if (v.form()) {
                        $("#loader").show();
                        setTimeout(function(){
                            $("#basicform").html('<h2>Thanks for your time.</h2>');
                        }, 1000);
                    return false;
                    }
                });
                
                $(".back2").click(function() {
                    $(".frm").hide("fast");
                    $("#SignupStepOne").show("slow");
                });

                $(".back3").click(function() {
                    $(".frm").hide("fast");
                    $("#sf2").show("slow");
                });

                
            });
        </script>
    </body>
</html>
