<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Municipal_Tracking_System.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>Admin Panel of Municipal Trackin System</title>
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
                    <%--<li><a href="home.aspx">Home</a></li>
                    <li><a href="signup.aspx">Register</a></li>--%>
                </ul>
            </nav>
        </header>

        <div class="admin-login">
            <form class="admin-login-form" runat="server">

              <h3 class="title3">Admin Panel</h3>

                <table class="admintbl">
                    
                    <tr>
                          <td>
                              <label for="admin_username" class="admin_username">Username:</label>

                          </td>
                          <td>
                              <input required type="text" class="admin_username1" id="admin_username" runat="server" placeholder="Enter your username here">

                          </td>
           
                    </tr>
               
                  <br>
                  <br>

                    <tr>
                        <td>
                            
                            <label for="admin_password" class="admin_password">Password:</label>

                        </td>

                      <td>

                          <input required type="password" class="admin_pwd1" id="admin_password" runat="server" placeholder="Please enter your password">

                      </td>

              <br>
              <br>
                        </tr>

                <tr>

                <td>
                    
                    <asp:Label ID="Login_Message" runat="server" foreColor="Red"></asp:Label>

                </td>
                    <td>
                
                        <asp:Button ID="login_bttn" class="login-bttn" runat="server" Text="Login" OnClick="admin_login_Click" />
                     
                        </td>
                                    
              
                    <br><br>


              </tr>

            </table>

            </form>

            


        </div>

        <footer class="auto-style1">

            <p>&copy; 2019 Municipal Tracking Systemng System<p>

        </footer>

    </section>


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="scripts/parallax.min.js"></script>
            <script src="scripts/main.js"></script>





    </body>



</html>

