<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Municipal_Tracking_System.home" %>

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
            left: -2px;
            right: 2px;
            bottom: -13px;
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
                    <li><a href="login.aspx">Login</a></li>
                    <li><a href="signup.aspx">Register</a></li>
                </ul>
            </nav>
        </header>

        <div class="wrapper">
            <ul id="scene"
                  data-invert-x="false"
                  data-invert-y="false"
                  data-scalar-x="7"
                  data-scalar-y="7"
                  data-friction-x="0.1"
                  data-friction-y="0.1"
                  data-origin-x="0.5"
                  data-origin-y="0.5">
                <li class="layer wbname" data-depth="0.90">Municipal Tracking System</li>
                <li class="layer city1" data-depth="0.50">Waterloo and Kitchener Region</li>
                <li class="layer btn main" data-depth="0.30">
                    <a href="aboutus.aspx" class="aboutus-btn">About us</a>
                    <a href="contactus.aspx" class="contactus-btn">Contact us</a>
                </li>
            </ul>
        </div>
        <footer class="auto-style1">

            <p>&copy; 2019 Municipal Tracking System<p>

        </footer>

    </section>


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="scripts/parallax.min.js"></script>
            <script src="scripts/main.js"></script>

            <script>

              var scene = document.getElementById('scene');
              var parallax = new Parallax(scene);

            </script>



    </body>



</html>

