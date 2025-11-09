Public Class E_AdminLogin
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblError.Text = "" ' Clear any previous error message on page load
    End Sub

    Protected Sub login_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        ' Validation logic when the login button is clicked
        If String.IsNullOrEmpty(txt_unm.Text) AndAlso String.IsNullOrEmpty(txt_pwd.Text) Then
            lblError.Text = "Please enter both username and password"
        ElseIf String.IsNullOrEmpty(txt_unm.Text) Then
            lblError.Text = "Please enter username"
        ElseIf String.IsNullOrEmpty(txt_pwd.Text) Then
            lblError.Text = "Please enter password"
        ElseIf txt_unm.Text <> "Krishna" AndAlso txt_pwd.Text <> "0510" Then
            lblError.Text = "Both username and password are invalid"
        ElseIf txt_unm.Text <> "Krishna" Then
            lblError.Text = "Invalid username"
        ElseIf txt_pwd.Text <> "0510" Then
            lblError.Text = "Invalid password"
        Else
            ' If both username and password are correct, redirect
            Response.Redirect("~/Admin/DefaultAdmin.aspx")
        End If
    End Sub


End Class