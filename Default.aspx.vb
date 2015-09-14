
Partial Class _Default
    Inherits Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<script type='text/javascript' src='/assets/js/coundown-timer.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/main.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript'>")
        sb.Append("Home('9/15/2015 8:00:00 PM');")
        sb.Append("</script>" & vbCrLf)
        ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "ajax", sb.ToString(), False)
    End Sub
End Class