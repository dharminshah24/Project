<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prop_add.aspx.cs" Inherits="Municipal_Tracking_System.prop_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Admin Panel of Municipal Tracking System</title>

    <link rel="stylesheet" href="css/admin.css">
    
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

        <div class="addnewdata">
            <form class="addnewdata-form" runat="server">

              <h3 class="titleaddnewdata">Add Record in Municipal Tracking System</h3>

                  <div class="addnewdata-form1" runat="server">

                      <table class="col-sm-9">
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

                      <table class="col-sm-8">
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
                              <td><asp:Button ID="add" type="Submit" class="submit-bttn" runat="server" Text="Submit" OnClick="AddData_Click" />
                        
                                  <input type="reset"  class="reset-bttn" value="Reset"></td>
                              
                          </tr>

                          <tr>
                              <td><asp:Label ID="Add_Data" runat="server" ForeColor="Red"></asp:Label></td>
                          </tr>

                      </table>
      
                </div>

          </form>

        </div>

    </section>

    </body>

</html>

