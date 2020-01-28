<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Entry.aspx.cs" Inherits="computerInventry.Entry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div><br />
        <table style="margin-left: 40px; margin-right: 0px;" border="0" class="nav-justified">
            <tr>
                <td style="width: 128px">&nbsp;<br />
                    <br />
                    <br />
                    Company<br />
                    <br />
                    <br />
                </td>
                <td style="width: 248px"><asp:DropDownList ID="company" runat="server" Height="22px" Width="140px"
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
                <td style="width: 128px">&nbsp;<br />
                    Parts<br />
                    <br />
                </td>
                <td style="width: 248px">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity</td>
                
                <td style="width: 248px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price Per Piece</td>
                <td style="width: 248px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product ID</td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<br />
                    CPU<br />
                    <br />
                </td>
                <td style="width: 248px">&nbsp;<asp:TextBox ID="cpuquantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="cpuquantity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="cpuquantity" runat="server" ErrorMessage="Enter a Number" ValidationExpression="\d+"></asp:RegularExpressionValidator></td>
                
                <td style="width: 248px">&nbsp;<asp:TextBox ID="cpuprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="cpuprice" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="cpuid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="cpuid" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                
                <td style="width: 128px">&nbsp;<br />
                    Monitor<br />
                    <br />
                </td>
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="monitorquantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="monitorquantity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="monitorquantity" runat="server" ErrorMessage="Enter a Number" ValidationExpression="\d+"></asp:RegularExpressionValidator></td>
                
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="monitorprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="monitorprice" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                
                <td style="width: 248px">&nbsp;<asp:TextBox ID="monitorid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="monitorid" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<br />
                    Keyboard<br />
                    <br />
                </td>
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="keyboardquantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="keyboardquantity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="keyboardquantity" runat="server" ErrorMessage="Enter a Number" ValidationExpression="\d+"></asp:RegularExpressionValidator></td>
                
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="keyboardprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="keyboardprice" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                
                <td style="width: 248px">&nbsp;<asp:TextBox ID="keyboardid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="keyboardid" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<br />
                    Mouse<br />
                    <br />
                </td>
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="mousequantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="mousequantity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="mousequantity" runat="server" ErrorMessage="Enter a Number" ValidationExpression="\d+"></asp:RegularExpressionValidator></td>
                
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="mouseprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="mouseprice" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                
                <td style="width: 248px">&nbsp;<asp:TextBox ID="mouseid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="mouseid" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 128px; height: 45px;">&nbsp;<br />
                    Speaker<br />
                    <br />
                </td>
                 <td style="width: 248px; height: 45px;">&nbsp;<asp:TextBox ID="speakerquantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="speakerquantity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="speakerquantity" runat="server" ErrorMessage="Enter a Number" ValidationExpression="\d+"></asp:RegularExpressionValidator></td>
                
                 <td style="width: 248px; height: 45px;">&nbsp;<asp:TextBox ID="speakerprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="speakerprice" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
                
                <td style="width: 248px">&nbsp;<asp:TextBox ID="speakerid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="speakerid" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">&nbsp;<br />
                    Web Camera<br />
                    <br />
                </td>
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="webcamquantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="webcamquantity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="webcamquantity" runat="server" ErrorMessage="Enter a Number" ValidationExpression="\d+"></asp:RegularExpressionValidator></td>
                
                 <td style="width: 248px">&nbsp;<asp:TextBox ID="webcamprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="webcamprice" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                
                     <br />
                </td>
                
                <td style="width: 248px">&nbsp;<asp:TextBox ID="webcamid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="webcamid" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
           
           
        </table>
        
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="insert" runat="server" Text="Submit" OnClick="Button1_Click" Width="124px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="message" runat="server" Text=""></asp:Label>
        <br />
        <br />
    </div>
   
</asp:Content>
