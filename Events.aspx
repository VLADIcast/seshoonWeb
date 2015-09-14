<%@ Page Title="Seshoons" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Events.aspx.vb" Inherits="Events" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <section id="blocks-wrapper">
                <div class="container events">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 block-header">
                            <h1>Upcoming Seshoons</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 block-content">
                            <ul class="none events-list">
                                <!-- event -->
                                <li>
                                    <a href="Seshoon">
                                        <span class="date">08/10/15</span><br />
                                        <span class="title">Power Bass Festival <span class="details">Melbourne, Australia</span></span>
                                        <span class="plus-button"></span>
                                    </a>
                                </li>
                                <!-- /event -->
                                <!-- event -->
                                <li>
                                    <a href="event.html">
                                        <span class="date">10/11/15</span><br />
                                        <span class="title">Made in Glitch! <span class="details">London, UK</span></span>
                                        <span class="plus-button"></span>
                                    </a>
                                </li>
                                <!-- /event -->
                                <!-- event -->
                                <li>
                                    <a href="event.html">
                                        <span class="date">30/11/15</span><br />
                                        <span class="title">Sanctuary Outdoor Festival <span class="details">Warsaw, Poland</span></span>
                                        <span class="plus-button"></span>
                                    </a>
                                </li>
                                <!-- /event -->
                                <!-- event -->
                                <li>
                                    <a href="event.html">
                                        <span class="date">02/12/15</span><br />
                                        <span class="title">Sunandbass <span class="details">Sardinia, Italy</span></span>
                                        <span class="plus-button"></span>
                                    </a>
                                </li>
                                <!-- /event -->
                                <!-- event -->
                                <li>
                                    <a href="event.html">
                                        <span class="date">11/12/15</span><br />
                                        <span class="title">Amsterdam Dance Event <span class="details">Amsterdam, Holand</span></span>
                                        <span class="plus-button"></span>
                                    </a>
                                </li>
                                <!-- /event -->
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
</asp:Content>