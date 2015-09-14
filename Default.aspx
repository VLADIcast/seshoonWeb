<%@ Page Title="Seshoon" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section id="about">
        <div class="guitar2">
            <img class="img-responsive" src="/assets/images/guitar2.jpg" alt="guitar">
        </div>
        <div class="about-content">
            <h2>What is Seshoon?</h2>
            <p>
                Seshoon matches musicians, hosts, fans, and venues. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. Lorem ipsum dolor sit amet, viris suscipit erroribus cu per, consul lobortis eu pri, alii nostro cu nec. Ei mel modus consulatu, no usu vero percipitur. Sit idque verterem et. Pro an ipsum omnium expetenda, te dicta lobortis assentior his, ius eu utinam tractatos partiendo.
            </p>
            <a href="events.html" class="btn btn-primary" style="margin-right: 10px;">Find a Seshoon <i class="fa fa-angle-right"></i></a><a href="#" class="btn btn-primary">Start a Seshoon <i class="fa fa-angle-right"></i></a>
        </div>
    </section>
    <section id="explore">
        <div class="container">
            <div class="row">
                <div class="watch">
                    <img class="img-responsive" src="/assets/images/watch.png" alt="">
                </div>
                <div class="col-md-4 col-md-offset-2 col-sm-5">
                    <h2>our next seshoon in</h2>
                </div>
                <div class="col-sm-7 col-md-6">
                    <ul id="countdown">
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
            </div>
            <div class="cart">
                <a href="event.html"><i class="fa fa-music"></i><span>Seshoon Info</span></a>
            </div>
        </div>
    </section>
    <section id="event">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-9">
                    <h2>upcoming seshoons</h2>
                    <ul class="none events-list" style="padding-bottom: 50px;">
                        <li>
                            <a href="event.html">
                                <span class="date">08/10/15</span><br />
                                <span class="title">Power Bass Festival <span class="details">Melbourne, Australia</span></span>
                                <span class="plus-button"></span>
                            </a>
                        </li>
                        <li>
                            <a href="event.html">
                                <span class="date">10/11/15</span><br />
                                <span class="title">Made in Glitch! <span class="details">London, UK</span></span>
                                <span class="plus-button"></span>
                            </a>
                        </li>
                        <li>
                            <a href="event.html">
                                <span class="date">30/11/15</span><br />
                                <span class="title">Sanctuary Outdoor Festival <span class="details">Warsaw, Poland</span></span>
                                <span class="plus-button"></span>
                            </a>
                        </li>
                        <li>
                            <a href="event.html">
                                <span class="date">02/12/15</span><br />
                                <span class="title">Sunandbass <span class="details">Sardinia, Italy</span></span>
                                <span class="plus-button"></span>
                            </a>
                        </li>
                        <li>
                            <a href="event.html">
                                <span class="date">11/12/15</span><br />
                                <span class="title">Amsterdam Dance Event <span class="details">Amsterdam, Holand</span></span>
                                <span class="plus-button"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="guitar">
                    <img class="img-responsive" src="/assets/images/guitar.png" alt="guitar">
                </div>
            </div>
        </div>
    </section>
    <section id="contact">
        <div class="contact-section">
            <div class="ear-piece">
                <img class="img-responsive" src="/assets/images/ear-piece.png" alt="">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3 col-sm-offset-4">
                        <div class="contact-text">
                            <h3>Contact</h3>
                            <address>
                                123 Main Street,<br>
                                Hollywood, CA 91234<br>
                                United States<br />
                                E-mail: info@seshoon.com<br>
                                Phone: +1 (818) 456 7890<br>
                                Fax: +1 (818) 456 7891
                            </address>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div id="contact-section">
                            <h3>Send a message</h3>
                            <div class="status alert alert-success" style="display: none"></div>
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control" required="required" placeholder="Email ID">
                            </div>
                            <div class="form-group">
                                <textarea name="message" id="message" required="required" class="form-control" rows="4" placeholder="Enter your message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary pull-right">Send</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
