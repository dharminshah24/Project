<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Municipal_Tracking_System.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>Login to Municipal Tracking System</title>
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
                left: 1px;
                right: -1px;
                bottom: 1px;
            }
        </style>

        
  </head>

<body>

    <section class="cover-main" id="home">
        <header>
            <nav class="nav-wrapper">
                <div class="logo">
                    <a href="home.aspx">
                     <img src="image/logo2.png" class="logo" alt="Municipal Tracking System logo">
                    </a>
                </div>
                <ul class="menu">
                    <li><a href="home.aspx">Home</a></li>
                    <li><a href="signup.aspx">Register</a></li>
                </ul>
            </nav>
        </header>

        <div class="login">
            <form class="login-form" runat="server">

              <h3 class="title">Login</h3>

                <table class="login_table">

                    <tr>

                        <td>
                            
                            <label for="username">Username:</label>

                        </td>

                        <td>
                            
                            <input required type="text" class="username1" id="username" runat="server" placeholder="Enter your username here">

                        </td>
              
               
                    </tr> 
                    <br>
                    <br>
                  
                    <tr>
                        <td>
                            
                            <label for="password">Password:</label>

                        </td>

                        <td>
                            
                            <input required type="password" class="pwd1" id="password" runat="server" placeholder="Please enter your password">

                        </td>

                      <br>
                      <br>
                      
                        </tr>
                
                    <tr>
                    
                        <td>
                        
                        
                            
                    
                        </td>

               
                        <td>

                    <asp:Button ID="login_bttn" class="login-bttn" runat="server" Text="Login" OnClick="login_Click" />

                    
                            <input class="reset-bttn" type="reset" value="Reset">

                
                        </td>

                          <br>

                          <br>
                        </tr>

                        <tr>
                             <td>
                            <asp:Label ID="Login_Message" runat="server" foreColor="Red"></asp:Label>
                             </td>
                        </tr>
                   
                </table>
    
                            <a href="forgotPassword.aspx" class="frgtpwd"> Forgot Password? </a>
                        
        
                
            </form>

            

        </div>

        <footer class="auto-style1">
                <a href="aboutus.aspx" class="aboutus">About us</a>
                <a href="">&nbsp;</a>
                <a href="contactus.aspx" class="contactus">Contact us</a>
                <p>&copy; 2019 Municipal Tracking System</p>

        </footer>

    </section>


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="scripts/parallax.min.js"></script>
            <script src="scripts/main.js"></script>





    </body>



</html>

