﻿Imports Microsoft.AspNet.Membership.OpenAuth

Public Module AuthConfig
    Sub RegisterOpenAuth()
        ' See http://go.microsoft.com/fwlink/?LinkId=252803 for details on setting up this ASP.NET
        ' application to support logging in via external services.

        'OpenAuth.AuthenticationClients.AddTwitter(
        '    consumerKey:= "your Twitter consumer key",
        '    consumerSecret:= "your Twitter consumer secret")

        OpenAuth.AuthenticationClients.AddFacebook(
            appId:="402302609836617",
            appSecret:="f275aac573555a961664f42f807d3be1")

        'OpenAuth.AuthenticationClients.AddMicrosoft(
        '    clientId:= "your Microsoft account client id",
        '    clientSecret:= "your Microsoft account client secret")

        
        'OpenAuth.AuthenticationClients.AddGoogle()
    End Sub
End Module

