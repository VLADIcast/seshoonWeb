<%@ Control Language="VB" AutoEventWireup="false" CodeFile="header.ascx.vb" Inherits="Controls_header" %>

<header id="header" role="banner">
    <div class="main-nav fixed-menu">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">
                        <img class="img-responsive" src="/assets/images/logo.png" alt="logo">
                    </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="no-scroll"><a href="/Events">Find A Seshoon</a></li>
                        <li class="no-scroll"><a href="#">Start A Seshoon</a></li>
                        <asp:PlaceHolder ID="secMenuLinks" runat="server" Visible="False">
                            <li class="no-scroll"><a href="/Account/MySeshoons">My Seshoons</a></li>
                            <li class="no-scroll"><a href="/Account/Manage">My Account</a></li>
                        </asp:PlaceHolder>
                        <li class="no-scroll"><asp:LinkButton ID="LinkLogin" runat="server" CausesValidation="False" onclick="LinkLogin_Click" Text="Login"></asp:LinkButton></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
