<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TestimonialsU.aspx.vb" Inherits="EMS_1.TestimonialsU" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" href="logo.jpg" type="image/x-icon"/>
      <style type="text/css">
            body
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            background-color: #f8f9fa;
            color: #333;
        }
      
        .testimonials-container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .testimonial-section {
            margin-bottom: 40px;
        }

        .testimonial-header {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        .testimonial-list {
            display: flex;
            flex-direction: column;
            gap: 40px;
        }

        .testimonial-card {
            display: flex;
            flex-direction: row;
            align-items: center;
            background: #f8f9fa;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            height: 400px;
        }

        .testimonial-card:nth-child(even) {
            flex-direction: row-reverse;
        }

        .testimonial-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }

        .testimonial-image {
            width: 40%;
            height: 100%;
            background-size: cover;
            background-position: center;
            border-radius: 8px;
        }

        .testimonial-description {
            width: 60%;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .testimonial-title {
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }

        .testimonial-content {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
        }

        .testimonial-author {
            margin-top: 10px;
            font-weight: bold;
            color: #007bff;
        }

        .quote {
            font-style: italic;
            margin-bottom: 15px;
        }
            /* Floating button */
    .upload-logo {
        position: fixed;
        bottom: 20px;
        right: 50px;
        width: 60px;
        height: 60px;
        background-color: #007bff;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        cursor: pointer;
        transition: background-color 0.3s, transform 0.3s;
    }

    .upload-logo:hover {
        background-color: #0056b3;
        transform: scale(1.1);
    }

    /* Tooltip */
    .upload-logo::after {
        content: "Add Your Testimonial";
        position: absolute;
        width: 130px;
        bottom: 70px;
        right: 50%;
        transform: translateX(50%);
        background: rgba(0, 0, 0, 0.8);
        color: #fff;
        padding: 8px;
        border-radius: 5px;
        font-size: 14px;
        white-space: nowrap;
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.3s, visibility 0.3s;
    }

    .upload-logo:hover::after {
        opacity: 1;
        visibility: visible;
    }

    /* Icon inside the button */
    .upload-icon {
        width: 30px;
        height: 30px;
    }
      /* Navbar */
        .navbar
        {
            width: 98%;
            background-color: #000;
            position: fixed;
            top: 0;
            z-index: 1000;
            padding: 10px 20px;
            text-align: center;
        }
        .navbar .logo
        {
            float: left;
            color: #fff;
            font-weight: bold;
            font-size: 20px;
            line-height: 50px;
        }
        .navbar ul
        {
            display: inline-block;
            margin: 0;
            padding: 0;
            list-style: none;
            height: 50px;
        }
        .navbar ul li
        {
            float: left;
            margin-right: 10px;
            height: 50px;
        }
        .navbar ul li a
        {
            display: block;
            color: #fff;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
            text-decoration: none;
            line-height: 50px;
            padding: 0 20px;
        }
        .navbar ul li a:hover
        {
            background-color: #444;
        }
        .navbar .buttons
        {
            float: right;
            margin-top: 10px;
        }
        .navbar .buttons a
        {
            padding: 8px 15px;
            background-color: #ffb300;
            color: #000;
            border-radius: 20px;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
            text-decoration: none;
            margin-left: 10px;
        }
        .navbar .buttons a:hover
        {
            background-color: #ff9800;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="navbar clearfix">
            <div class="logo">EVENTCHAMP</div>
            <ul>
                <li><a href="../HomePage.aspx">Home</a></li>
                <li><a href="./UserServicesU.aspx">Services</a></li>
                <li><a href="./Testimonials.aspx">Testimonials</a></li>
                <li><a href="./ContactUs.aspx">Contact Us</a></li>
            </ul>
            <div class="buttons">
                <div id="pnlUserInfo" runat="server" visible="false" class="user-info">
                    <span class="username">
                        <asp:HyperLink ID="lnkUserProfile" runat="server" NavigateUrl="~/UserProfile.aspx">
                            <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
                        </asp:HyperLink>
                    </span>

                    <span class="date-time"><asp:Label ID="lblDateTime" runat="server" Text=""></asp:Label></span>
                    <a href="../HomePage.aspx" class="logout-button">Logout</a> <!-- Logout Button -->
                </div>
                <div id="pnlAuthButtons" runat="server" visible="true">
                    <a href="../E_Login.aspx">Sign In</a>
                    <a href="../E_SignUp.aspx">Sign Up</a>
                    <asp:Label ID="lblUnm" runat="server" Text="" Visible="False"></asp:Label>
                    <asp:Label ID="lblTime" runat="server" Text="" Visible="False"></asp:Label>
                </div>
            </div>
        </div>
    <div class="testimonials-container">
        <!-- Wedding Section -->
        <div class="testimonial-section">
            <h2 class="testimonial-header">Wedding Testimonials</h2>
            <div class="testimonial-list">
                <div class="testimonial-card">
                    <div class="testimonial-image" style="background-image: url('../wedding.jpg');"></div>
                    <div class="testimonial-description">
                        <div class="testimonial-title">Rachel & Dean</div>
                        <div class="testimonial-content">
                            <p class="quote">"Our wedding was a dream come true. Everything was perfect, and the memories will last forever."</p>
                            <div class="testimonial-author">- Rachel & Dean</div>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-image" style="background-image: url('../wedding2.jpg');"></div>
                    <div class="testimonial-description">
                        <div class="testimonial-title">Cristina & Remo</div>
                        <div class="testimonial-content">
                            <p class="quote">"The attention to detail and the professionalism made our special day unforgettable."</p>
                            <div class="testimonial-author">- Cristina & Remo</div>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-image" style="background-image: url('../wedding3.jpg');"></div>
                    <div class="testimonial-description">
                        <div class="testimonial-title">Shauna & Ali</div>
                        <div class="testimonial-content">
                            <p class="quote">"Amazing service! The decorations and the entire event were just stunning."</p>
                            <div class="testimonial-author">- Shauna & Ali</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Birthday Section -->
        <div class="testimonial-section">
            <h2 class="testimonial-header">Birthday Party Testimonials</h2>
            <div class="testimonial-list">
                <div class="testimonial-card">
                    <div class="testimonial-image" style="background-image: url('../birthday1.jpg');"></div>
                    <div class="testimonial-description">
                        <div class="testimonial-title">Best Birthday Ever!</div>
                        <div class="testimonial-content">
                            <p class="quote">"My son’s birthday party was a blast. The team made everything magical."</p>
                            <div class="testimonial-author">- Kavita Gupta</div>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-image" style="background-image: url('../birthday2.jpg');"></div>
                    <div class="testimonial-description">
                        <div class="testimonial-title">Unforgettable Memories</div>
                        <div class="testimonial-content">
                            <p class="quote">"The attention to detail made our daughter’s day so special. Thank you!"</p>
                            <div class="testimonial-author">- Rajesh Mehra</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Corporate Event Section -->
        <div class="testimonial-section">
            <h2 class="testimonial-header">Corporate Event Testimonials</h2>
            <div class="testimonial-list">
                <div class="testimonial-card">
                    <div class="testimonial-image" style="background-image: url('../co1.jpg');"></div>
                    <div class="testimonial-description">
                        <div class="testimonial-title">Professional and Seamless</div>
                        <div class="testimonial-content">
                            <p class="quote">"The corporate event was flawlessly executed. Highly professional team."</p>
                            <div class="testimonial-author">- Akash Jain</div>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-image" style="background-image: url('../co2.jpg');"></div>
                    <div class="testimonial-description">
                        <div class="testimonial-title">Highly Recommend</div>
                        <div class="testimonial-content">
                            <p class="quote">"Our annual meet was a success. Thank you for the wonderful arrangements."</p>
                            <div class="testimonial-author">- Pooja Mishra</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Floating Upload Button -->
<div class="upload-logo" onclick="window.location.href='./USER/SubmitTestimonial.aspx'">
    <img src="../upload-icon.jpg" alt="Upload" class="upload-icon">
</div>

    </form>
</body>
</html>
