<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminCRUD.aspx.cs" Inherits="Municipal_Tracking_System.adminCRUD" %>

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

    <form id="admin_mainpage" class="admin_mainpage" runat="server">
        <div class="crud">
            <table class="crud">
                <tr>
                    <td>
                        <asp:Button ID="Add" class="admin_Add" runat="server" Text="Add Data" OnClick="Add_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Edit" class="admin_Edit" runat="server" Text="Edit Data" OnClick="Edit_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Read"  class="admin_Read" runat="server" Text="Read Data" OnClick="Read_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Admin_Contactus"  class="admin_Contactus" runat="server" Text="Contact Us" OnClick="Contactus_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
        </section>
</body>
</html>
