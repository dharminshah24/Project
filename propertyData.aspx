<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="propertyData.aspx.cs" Inherits="Municipal_Tracking_System.propertyData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title> Existing Property Data</title>
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

        <div class="property">
            <form class="propertyData-form" runat="server">

              <h3 class="titlepropertydata">Property Data</h3>
                <h3 class="titlepropertydata">

                    <asp:TextBox ID="Search1" runat="server" placeholder="type city name here" ></asp:TextBox>
                    <asp:Button ID="Search" runat="server" OnClick="Search_Click" Text="Search" />
                    <asp:Label ID="Search_Data" runat="server" ForeColor="Red"></asp:Label>
                </h3>
                
                <table class="propdata">
                    <tr>
                        <td>

                            <asp:Button ID="edit" class="edit-bttn" runat="server" Text="Edit Data / Delete Data" action="updateTest.aspx" OnClick="edit_Click" />
            
                        </td>
                        
                    </tr>
                    
                </table>
                  
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="#333333" GridLines="None" Height="17px" Width="1065px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="id" HeaderText="No" AccessibleHeaderText="Serial Number">
                      <HeaderStyle Font-Size="15pt" />
                      <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                      </asp:BoundField>
                    
                      <asp:BoundField DataField="ptype" HeaderText="Property Type" AccessibleHeaderText="Property Type">
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

               
        
            


             </form>

        </div>

    </section>

    <footer class="auto-style1">

        <a href="aboutus.aspx" class="aboutus">About us</a>
        <a href="contactus.aspx" class="contactus">Contact us</a>
        <p>&copy; 2019 Municipal Tracking System</p>
    
    </footer>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="scripts/parallax.min.js"></script>
        <script src="scripts/main.js"></script>



    </body>



</html>


