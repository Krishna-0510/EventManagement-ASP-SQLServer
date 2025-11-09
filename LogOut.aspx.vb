Imports System

Partial Public Class LogOut
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        ' Clear session and abandon session to ensure logout
        Session.Clear()
        Session.Abandon()

        ' Redirect to HomePage.aspx after logging out
        Response.Redirect("~/HomePage.aspx")
    End Sub
End Class
