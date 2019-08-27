<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prop_read.aspx.cs" Inherits="Municipal_Tracking_System.prop_delete" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
        <title> Existing Property Data</title>
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

        <div class="property">
            <form class="propertyData-form" runat="server">

              <h3 class="titlepropertydata">Property Data</h3>
                <h3 class="titlepropertydata">
                    <asp:TextBox ID="Search1" runat="server" placeholder="type here" ></asp:TextBox>
                    <asp:Button ID="Search" runat="server" OnClick="Search_Click" Text="Search" />
                </h3>
                  
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

    </body>



</html>


