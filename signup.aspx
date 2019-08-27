<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Municipal_Tracking_System.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>Signup to Municipal Tracking System</title>
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
                    <li><a href="login.aspx">Login</a></li>
                </ul>
            </nav>
        </header>
        
        <div class="register">
            <form class="register-form" runat="server">

              <h3 class="titleregister">Register</h3>

                <table>
                      
                        <tr>
                            <td><label class="lname" for="name"><strong>Name:</strong></label></td>
                            <td><input required type="text" class="name" id ="name" runat="server" pattern="[A-Za-z ].{2,25}" placeholder="Enter your name here"/></td>
                        </tr>
                    <br><br>
                        <tr>
                            <td><label class="lusername"for="username"><strong>Username:</strong></label></td>
                            <td><input required type="text" class="username" id ="username" runat="server" pattern="[a-zA-Z0-9-]+.{5,10}" placeholder="Enter your username here"/></td>
                        </tr>
                    <br><br>
                        <tr>
                            <td><label class="lemployeeno" for="employeeno"><strong>Employee No:</strong></label></td>
                            <td><input required type="text" class="employeeno" id="employeeno" runat="server" pattern="[0-9].{6,6}" placeholder="Enter your employee id number here"/></td>
                        </tr>
                    <br><br>
                        <tr>
                            <td> <label class="lemailid" for="emailid"><strong>Email id:</strong></label></td>
                            <td><input required type = "email" class="emailid" id="emailid" runat="server" pattern="[a-z0-9._%+-]+@conestogac.on.ca" placeholder="Enter your work email id here"/></td>
                        </tr>
                    <br><br>
                        <tr>
                            <td><label class="lpwd" for="password"><strong>Password:</strong></label></td>
                            <td><input required type="password" class="pwd" id="password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" placeholder="Minimum 6 character must contain at least one number and one uppercase and lowercase letter"/></td>
                        
                        </tr>
                        
                        <tr>
                            <td><label class="lpwd" for="confirm_password"><strong>Confirm Password:</strong></label></td>
                            <td><input required type="password" class="pwd" id="confirm_password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" placeholder="Minimum 6 character must contain at least one number and one uppercase and lowercase letter"/></td>
                        <span id='message'></span>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Register_Message" runat="server" ForeColor="Green"></asp:Label></td>
                            
                            <td><asp:Button ID="register_bttn" class="register-bttn" runat="server" Text="Register" OnClick="Register_Click" /></td>
                            <td><input class="reset-bttn" type="reset" value="Reset"  /></td>
                    
                        </tr>
                    <tr>
                        <td><asp:Label ID="Register_Failed_Message" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>

                
                

            </form>

        </div>

    </section>
        
       <footer>

            <a href="aboutus.aspx" class="aboutus">About us</a>
            <a href="contactus.aspx" class="contactus">Contact us</a>
            <p>&copy; 2019 Municipal Tracking System</p>

        </footer>
      




            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="scripts/parallax.min.js"></script>
            <script src="scripts/main.js"></script>
            <script src="scripts/password.js"></script>





    </body>



</html>

