<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateData.aspx.cs" Inherits="Municipal_Tracking_System.EditData" %>

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
            .auto-style2 {
                left: 0px;
                right: 0px;
                bottom: -11px;
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
                </ul>
            </nav>
        </header>

        <div class="update">

            <form class="update-form" runat="server">

                <div class="updatedata-form1" runat="server">

                    <h3 class="title">Update Property Data</h3>

                
                <table>
                    
                    <tr>
                      
                        <td><label for="Property_Number">Property Number:</label></td>
              
                        <td><input required type="text" class="Property_Number" id="Property_Number" runat="server" placeholder="Enter Property Number"></td>
                    
                        <td><asp:Button ID="view_data" runat="server" Text="View Data" OnClick="viewdata_Click"/></td>

                        <td><asp:Label ID="view_Data_Message" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>

                    </table>

                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="#333333" GridLines="None" Height="17px" Width="1065px" OnSelectedIndexChanged="viewdata_Click">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="id" HeaderText="No" AccessibleHeaderText="Serial Number">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="year" HeaderText="Year" AccessibleHeaderText="Year">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="address" HeaderText="Address" AccessibleHeaderText="Address">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="city" HeaderText="City" AccessibleHeaderText="City">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="heritage" HeaderText="Heritage" AccessibleHeaderText="Heritage">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="Owner" HeaderText="Owner" AccessibleHeaderText="Owner">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="liens" HeaderText="Liens" AccessibleHeaderText="Liens">
                      <HeaderStyle HorizontalAlign="Center" Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center"  />
                      </asp:BoundField>
                      <asp:BoundField DataField="taxes" HeaderText="Taxes" AccessibleHeaderText="Taxes">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                  </Columns>
                  <EditRowStyle BackColor="#7C6F57" />
                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#E3EAEB" />
                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F8FAFA" />
                  <SortedAscendingHeaderStyle BackColor="#246B61" />
                  <SortedDescendingCellStyle BackColor="#D4DFE1" />
                  <SortedDescendingHeaderStyle BackColor="#15524A" />
                  </asp:GridView>
               
                    <%--<table class="1">
                          <tr>
                              <td><label for="update_ptype">Property Type:</label></td> <br />
                              <td>
                                  <select required class="update_ptype" id ="update_ptype" runat="server" name="D1">
                        
                                        <option value> Please select a topic </option>
                                        <option  value="Residential"> Residential </option>
                                        <option  value="Commercial"> Commercial </option>
                                  </select>
                              </td>
                          </tr>

                          <tr>

                              <td><label for="update_acrage">Acrage:</label></td>

                              <td><input required type="text" class="update_acrage" id ="update_acrage" runat="server" pattern="[0-9].{1,8}" placeholder="Acrage"></td>

                         </tr>

                         <tr>

                              <td><label for="update_year">Constructed Year:</label></td>

                              <td><input required type="text" class="update_year" id="update_year" runat="server" pattern="[0-9].{3,3}" placeholder="Year of Construction"></td>
                          
                         </tr>

                         <tr>
                          
                              <td><label for="update_address">Address:</label></td>
                          
                              <td><input required type="text" class="update_address" id="update_address" runat="server" pattern="[a-zA-Z0-9-]+.{5,50}" placeholder="Address"></td>
                         
                         </tr>

                          <tr>

                              <td><label for="updatea_city">City:</label></td>
                              <td>
                                  
                                  <select required class="update_city" id="update_city" runat="server" name="D1">
                                  <option value> Please select a topic </option>
                                  <option  value="Waterloo"> Waterloo </option>
                                  <option  value="Kitchener"> Kitchener </option>
                                  </select>

                              </td>


                          </tr>

                      </table>
                  
                          
                </div>

              <div class="updatedata-form2" runat="server">

                      <table class="2">
                          <tr>
                              <td><label for="update_heritage">Heritage Declared:</label></td>
                              <td>
                                  <select required class="update_heritage" id="update_heritage" runat="server" name="D1">
                                      <option value> Please select a topic </option>
                                      <option  value="Yes"> Yes </option>
                                      <option  value="No"> No </option>

                                   </select>
                              </td>
                          <tr>
                              <td><label for="update_owner">Registered Owner:</label></td>
                              <td><input required type="text" class="update_owner" id="update_owner" runat="server" pattern="[A-Za-z ].{2,25}" placeholder="Owner Name"></td>
                              
                          </tr>
                          <tr>
                              <td><label for="update_liens">Liens:</label></td>
                              <td><input required type="text" class="update_liens" id="update_liens" runat="server" pattern="[A-Za-z ]+.{3,50}" placeholder="Liens"></td>
                              
                          </tr>

                          <tr>
                              <td><label for="update_taxes">Annual Property Taxes:</label></td>
                              <td><input required type="text" class="update_taxes" id="update_taxes" runat="server" pattern="[0-9].{1,8}" placeholder="Total Tax"></td>
                          </tr>

                          <tr>
                    
 --%>
                              <td><asp:Label ID="Update_Message" runat="server" ForeColor="Red"></asp:Label></td>
                        
                              <td><asp:Button ID="update_bttn" class="update-bttn" runat="server" Text="Update Record" OnClick="Update_Click" /></td>
                        
                              <td><input class="reset-bttn" type="reset" value="Reset"></td>
                        
                          </tr>


                      </table>
                  </div>
      
      
            </form>


        </div>

        <footer class="auto-style2">
            
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


