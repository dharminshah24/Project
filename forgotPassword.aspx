<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="Municipal_Tracking_System.forgotPassword" %>

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
                left: -1px;
                right: 1px;
                bottom: -8px;
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
                </ul>
            </nav>
        </header>

        <div class="forgotPassword">
            <form class="frgtpwd-form" runat="server" method="post">

              <h3 class="title">Reset Password !</h3>
                <table>
                    <tr>
            
                        <td><label for="emailid">Enter your Email:</label></td>
              
                        <td><input required type="text" class="emailid" id ="emailid" runat="server" placeholder="Enter your Email id here"/></td>
                        
                        <br>
                        <br>
                        
                    </tr>
              
              
                    <td>
                    
                        <asp:Button ID="Button1" class="reset-password-btn" type="submit" text="Reset Password" runat="server" OnClick="Button1_Click"  />
             
                    </td>

                    <td>
                        
                        <asp:Label ID="lbmsg" runat="server" ForeColor="Red"></asp:Label>

                    </td>
          
                <%-- <input class="reset-password-btn" type="submit" value="Reset Password">--%>

                  <br>
                  <br>



                    </table>
            </form>

            

        </div>

        <footer class="auto-style1">
                <a href="aboutus.aspx" class="aboutus">About us</a>
                <a href="">&nbsp;</a>
                <a href="contactus.aspx" class="contactus">Contact us</a>
            <p>&copy; 2019 Municipal Tracking System<p>

        </footer>

    </section>


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="scripts/parallax.min.js"></script>
            <script src="scripts/main.js"></script>





    </body>



</html>
