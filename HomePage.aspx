<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="EMS_1.HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" href="logo.jpg" type="image/x-icon"/>
        <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            background-color: #f8f9fa;
            color: #333;
        }

        /* Navbar */
        .navbar {
            width: 97%;
            background-color: #000;
            position: fixed;
            top: 0;
            z-index: 1000;
            overflow: hidden;
            padding: 10px 20px;
            text-align: center;
        }

        .navbar .logo {
            float: left;
            color: #fff;
            font-weight: bold;
            font-size: 25px;
            line-height: 50px;
        }

        .navbar ul {
            display: inline-block;
            margin: 0;
            padding: 0;
            list-style: none;
            height: 50px;
        }

        .navbar ul li {
            float: left;
            margin-right: 10px;
            height: 50px;
        }

        .navbar ul li a {
            display: block;
            color: #fff;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
            text-decoration: none;
            line-height: 50px;
            padding: 0 20px;
        }

        .navbar ul li a:hover {
            background-color: #444;
        }

        .navbar .buttons {
            float: right;
            margin-top: 10px;
        }

        .navbar .buttons a {
            padding: 8px 15px;
            background-color: #ffb300;
            color: #000;
            border-radius: 20px;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
            text-decoration: none;
            margin-left: 10px;
            text-decoration:none;
        }

        .navbar .buttons a:hover {
            background-color: #ff9800;
        }

        .user-info {
            display: inline-block;
            color: #fff;
            background-color: #333;
            padding: 5px 10px;
            border-radius: 15px;
            text-align: right;
            line-height: 1.4;
        }

        .user-info .username {
            font-size: 16px;
            font-weight: bold;
        }

        .user-info .date-time {
            font-size: 12px;
            font-style: italic;
        }

        .content {
            padding: 20px;
            background-color: #fff;
            margin: 70px auto 20px;
            max-width: 1200px;
        }

        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
                body 
        {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }
        .navbar {
            width: 98%;
            background-color: #000;
            position: fixed;
            top: 0;
            z-index: 1000;
            padding: 10px 20px;
            text-align: center;
        }
        .hero {
            position: relative;
            width: 100%;
            height: 100vh;
            overflow: hidden;
        }
        .hero::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }
        .hero-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #fff;
            text-align: center;
            z-index: 2;
        }
        .hero-content h1 {
            font-size: 3rem;
            font-weight: bold;
        }
        .hero-content p {
            margin: 10px 0;
            font-size: 1.2rem;
        }
        .hero-content .tags {
            margin: 20px 0;
            display: inline-block;
            background-color: #ffb300;
            padding: 10px 20px;
            border-radius: 20px;
            font-weight: bold;
            text-transform: uppercase;
        }
        .hero-content .event-details {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px 0;
            font-size: 1rem;
        }
        .event-details span {
            display: flex;
            align-items: center;
            gap: 5px;
        }
        .hero-content .buttons {
            margin: 20px 0;
            display: flex;
            gap: 20px;
            justify-content: center;
            align-items: center;
        }
        .hero-content .buttons a {
            padding: 10px 20px;
            border: 2px solid #fff;
            color: #fff;
            font-weight: bold;
            text-transform: uppercase;
            border-radius: 20px;
            transition: 0.3s ease;
            text-decoration:none;
        }
        .hero-content .buttons a:hover {
            background-color: #fff;
            color: #000;
        }
        .hero-slider {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
        }
        .hero-slider img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }
        .hero-slider img.active {
            opacity: 1;
        }  
        
    </style>
     <script>
        window.onload = function () {
            let currentSlide = 0;
            const slides = document.querySelectorAll('.hero-slider img');
            const totalSlides = slides.length;

            function showSlide(index) {
                slides.forEach((slide, i) => {
                    slide.classList.remove('active');
                    if (i === index) {
                        slide.classList.add('active');
                    }
                });
            }

            function nextSlide() {
                currentSlide = (currentSlide + 1) % totalSlides;
                showSlide(currentSlide);
            }

            setInterval(nextSlide, 3000); // Change slide every 3 seconds

            showSlide(currentSlide); // Show the first slide initially
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar clearfix">
            <div class="logo">E-PLANNER</div>
            <ul>
                <li><a href="../HomePage.aspx">Home</a></li>
                <li><a href="../UserServicesU.aspx">Services</a></li>
                <li><a href="../TestimonialsU.aspx">Testimonials</a></li>
                <li><a href="./ContactUs.aspx">Contact Us</a></li>
            </ul>
            <div class="buttons">
                <div id="pnlUserInfo" runat="server" visible="false" class="user-info">
                    <span class="username"><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></span>
                    <span class="date-time"><asp:Label ID="lblDateTime" runat="server" Text=""></asp:Label></span>
                </div>
                <div id="pnlAuthButtons" runat="server" visible="true">
                    <a href="../E_Login.aspx">Sign In</a>
                    <a href="../E_SignUp.aspx">Sign Up</a>
                    <a href="../E_AdminLogin.aspx">Admin</a>
                </div>
            </div>
        </div>
         <div class="hero">
        <div class="hero-slider">
            <img src="../output.jpg" alt="Image 1" class="active"> <!-- Replace with actual image paths -->
            <img src="../bg.jpg" alt="Image 2"> <!-- Replace with actual image paths -->
            <img src="../about.jpg" alt="Image 3"> <!-- Replace with actual image paths -->
        </div>
        <div class="hero-content">
            <h1>E-PLANNER</h1>
            <div class="event-details">
                <span>📍India</span>
            </div>
            <div class="buttons">
                <a href="../TestimonialsU.aspx">Details</a>
                <a href="../UserServicesU.aspx">Plan Event</a>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
