Imports System.Data.SqlClient
Imports System.Configuration

Public Class E_SignUp
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            btn_signup.Visible = True
        End If
    End Sub

    Protected Sub btn_signup_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_signup.Click

        If Not chk_terms.Checked Then

            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('You must agree to the Terms and Conditions to sign up.');", True)
            Return
        End If


        If txt_password.Text <> txt_confirmPassword.Text Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Passwords do not match.');", True)
            Return
        End If


        Dim currentDateTime As DateTime = DateTime.Now



        Using conn As New SqlConnection(connectionString)
            Dim query As String = "INSERT INTO SignUp (FullName, Email, Password,MobileNumber) VALUES (@FullName, @Email, @Password,@MobileNumber)"
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@FullName", txt_fullname.Text.Trim())
                cmd.Parameters.AddWithValue("@Email", txt_email.Text.Trim())
                cmd.Parameters.AddWithValue("@Password", txt_password.Text.Trim())
                cmd.Parameters.AddWithValue("@MobileNumber", txt_mobileno.Text.Trim())

                conn.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using


        Response.Redirect("E_Login.aspx")
    End Sub
End Class
