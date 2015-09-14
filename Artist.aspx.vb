
Partial Class Artist
    Inherits Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim x As String = "test"
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<script type='text/javascript' src='/assets/js/jquery.fancybox.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/jquery.fancybox-media.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/main.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript'>" & vbCrLf)
        sb.Append("jQuery(document).ready(function ($) {" & vbCrLf)
        sb.Append("getMedia();" & vbCrLf)
        sb.Append("$('.fancybox-media')" & vbCrLf)
        sb.Append(".attr('rel', 'media-gallery')" & vbCrLf)
        sb.Append(".fancybox({" & vbCrLf)
        sb.Append("openEffect: 'none'," & vbCrLf)
        sb.Append("closeEffect: 'none'," & vbCrLf)
        sb.Append("prevEffect: 'none'," & vbCrLf)
        sb.Append("nextEffect: 'none'," & vbCrLf)
        sb.Append("arrows: false," & vbCrLf)
        sb.Append("helpers: {" & vbCrLf)
        sb.Append("media: {}," & vbCrLf)
        sb.Append("buttons: {}" & vbCrLf)
        sb.Append("}" & vbCrLf)
        sb.Append("});" & vbCrLf)
        sb.Append("});" & vbCrLf)
        sb.Append("</script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='https://connect.soundcloud.com/sdk.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/sc-player.js'></script>" & vbCrLf)
        sb.Append("<script type='text/javascript' src='/assets/js/prevideoload.js'></script>")
        ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "ajax", sb.ToString(), False)

        Dim link As New HtmlLink()
        link.Attributes.Add("href", Page.ResolveClientUrl("/assets/css/jquery.fancybox.css"))
        link.Attributes.Add("Type", "text/css")
        link.Attributes.Add("rel", "stylesheet")
        Page.Header.Controls.Add(link)

        Dim link1 As New HtmlLink()
        link1.Attributes.Add("href", Page.ResolveClientUrl("/assets/css/sc-player-red.css"))
        link1.Attributes.Add("Type", "text/css")
        link1.Attributes.Add("rel", "stylesheet")
        Page.Header.Controls.Add(link1)

        Dim link2 As New HtmlLink()
        link2.Attributes.Add("href", Page.ResolveClientUrl("/assets/css/prevideoload.css"))
        link2.Attributes.Add("Type", "text/css")
        link2.Attributes.Add("rel", "stylesheet")
        Page.Header.Controls.Add(link2)

    End Sub

End Class
