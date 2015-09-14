<%@ Page Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="RegisterExternalLogin.aspx.vb" Inherits="Account_RegisterExternalLogin" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="Server">
    <section id="blocks-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 block-content">
                    <h1>Register with your <%: ProviderDisplayName %> account</h1>
                    <h2><%: ProviderUserName %></h2>
                    <asp:Label runat="server" ID="providerMessage" CssClass="field-validation-error" />
                    <asp:PlaceHolder runat="server" ID="userNameForm">
                        <h2>Association Form</h2>
                        <p>
                            You've authenticated with <strong><%: ProviderDisplayName %></strong> as
                <strong><%: ProviderUserName %></strong>. Please enter a user name below for the current site
                and click the Log in button.
                        </p>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3">
                                    <asp:Label runat="server" AssociatedControlID="userName">User name</asp:Label>
                                </div>
                                <div class="col-sm-9">
                                    <asp:TextBox runat="server" ID="userName" />
                                    <asp:RequiredFieldValidator runat="server" class="form-control" ControlToValidate="userName"
                                        Display="Dynamic" ErrorMessage="User name is required" ValidationGroup="NewUser" />
                                    <asp:Label runat="server" ID="userNameMessage" CssClass="field-validation-error" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <asp:Button runat="server" Text="Log in" CssClass="btn btn-secondary pull-right" ValidationGroup="NewUser" OnClick="logIn_Click" />
                                <asp:Button runat="server" Text="Cancel" CssClass="btn btn-secondary pull-right" CausesValidation="false" OnClick="cancel_Click" />
                            </div>
                        </div>
                    </asp:PlaceHolder>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
