<%@ Page Title="Seshoon" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Seshoon.aspx.vb" Inherits="Seshoon" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
            <section id="blocks-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 block-content">
                            <h1>Awesome Kalee - Glendale, CA USA</h1>
                            <div class="row">
                                <div class="col-sm-6">
                                    <h3>
                                        Date: 9/23/15<br />
                                        Time: 9:00PM<br />
                                        Band slots available: 3<br />
                                        Signup deadline: 9/14/15 9:00PM
                                    </h3>
                                    <ul id="countdown" style="text-align:left;">
                                        <li>
                                            <span class="days time-font">00</span>
                                            <p>days </p>
                                        </li>
                                        <li>
                                            <span class="hours time-font">00</span>
                                            <p class="">hours </p>
                                        </li>
                                        <li>
                                            <span class="minutes time-font">00</span>
                                            <p class="">minutes</p>
                                        </li>
                                        <li>
                                            <span class="seconds time-font">00</span>
                                            <p class="">seconds</p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-6">
                                    <h3>PERFORM AT THE EVENT</h3>
                                    <a href="/Account/BandCreate" class="btn btn-primary">Start a band <i class="fa fa-angle-right"></i></a><br />
                                    <a href="Bandlist" class="btn btn-primary" style="margin-top: 10px;">Join a band <i class="fa fa-angle-right"></i></a>
                                </div>
                                <div class="col-sm-12">

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 block-content">

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="contact-text">
                                        <h2>Bands Playing</h2>
                                        <address>
                                            <b>Misprintz</b>
                                            <ul>
                                                <li><a href="Artist">Bill Elberg (Lead Guitar, Band Leader)</a></li>
                                                <li><a href="Artist">Mike Samonek (Bass Guitar)</a></li>
                                                <li><a href="Artist">Tom Halloran (Vocals)</a></li>
                                                <li><a href="Artist">Andrew Hillary (Drums)</a></li>
                                            </ul>
                                            <b>The Shmoos</b>
                                            <ul>
                                                <li><a href="Artist">Joe Bob (Lead Guitar, Band Leader)</a></li>
                                                <li><a href="Artist">Lou Smith (Bass Guitar)</a></li>
                                                <li><a href="Artist">Ziggy Stardust (Vocals)</a></li>
                                            </ul>
                                        </address>
                                        <p><a href="bandlist.html" style="text-transform: uppercase;">3 BANDS FORMING. Click here to join a band</a></p>
                                        <h2>Available Equipment</h2>
                                        PA System<br />
                                        Drums<br />
                                        Bass Guitar<br />
                                        Microphones
                                        <h2>Location</h2>
                                        <address>
                                            424 Hawthorne Street<br>
                                            Glendale, CA 91204<br>
                                            United States<br />
                                            E-mail: info@seshoon.com<br>
                                            Phone: +1 (818) 456 7890
                                        </address>
                                        <h2>Map</h2>
                                        <div id="map">
                                            <div id="gmap-wrap">
                                                <div id="gmap">
                                                </div>
                                            </div>
                                        </div><!--/#map-->
                                        <div id="getdir"></div>
                                    </div>

                                </div>
                                <div class="col-sm-6">
                                    <div class="contact-text">
                                        <h2>Event Info</h2>
                                        <p>
                                            Lorem ipsum dolor sit amet, viris suscipit erroribus cu per, consul lobortis eu pri, alii nostro cu nec. Ei mel modus consulatu, no usu vero percipitur. Sit idque verterem et. Pro an ipsum omnium expetenda, te dicta lobortis assentior his, ius eu utinam tractatos partiendo.
                                        </p><img src="/assets/images/eventpic.jpg" style="max-width: 100%;" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>           
</asp:Content>