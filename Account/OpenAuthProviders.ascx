<%@ Control Language="VB" AutoEventWireup="false" CodeFile="OpenAuthProviders.ascx.vb" Inherits="Account_OpenAuthProviders" %>
<%@ Import Namespace="Microsoft.AspNet.Membership.OpenAuth" %>

    
    <asp:ListView runat="server" ID="providersList" ViewStateMode="Disabled">
        <ItemTemplate>
            <button type="submit" name="provider" class="btn btn-secondary" style="background-color: #3b5998;" value="<%# HttpUtility.HtmlAttributeEncode(Item(Of ProviderDetails)().ProviderName) %>"
                title="Log in using your <%# HttpUtility.HtmlAttributeEncode(Item(Of ProviderDetails)().ProviderDisplayName) %> account.">
                Log in with <%# HttpUtility.HtmlEncode(Item(Of ProviderDetails)().ProviderDisplayName) %>
            </button>
        </ItemTemplate>
    
        <EmptyDataTemplate>
            <div class="message-info">
                <p>There are no external authentication services configured. See <a href="http://go.microsoft.com/fwlink/?LinkId=252803">this article</a> for details on setting up this ASP.NET application to support logging in via external services.</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
