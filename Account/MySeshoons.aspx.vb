
Partial Class Account_MySeshoons
    Inherits Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Get user id
        Dim shuser As MembershipUser = Membership.GetUser(User.Identity.Name)
        Dim userID As String = shuser.ProviderUserKey.ToString()
        'Response.Write("<h1>" & userID & "</h1>")
    End Sub

End Class
