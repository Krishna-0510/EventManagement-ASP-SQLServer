<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="E_SignUp.aspx.vb" Inherits="EMS_1.E_SignUp" %>

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
        .register-container
        {
            background-color: #ffffff;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        .register-container h2
        {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }
        .register-container h5
        {
            color: #d3d3d3;
            margin-bottom: 10px;
        }
        .register-container .input-group
        {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .register-container .input-group .icon
        {
            font-size: 20px;
            margin-right: 10px;
        }
        .register-container input[type="text"], .register-container input[type="email"], .register-container input[type="password"]
        {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
            margin: 5px 0;
        }
        .register-container input:focus
        {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        #btn_signup
        {
            display: inline-block !important;
            visibility: visible !important;
            opacity: 1 !important;
        }
        .register-container .asp-button
        {
            display: inline-block;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }
        .register-container .asp-button:hover
        {
            background-color: #0056b3;
        }
        .terms
        {
            text-align: left;
            margin-top: 10px;
        }
        .terms label
        {
            font-size: 14px;
            color: #333;
        }
        .terms a
        {
            color: #007bff;
            text-decoration: none;
        }
        .terms a:hover
        {
            text-decoration: underline;
        }
        .signup-link
        {
            margin-top: 20px;
            font-size: 14px;
        }
        .signup-link a
        {
            color: #007bff;
            text-decoration: none;
        }
        .signup-link a:hover
        {
            text-decoration: underline;
        }
    </style>
        <script type="text/javascript">
            // JavaScript to filter input (name field)
            function validateNameInput(event) {
                var inputField = event.target;
                var currentValue = inputField.value;

                // Remove any characters that are not letters or spaces
                currentValue = currentValue.replace(/[^a-zA-Z ]/g, "");

                // Remove extra spaces (trim leading and trailing spaces and collapse multiple spaces)
                currentValue = currentValue.replace(/\s+/g, ' ').trim();

                // Set the cleaned value back to the input field
                inputField.value = currentValue;
            }
            // Function to validate Indian mobile number
            function validateMobileNumber(event) {
                var inputField = event.target;
                var currentValue = inputField.value;

                // Remove any non-numeric characters (to allow only digits)
                currentValue = currentValue.replace(/[^0-9]/g, "");

                // Check if the number starts with 7, 8, or 9 and is 10 digits long
                if (!/^[789]\d{9}$/.test(currentValue)) {
                    inputField.setCustomValidity("Please enter a valid Indian mobile number starting with 7, 8, or 9.");
                } else {
                    inputField.setCustomValidity("");
                }

                // Set the cleaned number back to the input field
                inputField.value = currentValue;
            }
            document.addEventListener("DOMContentLoaded", function () {
                var txtEmail = document.getElementById("<%= txt_email.ClientID %>");

                // Create an error message element
                var errorMsg = document.createElement("span");
                errorMsg.style.color = "red";
                errorMsg.style.display = "none";
                errorMsg.textContent = "Please enter a valid Gmail address (e.g., xy@gmail.com).";
                txtEmail.parentNode.appendChild(errorMsg); // Append after textbox

                txtEmail.addEventListener("blur", function () {
                    var emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/; // Regex for Gmail validation
                    if (!emailPattern.test(this.value)) {
                        errorMsg.style.display = "inline"; // Show error message
                        this.value = ''; // Clear invalid input
                        this.focus();
                    } else {
                        errorMsg.style.display = "none"; // Hide error if valid
                    }
                });
            });


    </script>
</head>
<body>
     <form id="form1" runat="server">
        <div class="register-container">
            <h2>Create Your Account</h2>
            <h5>Join us and manage your events</h5>

            <!-- Full Name Input -->
            <div class="input-group">
                <span class="icon">&#128100;</span>
                <asp:TextBox ID="txt_fullname" runat="server" placeholder="e.g. Mike Shinoda" oninput="validateNameInput(event)" CssClass="input-field" required="true"></asp:TextBox>
                
            </div>

            <!-- Email Input -->
            <div class="input-group">
                <span class="icon">&#128231;</span>
                <asp:TextBox ID="txt_email" runat="server" TextMode="Email" placeholder="e.g. xy@gmail.com" required="true"></asp:TextBox>
                
            </div>

            <div class="input-group">
                <span class="icon">&#128231;</span>
                <asp:TextBox ID="txt_mobileno" runat="server" placeholder="e.g. 92546412xx" required="true" oninput="validateMobileNumber(event)" CssClass="input-field"></asp:TextBox>
                
            </div>

            <!-- Password Input -->
            <div class="input-group">
                <span class="icon">&#128272;</span>
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" placeholder="Password" required="true"></asp:TextBox><br />
                
            </div>

            <!-- Confirm Password Input -->
            <div class="input-group">
                <span class="icon">&#128272;</span>
                <asp:TextBox ID="txt_confirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" required="true"></asp:TextBox>
                
            </div>

            <!-- Terms and Conditions -->
            <div class="terms">
                <asp:CheckBox ID="chk_terms" runat="server" />
                <label for="chk_terms">I agree to the <a href="TermsAndConditions.aspx" target="_blank">Terms and Conditions</a></label>
            </div>

            <!-- Sign Up Button -->
            <div>
                <asp:Button ID="btn_signup" runat="server" Text="Sign Up" CssClass="asp-button" EnableViewState="True" />
            </div>

            <div class="signup-link">
                <p>Already have an account? <a href="E_Login.aspx">Login here</a></p>
            </div>
        </div>
    </form>
</body>
</html>
