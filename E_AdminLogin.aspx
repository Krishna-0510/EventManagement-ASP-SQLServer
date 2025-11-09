<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="E_AdminLogin.aspx.vb" Inherits="EMS_1.E_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial, Tahoma, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container
        {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px; 
            position: absolute; 
            top: 50%; 
            left: 48%; 
            margin-top: -200px; 
            margin-left: -200px; 
            text-align: center;
        }
        .login-container h2
        {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }
        .login-container h5
        {
            color: #d3d3d3; /* Light grey color */
            margin-bottom: 10px; /* Reduce the space between h5 and h2 */
        }
        .login-container .input-group
        {
            display: flex;
            align-items: center;
            margin-bottom: 15px; /* Space between input groups */
        }
        .login-container .input-group .icon
        {
            font-size: 20px;
            margin-right: 10px;
        }
        .login-container input[type="text"], .login-container input[type="password"]
        {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
            margin: 5px 0; /* Space between input fields and their icons */
        }
        .login-container input:focus
        {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        .login-container input[type="checkbox"]
        {
            display: none;
        }
        .login-container input[type="checkbox"] + label
        {
            position: relative;
            padding-left: 25px;
            cursor: pointer;
            user-select: none;
            font-size: 14px;
            color: #333;
        }
        .login-container input[type="checkbox"] + label:before
        {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            height: 18px;
            width: 18px;
            border: 1px solid #ddd;
            border-radius: 3px;
            background-color: #fff;
            transition: background-color 0.3s ease, border-color 0.3s ease;
        }
        .login-container input[type="checkbox"]:checked + label:before
        {
            background-color: #007bff;
            border-color: #007bff;
        }
        .login-container input[type="checkbox"]:checked + label:after
        {
            content: "";
            position: absolute;
            left: 6px;
            top: 2px;
            width: 6px;
            height: 12px;
            border: solid #fff;
            border-width: 0 2px 2px 0;
            transform: rotate(45deg);
        }
        .login-container a
        {
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }
        .login-container a:hover
        {
            text-decoration: underline;
        }
        .login-container button, .login-container .asp-button
        {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
            transition: background-color 0.3s ease; /* Smooth transition for hover effect */
        }
        .login-container button:hover, .login-container .asp-button:hover
        {
            background-color: #0056b3;
        }
        .login-container .signup-link
        {
            margin-top: 20px;
            font-size: 14px;
        }
        .login-container .form-footer
        {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }
        .login-container .form-footer input[type="checkbox"]
        {
            vertical-align: middle;
            margin-right: 5px;
        }
        .login-container .form-footer label
        {
            display: inline-block;
            vertical-align: middle;
            margin: 0;
        }
        .user-icon, .password-icon
        {
            font-size: 24px;
            color: #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Welcome Admin</h2>
            <h5>Please Enter Your Details</h5>
            <div class="input-group">
                <span class="icon">&#128100;</span> <!-- Unicode for user icon -->
                <asp:TextBox ID="txt_unm" runat="server" placeholder="Username" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="input-group">
                <span class="icon">&#128272;</span> <!-- Unicode for lock (password) icon -->
                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" placeholder="Password" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="form-footer">
                
                <a href="E_ForgotPassword.aspx">Forgot password?</a>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="asp-button" />
            <div class="signup-link">
                <a href="E_Login.aspx">Already Have An Account? Sign In  <br></a>
                <a href="E_SignUp.aspx">Don't have an account? Sign up  <br></a>
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
