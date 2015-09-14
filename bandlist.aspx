<%@ Page Title="Band List" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Bandlist.aspx.vb" Inherits="Bandlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


            <section id="blocks-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 block-header">
                            <h1>Awesome Kalee - Glendale, CA USA</h1>
                            <span>Bands</span>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-12 block-content">

                            <div class="row">
                                <div class="col-sm-8">
                                    <h4>The Shmoos</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="contact-text">
                                        <h2>Current Band Members</h2>
                                        <address>
                                            <ul>
                                                <li><a href="Artist">Joe Bob (Lead Guitar, Band Leader)</a></li>
                                                <li><a href="Artist">Lou Smith (Bass Guitar)</a></li>
                                                <li><a href="Artist">Ziggy Stardust (Vocals)</a></li>
                                            </ul>
                                        </address>
                                        
                                        
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="contact-text">
                                        <h2>Band members wanted</h2>
                                        <address>
                                            <ul>
                                                <li>Drums</li>
                                                <li>Background Vocals</li>
                                            </ul>
                                        </address>
                                    </div>
                                    <a href="band.html" class="btn btn-primary">Join this band <i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <h2>Songlist</h2>
                                    <div class="panel-group" id="accordion"></div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>

</asp:Content>

