<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserServicesU.aspx.vb" Inherits="EMS_1.UserServicesU" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Services - E-Planner</title>
    <link rel="shortcut icon" href="logo.jpg" type="image/x-icon"/>x
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
        .user-info
        {
            display: inline-block;
            color: #fff;
            background-color: #333;
            padding: 5px 10px;
            border-radius: 15px;
            text-align: right;
            line-height: 1.4;
        }
        .user-info .username
        {
            font-size: 16px;
            font-weight: bold;
        }
        .user-info .date-time
        {
            font-size: 12px;
            font-style: italic;
        }
        .content
        {
            margin: 80px auto;
            max-width: 1200px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            text-align: center;
        }
        h2
        {
            margin-bottom: 20px;
            color: #007bff;
            font-size: 24px;
        }
        .services
        {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* Create 3 columns */
            gap: 20px; /* Space between items */
            margin-top: 20px;
            align-items: flex-start; /* Align items at the top */
        }
        .service
        {
            border: 1px solid #e9ecef;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .service img
        {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .service h3
        {
            margin: 10px 0;
            color: #17a2b8;
        }
        .service p
        {
            margin: 5px 0;
        }
        .service .service-button
        {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: #fff;
            font-size: 16px;
            margin-top: 15px;
            text-transform: uppercase;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .service .service-button:hover
        {
            background-color: #0056b3;
            color: #f8f9fa;
        }
        
        @media (max-width: 768px)
        {
            .services
            {
                grid-template-columns: repeat(2, 1fr); /* Switch to 2 columns on smaller screens */
            }
        }
        
        @media (max-width: 480px)
        {
            .services
            {
                grid-template-columns: 1fr; /* Switch to 1 column on very small screens */
            }
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
                <li><a href="../UserServicesU.aspx">Services</a></li>
                <li><a href="../TestimonialsU.aspx">Testimonials</a></li>
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
    <div class="content">
        <h2>Our Services</h2>
        <div class="services">
            <div class="service">
                <img src="../WeddingU.jpg" alt="Wedding Planning">
                <h3>Wedding Planning</h3>
                <p>Plan your dream wedding with our comprehensive planning services.</p>
                <p class="price"><strong>&#8377;4999/- (per day)</strong></p>
                <p class="additional-charges" style="font-size: 12px; color: #6c757d;">*Additional charges may apply upon request.</p>  
                <asp:Button ID="btnWeddingPlanning" runat="server" Text="Plan Now!!" CssClass="service-button" OnClick="RedirectToLogin"     CommandArgument="Wedding" />
            </div>
            <div class="service">
                <img src="../CorporateU.jpg" alt="Corporate Events">
                <h3>Corporate Events</h3>
                <p>Host professional corporate events with our expert planners.</p>
                <p class="price"><strong>&#8377;4999/- (per day)</strong></p>
                <p class="additional-charges" style="font-size: 12px; color: #6c757d;">*Additional charges may apply upon request.</p>  
                <asp:Button ID="btnCorporateEvents" runat="server" Text="Plan Now!!" CssClass="service-button" OnClick="RedirectToLogin" CommandArgument="Corporate"   />
            </div>
            <div class="service">
                <img src="../BirthdayU.jpg" alt="Birthday Parties">
                <h3>Birthday Parties</h3>
                <p>Create memorable birthday celebrations for all ages.</p>
                <p class="price"><strong>&#8377;4999/- (per day)</strong></p>
                <p class="additional-charges" style="font-size: 12px; color: #6c757d;">*Additional charges may apply upon request.</p>  
                <asp:Button ID="btnBirthdayParties" runat="server" Text="Plan Now!!" CssClass="service-button" OnClick="RedirectToLogin" CommandArgument="Birthday"  />
            </div>
            <div class="service">
                <img src="../PromotionU.jpg" alt="Promotion Party">
                <h3>Promotion Party</h3>
                <p>Celebrate your big promotion with a stylish and fun party.</p>
                <p class="price"><strong>&#8377;4999/- (per day)</strong></p>
                <p class="additional-charges" style="font-size: 12px; color: #6c757d;">*Additional charges may apply upon request.</p>  
                <asp:Button ID="btnPromotionParty" runat="server" Text="Plan Now!!" CssClass="service-button" OnClick="RedirectToLogin" CommandArgument="Promotion" />
            </div>
            <div class="service">
                <img src="../CAU.jpg" alt="CA Party">
                <h3>CA Party</h3>
                <p>Plan a sophisticated Certified Accountant party with us.</p>
                <p class="price"><strong>&#8377;7999/- (per day)</strong></p>
                <p class="additional-charges" style="font-size: 12px; color: #6c757d;">*Additional charges may apply upon request.</p>  
                <asp:Button ID="btnCAParty" runat="server" Text="Plan Now!!" CssClass="service-button" OnClick="RedirectToLogin" CommandArgument="CA" />
            </div>
            <div class="service">
                <img src="../output.jpg" alt="Choose Individually">
                <h3>Choose Individually</h3>
                <p>Select and customize individual services to suit your specific needs.</p>
                <br />
                <p class="additional-charges" style="font-size: 12px; color: #6c757d;">*Additional charges may apply upon request.</p>  
                <asp:Button ID="btnChooseIndividually" runat="server" Text="Plan Now!!" CssClass="service-button" OnClick="RedirectToLogin" CommandArgument="Individual"  />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
