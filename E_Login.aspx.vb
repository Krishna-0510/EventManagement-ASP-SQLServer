Imports System.Data.SqlClient

Public Class E_Login
    Inherits System.Web.UI.Page

    Dim connectionString As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Request.Cookies("username") IsNot Nothing Then
                txt_unm.Text = Request.Cookies("username").Value
                chkRemember.Checked = True
            End If
        End If
    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        Dim username As String = txt_unm.Text
        Dim password As String = txt_pwd.Text

        ' Authenticate user and get UserID
        Dim user_id As String = AuthenticateUser(username, password)

        If Not String.IsNullOrEmpty(user_id) Then
            If chkRemember.Checked Then
                ' Set cookies for username and UserID
                Dim userCookie As New HttpCookie("username", username)
                userCookie.Expires = DateTime.Now.AddDays(30)
                Response.Cookies.Add(userCookie)

                Dim userIdCookie As New HttpCookie("userid", user_id)
                userIdCookie.Expires = DateTime.Now.AddDays(30)
                Response.Cookies.Add(userIdCookie)
            End If

            ' Store FullName and UserID in session
            Session("Username") = username
            Session("UserID") = user_id

            ' Log login time
            LogLoginTime(user_id)

            ' Redirect to HomePageU.aspx
            Response.Redirect("~/User/HomePageU.aspx")
        Else
            Dim script As String = "<script type=""text/javascript"">alert('Invalid username or password.');</script>"
            ClientScript.RegisterStartupScript(Me.GetType(), "LoginErrorAlert", script)
        End If
    End Sub

    Private Function AuthenticateUser(ByVal username As String, ByVal password As String) As String
        Dim user_id As String = Nothing
        Try
            Using conn As New SqlConnection(connectionString)
                ' SQL query to validate user in SignUp table
                Dim cmd As New SqlCommand("SELECT UserID FROM SignUp WHERE FullName = @FullName AND Password = @Password", conn)
                cmd.Parameters.AddWithValue("@FullName", username)
                cmd.Parameters.AddWithValue("@Password", password)
                conn.Open()
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.Read() Then
                    user_id = reader("UserID").ToString()
                End If
                reader.Close()
            End Using
        Catch ex As Exception
            System.Diagnostics.Debug.WriteLine("Authentication error: " & ex.Message)
        End Try
        Return user_id
    End Function

    Private Sub LogLoginTime(ByVal user_id As String)
        Try
            Using conn As New SqlConnection(connectionString)
                ' Update login time for the user in SignUp table
                Dim cmd As New SqlCommand("UPDATE SignUp SET DateAndTime = @DateAndTime WHERE UserID = @UserID", conn)
                cmd.Parameters.AddWithValue("@UserID", user_id)
                cmd.Parameters.AddWithValue("@DateAndTime", DateTime.Now)
                conn.Open()
                cmd.ExecuteNonQuery()
            End Using
        Catch ex As Exception
            System.Diagnostics.Debug.WriteLine("Logging login time error: " & ex.Message)
        End Try
    End Sub
End Class
