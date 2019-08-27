﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Municipal_Tracking_System.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>Municipal Tracking System</title>
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
                    <li><a href="login.aspx">Log out</a></li>
             
                </ul>
            </nav>
        </header>

        <h3 class="indextitle"> Hello! Want you want to do today?</h3>
        <form class="1" action="addnewdata.aspx" method="post">
        
            <div class="activity">

                <p class="addclass">Want to add new property details? <input type="submit" class="activitybtn" value="Click here"></p>
            
            </div>

        </form>

        <br><br>

        <form class="2" action="propertyData.aspx" method="post">

            <div class="activity1">

                <p class="editclass">Want to look existing properties? <input type="submit" class="activity1btn" value="Click here"></p>

            </div>

        </form>




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

            <script>

              var scene = document.getElementById('scene');
              var parallax = new Parallax(scene);

            </script>



    </body>



</html>

