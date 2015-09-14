
Partial Class Seshoon
    Inherits Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<script type='text/javascript' src='http://maps.google.com/maps/api/js?sensor=true'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/gmaps.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/coundown-timer.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/main.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript'>" & vbCrLf)
        sb.Append("EventCountdown('9/15/2015 9:00:00 PM');" & vbCrLf & "GetLatLong('424 Hawthorne Street, Glendale, CA');" & vbCrLf)
        sb.Append("</script>" & vbCrLf)
        ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "ajax", sb.ToString(), False)
    End Sub

End Class