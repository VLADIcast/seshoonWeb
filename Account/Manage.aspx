<%@ Page Title="Manage Account" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Manage.aspx.vb" Inherits="Account_Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<%@ Import Namespace="Microsoft.AspNet.Membership.OpenAuth" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="Server">
    <section id="blocks-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 block-content">
                    <h1><%: Title %></h1>

                    <section id="passwordForm">
                        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
                            <p class="message-success"><%: SuccessMessageText %></p>
                        </asp:PlaceHolder>

                        <p>You're logged in as <strong><%: User.Identity.Name %></strong>.</p>

                        <asp:PlaceHolder runat="server" ID="setPassword" Visible="false">
                            <p>
                                You do not have a local password for this site. Add a local
                password so you can log in without an external login.
                            </p>

                            <h2>Set password form</h2>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <asp:Label runat="server" AssociatedControlID="password">Password</asp:Label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" class="form-control" ID="password" TextMode="Password" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                                            CssClass="field-validation-error" ErrorMessage="The password field is required."
                                            Display="Dynamic" ValidationGroup="SetPassword" />

                                        <asp:Label runat="server" ID="newPasswordMessage" CssClass="field-validation-error"
                                            AssociatedControlID="password" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <asp:Label runat="server" AssociatedControlID="confirmPassword">Confirm password</asp:Label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" class="form-control" ID="confirmPassword" TextMode="Password" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                                            CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required."
                                            ValidationGroup="SetPassword" />
                                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confirmPassword"
                                            CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match."
                                            ValidationGroup="SetPassword" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:Button runat="server" Text="Set Password" CssClass="btn btn-secondary pull-right" ValidationGroup="SetPassword" OnClick="setPassword_Click" />
                                </div>
                            </div>
                        </asp:PlaceHolder>

                        <asp:PlaceHolder runat="server" ID="changePassword" Visible="false">
                            <h3>Update password</h3>
                            <asp:ChangePassword runat="server" CancelDestinationPageUrl="~/" ViewStateMode="Disabled" RenderOuterTable="false" SuccessPageUrl="Manage?m=ChangePwdSuccess">
                                <ChangePasswordTemplate>
                                    <p class="validation-summary-errors">
                                        <asp:Literal runat="server" ID="FailureText" />
                                    </p>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword">Current password</asp:Label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox runat="server" ID="CurrentPassword" CssClass="form-control" TextMode="Password" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword"
                                                    CssClass="field-validation-error" ErrorMessage="The current password field is required."
                                                    ValidationGroup="ChangePassword" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword">New password</asp:Label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox runat="server" ID="NewPassword" CssClass="form-control" TextMode="Password" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                                                    CssClass="field-validation-error" ErrorMessage="The new password is required."
                                                    ValidationGroup="ChangePassword" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword">Confirm new password</asp:Label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox runat="server" ID="ConfirmNewPassword" CssClass="form-control" TextMode="Password" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword"
                                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Confirm new password is required."
                                                    ValidationGroup="ChangePassword" />
                                                <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The new password and confirmation password do not match."
                                                    ValidationGroup="ChangePassword" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <asp:Button runat="server" CssClass="btn btn-secondary pull-right" CommandName="ChangePassword" Text="Change password" ValidationGroup="ChangePassword" />
                                        </div>
                                    </div>
                                </ChangePasswordTemplate>
                            </asp:ChangePassword>
                        </asp:PlaceHolder>
                    </section>

                    <section id="externalLoginsForm">

                        <asp:ListView runat="server" ID="externalLoginsList" ViewStateMode="Disabled"
                            DataKeyNames="ProviderName,ProviderUserId" OnItemDeleting="externalLoginsList_ItemDeleting">

                            <LayoutTemplate>
                                <h3>Registered external logins</h3>
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Service</th>
                                            <th>User Name</th>
                                            <th>Last Used</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr runat="server" id="itemPlaceholder"></tr>
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>

                                    <td><%# HttpUtility.HtmlEncode(Item(Of OpenAuthAccountData)().ProviderDisplayName) %></td>
                                    <td><%# HttpUtility.HtmlEncode(Item(Of OpenAuthAccountData)().ProviderUserName) %></td>
                                    <td><%# HttpUtility.HtmlEncode(ConvertToDisplayDateTime(Item(Of OpenAuthAccountData).LastUsedUtc)) %></td>
                                    <td>
                                        <asp:Button runat="server" Text="Remove" CommandName="Delete" CausesValidation="false"
                                            ToolTip='<%# "Remove this " & Item(Of OpenAuthAccountData)().ProviderDisplayName & " login from your account" %>'
                                            Visible="<%# CanRemoveExternalLogins %>" />
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:ListView>

                        <h3>Add an external login</h3>
                        <uc:OpenAuthProviders runat="server" ReturnUrl="~/Account/Manage" />
                    </section>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
