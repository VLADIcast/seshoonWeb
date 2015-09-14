<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Artist.aspx.vb" Inherits="Artist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <section id="blocks-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 block-header">
                    <h1>Philip Smith</h1>
                    <span>Glendale, CA USA</span>
                </div>
            </div>
            <div class="row">

                <div class="col-sm-12 block-content">
                    <div class="row">
                        <div class="col-sm-3" style="padding-top: 24px;">
                            <img src="/assets/images/artist.jpg" />
                        </div>
                        <div class="col-sm-9">
                            <div class="contact-text">
                                <h2>About</h2>
                                <p>
                                    I'm a weekend warrior. I am NOT LOOKING TO MAKE A LIVING FROM MUSIC.  I have a nice job, but I love to play music and I'm pretty damn good.
                                            I'm in 2 bands now, but always looking for a cool fun gig. I've played Death, Thrash, classic and groove metal, top 40, classic rock of all types, hip hop/soul/r&amp;b, and the occasional blues.
                                </p>
                                <p>
                                    As for metal, I'm mostly into melodic groove, Pantera, Machine Head, Testament, Lamb of God, Devil Driver etc...<br />
                                    Classic rock is a favorite, I'd like to stay away from the usual suspects, Bad Co, sweet home, etc.. And play deeper cuts that are still highly recognizable.
                                </p>
                                <p>
                                    I'd love to do a complete funky set too, just danceable tune after another.
                                            Looking to have a good time and help others do the same.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 block-content">
                    <div id="media"></div>
                    <div class="row">
                        <div class="col-sm-5">
                            <h2>EQUIPMENT</h2>
                            <p>
                                Peavey 80 watt<br />
                                Marshall 150 watt<br />
                                Js100. Ibenez<br />
                                Gsr bass ibenez<br />
                                Ibenez acoustic bass<br />
                                2 microphones<br />
                                Acoustic practice bass amp 15 watt, &amp; create 30 watt guitar amp.<br />
                                With the Dime D100c on the way. &amp; more guitars to come that meet requirements.
                            </p>
                        </div>
                        <div class="col-sm-7">
                            
                            
                            <h2>Send a message</h2>
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
                                    <button type="submit" class="btn btn-secondary pull-right">Send</button>
                                </div>
                           
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>

</asp:Content>

