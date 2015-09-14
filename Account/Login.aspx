<%@ Page Title="Log in" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.vb" Inherits="Account_Login" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section id="blocks-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 block-content">
                    <h1><%: Title %></h1>
                    <h2 style="border: none;">Use a local account to log in</h2>
                    <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
                        <LayoutTemplate>
                            <p style="color: red;">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                            <div class="form-group" style="margin-top: 20px;">
                                <div class="row">
                                    <div class="col-sm-2">
                                        <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                                    </div>
                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" class="form-control" ID="UserName" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                            CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-2">
                                        <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                    </div>
                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="Password" class="form-control" TextMode="Password" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                            CssClass="field-validation-error" ErrorMessage="The password field is required." />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <label class="checkbox-inline">
                                            <asp:CheckBox runat="server" ID="RememberMe" />
                                            <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                        </label>

                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Button runat="server" CssClass="btn btn-secondary pull-right" CommandName="Login" Text="Log in" />
                                    </div>
                                </div>
                                </div>
                        </LayoutTemplate>
                    </asp:Login>
                    <p style="margin-top: 20px;">
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
                        if you don't have an account.
                    </p>
                    <section id="socialLoginForm">
                        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
                    </section>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
