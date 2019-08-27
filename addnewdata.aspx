<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addnewdata.aspx.cs" Inherits="Municipal_Tracking_System.addnewdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
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
                     <img src="image/logo2.png" class="logo" alt="Municipal Tracking System logo"/>
                    </a>
                </div>
                <ul class="menu">
                    <li><a href="home.aspx">Home</a></li>
                    <li><a href="login.aspx">Log out</a></li>
             
                </ul>
            </nav>
        </header>

        <div class="addnewdata">
            <form class="addnewdata-form" runat="server">

              <h3 class="titleaddnewdata">Add Record in Municipal Tracking System</h3>

                  <div class="addnewdata-form1" runat="server">

                      <table class="1">
                          <tr>
                              <td><label for="ptype">Property Type:</label></td> <br />
                              <td>
                                  <select required class="ptype" id ="ptype" runat="server" name="D1">
                        
                                        <option value> Please select a topic </option>
                                        <option  value="Residential"> Residential </option>
                                        <option  value="Commercial"> Commercial </option>
                                  </select>
                              </td>
                          </tr>

                          <tr>

                              <td><label for="acrage">Acrage:</label></td>

                              <td><input required type="text" class="acrage" id ="acrage" runat="server" pattern="[0-9].{1,8}" placeholder="Acrage"></td>

                         </tr>

                         <tr>

                              <td><label for="year">Constructed Year:</label></td>

                              <td><input required type="text" class="year" id="year" runat="server" pattern="[0-9].{3,3}" placeholder="Year of Construction"></td>
                          
                         </tr>

                         <tr>
                          
                              <td><label for="address">Address:</label></td>
                          
                              <td><input required type="text" class="address" id="address" runat="server" pattern="[a-zA-Z0-9-]+.{5,50}" placeholder="Address"></td>
                         
                         </tr>

                          <tr>

                              <td><label for="city">City:</label></td>
                              <td>
                                  
                                  <select required class="city" id="city" runat="server" name="D1">
                                  <option value> Please select a topic </option>
                                  <option  value="Waterloo"> Waterloo </option>
                                  <option  value="Kitchener"> Kitchener </option>
                                  </select>

                              </td>


                          </tr>

                      </table>
                  
                          
                </div>

              <div class="addnewdata-form2" runat="server">

                      <table class="2">
                          <tr>
                              <td><label for="heritage">Heritage Declared:</label></td>
                              <td>
                                  <select required class="heritage" id="heritage" runat="server" name="D1">
                                      <option value> Please select a topic </option>
                                      <option  value="Yes"> Yes </option>
                                      <option  value="No"> No </option>

                                   </select>
                              </td>
                          <tr>
                              <td><label for="Owner">Registered Owner:</label></td>
                              <td><input required type="text" class="Owner" id="Owner" runat="server" pattern="[A-Za-z ].{2,25}" placeholder="Owner Name"></td>
                              
                          </tr>
                          <tr>
                              <td><label for="liens">Liens:</label></td>
                              <td><input required type="text" class="liens" id="liens" runat="server" pattern="[A-Za-z ]+.{3,50}" placeholder="Liens"></td>
                              
                          </tr>

                          <tr>
                              <td><label for="taxes">Annual Property Taxes:</label></td>
                              <td><input required type="text" class="taxes" id="taxes" runat="server" pattern="[0-9].{1,8}" placeholder="Total Tax"></td>
                          </tr>

                          <tr>

                              <td></td>
                              <td><asp:Button ID="add" class="submit-bttn" runat="server" Text="Submit" OnClick="AddData_Click" /><input type="reset"  class="reset-bttn" value="Reset"></td>
                              
                          </tr>

                          <tr>
                              <td><asp:Label ID="Add_Data" runat="server" ForeColor="Green"></asp:Label></td>
                          </tr>

                      </table>
      
                </div>

          </form>

        </div>

    </section>

        <footer class="auto-style1">

            <a href="aboutus.aspx" class="aboutus">About us</a>
            <a href="">&nbsp;</a>
            <a href="contactus.aspx" class="contactus">Contact us</a>

            <p>&copy; 2019 Municipal Tracking System<p>

        </footer>

    


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="scripts/parallax.min.js"></script>
            <script src="scripts/main.js"></script>





    </body>



</html>

