<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="computerInventry.insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        
        <br />
        
        <br />
        
        <table style="width: 100%;">
            <tr> 
                <td style="width: 117px; height: 22px;">
                    <br />
                    Company
                    <br />
                    <br />
                </td>
                <td style="width: 248px; height: 22px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="company1" runat="server" Height="22px" Width="140px"
                TabIndex="14" onchange="javascript:OnSelectedChanged(this,event);" style="margin-left: 7px">
                <asp:ListItem Value="HP"></asp:ListItem>
                <asp:ListItem Value="Dell"></asp:ListItem>
                <asp:ListItem Value="Lenovo"></asp:ListItem>
                <asp:ListItem Value="Asus"></asp:ListItem>
                <asp:ListItem Value="Acer"></asp:ListItem>
                <asp:ListItem Value="Intex"></asp:ListItem>
            </asp:DropDownList></td>
               
                
            </tr>
            <tr>
                <td style="width: 117px">
                    <br />
                    Part<br />
&nbsp;</td>
               <td style="width: 248px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="part" runat="server" Height="22px" Width="140px"
                TabIndex="14" onchange="javascript:OnSelectedChanged(this,event);" style="margin-left: 7px">
                <asp:ListItem Value="CPU"></asp:ListItem>
                <asp:ListItem Value="Monitor"></asp:ListItem>
                <asp:ListItem Value="Mouse"></asp:ListItem>
                <asp:ListItem Value="Keyboard"></asp:ListItem>
                <asp:ListItem Value="Speaker"></asp:ListItem>
                <asp:ListItem Value="Web Camera"></asp:ListItem>
            </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 117px">
                    <br />
                    Product ID<br />
                    <br />
                </td>
               
                    <td style="width: 248px">&nbsp;<asp:TextBox ID="productid" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="productid" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
              <tr>
                <td style="width: 117px">&nbsp;<br />
                    Product Price<br />
                    <br />
                  </td>
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="productprice" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="productprice" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                 

                 </td>
            </tr>
            <tr>
                 <td style="width: 117px">
                     <br />
                     &nbsp;Product Quantity<br />
                     <br />
                  </td>
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="productquantity" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="productquantity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="productquantity" runat="server" ErrorMessage="Enter a Number" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                 </td>
                
            </tr>
             
        </table>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" style="margin-left: 164px" Width="99px" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="message" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
        <br />
    </div>




</asp:Content>
