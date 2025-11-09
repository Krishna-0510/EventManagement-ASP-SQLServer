<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="E_TermsAndConditions.aspx.vb" Inherits="EMS_1.E_TermsAndConditions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Terms and Conditions</title>
    <link rel="shortcut icon" href="logo.jpg" type="image/x-icon"/>
    <style type="text/css">
/* Body and Layout */
body {
    font-family: Arial, Tahoma, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center; /* Center horizontally */
    align-items: center;     /* Center vertically */
    height: 100vh;
    width: 100%;
    box-sizing: border-box;
}

.terms-container {
    background-color: #ffffff;
    padding: 40px;
    width: 100%;
    max-width: 900px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: left;
    overflow-y: auto;
    height: auto;
    margin-top:50px;
    max-height: 85vh;
    box-sizing: border-box;
}

.terms-container h1 {
    font-size: 32px;
    color: #333;
    margin-bottom: 20px;
    text-align: center;
}

.terms-container h2 {
    font-size: 26px;
    color: #007bff;
    margin-top: 30px;
    margin-bottom: 10px;
}

.terms-container p {
    font-size: 16px;  /* Default font size */
    color: #333;
    line-height: 1.8;
    margin-bottom: 15px;
}

/* Make paragraphs smaller on smaller screens */
@media screen and (max-width: 768px) {
    .terms-container p {
        font-size: 14px;  /* Smaller font size for tablets */
    }
}

@media screen and (max-width: 480px) {
    .terms-container p {
        font-size: 13px;  /* Even smaller font size for mobile */
    }
}

.terms-container ol {
    font-size: 16px;
    color: #333;
    margin-left: 20px;
    line-height: 1.8;
}

.terms-container a {
    color: #007bff;
    text-decoration: none;
}

.terms-container a:hover {
    text-decoration: underline;
}

.footer {
    text-align: center;
    margin-top: 20px;
}

.footer a {
    color: #007bff;
    text-decoration: none;
}

.footer a:hover {
    text-decoration: underline;
}

.terms-accept-button {
    display: block;
    width: 200px;
    margin: 30px auto;
    padding: 12px;
    background-color: #007bff;
    color: #ffffff;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.terms-accept-button:hover {
    background-color: #0056b3;
}

@media screen and (max-width: 768px) {
    .terms-container {
        padding: 20px;
        width: 95%;
    }

    .terms-container h1 {
        font-size: 28px;
    }

    .terms-container h2 {
        font-size: 22px;
    }

    .terms-accept-button {
        width: 180px;
        font-size: 14px;
    }
}

@media screen and (max-width: 480px) {
    .terms-container {
        padding: 15px;
        width: 100%;
    }

    .terms-container h1 {
        font-size: 24px;
    }

    .terms-container h2 {
        font-size: 20px;
    }

    .terms-accept-button {
        width: 150px;
        font-size: 13px;
    }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="terms-container">
            <h1>Terms and Conditions</h1>

            <p>Welcome to our Event Management System! These Terms and Conditions govern your use of our services and website. Please read them carefully.</p>

            <h2>1. Acceptance of Terms</h2>
            <p>By accessing or using our services, you agree to be bound by these Terms and Conditions and our Privacy Policy. If you do not agree, 
            please do not use our services.</p>

            <h2>2. User Responsibilities</h2>
            <p>You are responsible for ensuring the accuracy of all information provided on the platform. You must maintain the confidentiality 
            of your account and password.</p>

            <h2>3. Event Booking</h2>
            <p>By booking an event through our platform, you agree to follow the booking procedure and adhere to all event guidelines.
             All event payments are non-refundable unless specified otherwise.</p>

            <h2>4. Vendor Management</h2>
            <p>Vendors listed on our platform are third-party service providers. We are not responsible for the quality or performance of services
             provided by vendors.</p>

            <h2>5. Privacy and Data Protection</h2>
            <p>Your privacy is important to us. We collect and store data as described in our Privacy Policy. By using our services, you consent
             to the collection of your data in accordance with this policy.</p>

            <h2>6. Limitations of Liability</h2>
            <p>We are not liable for any damages or losses resulting from the use of our platform. This includes but is not limited to any errors 
            or omissions, service interruptions, or third-party actions.</p>

            <h2>7. Modifications</h2>
            <p>We reserve the right to modify these Terms and Conditions at any time. You will be notified of any significant changes, and 
            continued use of our services constitutes acceptance of those changes.</p>

            <h2>8. Governing Law</h2>
            <p>These Terms and Conditions shall be governed by and construed in accordance with the laws of India.</p>

            <p>By clicking the button below, you agree to the terms outlined above.</p>

            <button type="button" class="terms-accept-button" onclick="window.location.href='E_SignUp.aspx'">Accept Terms</button>
        </div>

        <div class="footer">
            <p>For more information, please contact us at <a href="mailto:support@ems.com">support@ems.com</a>.</p>
        </div>
    </form>
</body>
</html>
