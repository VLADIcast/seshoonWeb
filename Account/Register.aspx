<%@ Page Title="Register" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.vb" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section id="blocks-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 block-content">
                    <h1><%: Title %></h1>
                    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
                        <LayoutTemplate>
                            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
                            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
                        </LayoutTemplate>
                        <WizardSteps>
                            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                                <ContentTemplate>
                                    <p class="message-info">
                                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                                    </p>
                                    <p style="color: red;">
                                        <asp:Literal runat="server" ID="ErrorMessage" />
                                    </p>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox runat="server" class="form-control" ID="UserName" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <asp:Label runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox runat="server" class="form-control" ID="Email" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox runat="server" class="form-control" ID="Password" TextMode="Password" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox runat="server" class="form-control" ID="ConfirmPassword" TextMode="Password" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                            </div>
                                        </div>
                                        </div>
                                         <div class="row">
                                <div class="col-sm-12">
                                    <asp:Button runat="server" CssClass="btn btn-secondary pull-right" CommandName="MoveNext" Text="Register" />
                                    </div>
                                             </div>
                                </ContentTemplate>
                                <CustomNavigationTemplate />
                            </asp:CreateUserWizardStep>
                        </WizardSteps>
                    </asp:CreateUserWizard>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
