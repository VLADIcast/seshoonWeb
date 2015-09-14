
Partial Class Controls_header
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Request.IsAuthenticated) Then
            LinkLogin.Text = "Logout"
            secMenuLinks.Visible = True
        End If
    End Sub

    Protected Sub LinkLogin_Click(sender As Object, e As EventArgs) Handles LinkLogin.Click
        If (Request.IsAuthenticated) Then
            FormsAuthentication.SignOut()
            Response.Redirect("~/")
        Else
            Response.Redirect("~/Account/Login")
        End If

    End Sub
End Class
