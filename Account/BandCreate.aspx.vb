
Partial Class Account_BandCreate
    Inherits Page

    Private userID As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim sb As New System.Text.StringBuilder()
        sb.Append("<script type='text/javascript' src='/assets/js/formscripts.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript'>" & vbCrLf)
        sb.Append("addMusicians();" & vbCrLf)
        sb.Append("</script>" & vbCrLf)
        ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "ajax", sb.ToString(), False)

        Dim shuser As MembershipUser = Membership.GetUser(User.Identity.Name)
        userID = shuser.ProviderUserKey.ToString()

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click

        Response.Write("<h1>&nbsp;</h1><h1>&nbsp;</h1>")

        If Request.Form("member1") <> "" Then
            Dim membercounter As String = CInt(Request.Form("mcount"))
            For value As Integer = 1 To membercounter
                Dim member As String = Request.Form("member" & value & "")
                Response.Write("<h1>" & member & "</h1>")
            Next
        Else
            Response.Write("<h1>ADD MEMBERS STUPID</h1>")
        End If

        If Request.Form("title1") <> "" And Request.Form("artist1") <> "" Then
            Dim songcounter As String = CInt(Request.Form("scount"))
            For value As Integer = 1 To songcounter
                Dim title As String = Request.Form("title" & value & "")
                Dim artist As String = Request.Form("artist" & value & "")
                Response.Write("<h1>" & title & "</h1>")
                Response.Write("<h1>" & artist & "</h1>")
            Next
        Else
            Response.Write("<h1>ADD SONGS STUPID</h1>")
        End If

        Response.Write("<h1>" & userID & "</h1>")

    End Sub
End Class
