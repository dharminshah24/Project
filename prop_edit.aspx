<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prop_edit.aspx.cs" Inherits="Municipal_Tracking_System.prop_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login to Municipal Tracking System</title>

</head>

<body>
    <section class="cover-main" id="home">
        <header>
            <nav class="nav-wrapper">
                <div class="logo">
                    <a href="home.aspx"></a>
                </div>
                <ul class="menu">
                    <li><a href="admin.aspx">Logout</a></li>
                </ul>
            </nav>
        </header>


        <div class="prop_edit">

            <form class="Prop-edit" runat="server">

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

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">  
                    
                        <AlternatingRowStyle BackColor="White" />
                    
                        <Columns>  
                        
                            <asp:BoundField DataField="id" HeaderText="No" />  
                            <asp:BoundField DataField="ptype" HeaderText="Property Type" />  
                            <asp:BoundField DataField="acrage" HeaderText="Acrage" />  
                            <asp:BoundField DataField="year" HeaderText="Year" />  
                            <asp:BoundField DataField="address" HeaderText="Address" />  
                            <asp:BoundField DataField="city" HeaderText="City" />  
                            <asp:BoundField DataField="heritage" HeaderText="Heritage" />  
                            <asp:BoundField DataField="Owner" HeaderText="Owner" />  
                            <asp:BoundField DataField="liens" HeaderText="Liens" />  
                            <asp:BoundField DataField="taxes" HeaderText="Taxes" />  
                            
                            <asp:CommandField ShowEditButton="true" />  
                            <asp:CommandField ShowDeleteButton="true" AccessibleHeaderText="Delete Button" /> 

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

        </section>
</body>
    
</html>