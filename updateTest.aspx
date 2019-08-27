<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateTest.aspx.cs" Inherits="Municipal_Tracking_System.updateTest" %>

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
                left: 7px;
                right: -7px;
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

        <div class="update">

            <form class="update-form" runat="server">

                <div class="updatedata-form1" runat="server">

                    <h3 class="title-updateproperty">Update Property Data</h3>

                
                <table class="update">
                    
                    <tr>
                      
                        <td><label for="Property_Number">Property Number:</label></td>
              
                        <td><input required type="text" class="Property_Number" id="Property_Number" runat="server" placeholder="Enter Property Number"></td>
                   
                        <td><asp:Button ID="view_data" runat="server" Text="View Data" OnClick="viewdata_Click"/></td>

                        <td><asp:Label ID="view_Data_Message" runat="server" ForeColor="Red"></asp:Label></td>
                    
                        </tr>

                    </table>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellPadding="6" Height="17px" Width="1065px" ForeColor="#333333" GridLines="None">  
                    
                        <AlternatingRowStyle BackColor="White" />
                    
                        <Columns>  
                        
                            <asp:BoundField DataField="id" HeaderText="No" >  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="ptype" HeaderText="Property Type">
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="acrage" HeaderText="Year">  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="year" HeaderText="Address"> 
                             <HeaderStyle Font-Size="15pt" />
                             <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="address" HeaderText="Country">  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="city" HeaderText="City">  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="heritage" HeaderText="Heritage">  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="Owner" HeaderText="Owner">  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="liens" HeaderText="Liens">  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="taxes" HeaderText="Taxes">  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:BoundField>
                            
                            <asp:CommandField ShowEditButton="true" >  
                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:CommandField ShowDeleteButton="true" > 

                            <HeaderStyle Font-Size="15pt" />
                            <ItemStyle Font-Size="12pt" HorizontalAlign="Center" />
                            </asp:CommandField>

                        </Columns>  
                    
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    
                    </asp:GridView>
                    
                </div>

                <div>  
                
                    <asp:Label ID="lblresult" runat="server"></asp:Label>  
                
                </div> 

            </form>

        </div>
        <footer class="auto-style1">
            
            <a href="aboutus.aspx" class="aboutus">About us</a>
            <a href="">&nbsp;</a>
            <a href="contactus.aspx" class="contactus">Contact us</a>
            <p>&copy; 2019 Municipal Tracking System</p>

        </footer>

    </section>

</body>
    
</html>