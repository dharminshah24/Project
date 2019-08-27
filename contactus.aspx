<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Municipal_Tracking_System.contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title> Welcome in to Municipal Tracking System of Region Waterloo and Kitchener</title>
        <!--<meta property="og:title" content="" />-->
            <!--<meta property="og:url" content="" />-->
            <!--<meta property="og:image" content="" />-->
            <!--<meta property="og:site_name" content="" />-->
            <!--<meta property="og:description" content="" />-->

        <link href="https://fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/slick.css">
        <link rel="stylesheet" href="css/slick-theme.css">
        <link rel="stylesheet" href="css/main.css">


<!--[if lt IE 9]>
        <script src="scripts/html5shiv.min.js"></script>
    <![endif]-->

        <style type="text/css">
            .auto-style1 {
                left: 0px;
                right: 0px;
                bottom: -13px;
            }
        </style>

  </head>

<body>

    <section class="cover-main" id="home">
        <header>
            <nav class="nav-wrapper">
                <div class="logo">
                    <a href="home.html">
                     <img src="image/logo2.png" class="logo" alt="Municipal Tracking System logo">
                    </a>
                </div>
                <ul class="menu">
                    <li><a href="home.aspx">Home</a></li>
                    <li><a href="login.aspx">Login</a></li>
                    <li><a href="signup.aspx">Register</a></li>
                </ul>
            </nav>
        </header>

        <div class="contactUs">

            <form class="contactus-form" runat="server">

                <h3 class="titlecontactus">Contact Us</h3>

                <table>

                    <tr>
                    
                        <td>
                            
                            <label class="ltopic"> Topic: </label>

                        </td>

                        <td>

                            <select required class="contactus-select" id="contactus_select" runat="server" name="D1">

                            <option value> Please select a topic </option>
                            <option  value="Did you face difficulty to use Website?"> Did you face difficulty to use Website? </option>
                            <option  value="Performance Issue in Website?"> Performance Issue in Website? </option>
                            <option  value="Login Issue?"> Login Issue? </option>
                            <option  value="Registration Issue?"> Registration Issue? </option>
                            <option  value="Other"> Other </option>

                        </select> <br>

                        </td>

                    </tr>
                    <tr>
                        <td>
                            
                            <label class="lusername" for="username"><strong>Username:</strong></label>

                        </td>

                        <td>
                      
                            <input required type="text" class="contactus-username" id ="username" pattern="[a-zA-Z0-9-]+.{5,10}" runat="server" placeholder="Enter your username here"/>

                        </td><br><br>
                                         
                    
                    </tr>

                    <tr>
                        <td>

                            <label class="lmessage" for="message">Message : </label>

                        </td>

                        <td>
                            
                            <textarea required type="text" class="message" id="message" rows="8" cols= "40" runat="server" placeholder="Please enter your comment here"></textarea>

                        </td><br><br>

                    </tr>
                    <tr>
                        <td>
                            
                            <asp:Button ID="contactus_bttn" class="contactus-bttn" runat="server" Text="Submit" OnClick="contactus_bttn_Click" />

                        </td><br /><br />

                        <td>
                    
                            <asp:Label ID="contactus_Message" runat="server" ForeColor="Green"></asp:Label>

                        </td>
                        
                   </tr>

              </table>
            
            </form>

        </div>

    </section>

        <footer class="auto-style1">
            <a href="aboutus.aspx" class="aboutus">About us</a>

            <p>&copy; 2019 Municipal Tracking System<p>

        </footer>




            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="scripts/parallax.min.js"></script>
            <script src="scripts/main.js"></script>





    </body>



</html>

