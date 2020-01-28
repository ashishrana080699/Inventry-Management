<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="computerInventry.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
       <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
        <asp:BoundField DataField="cpuQ" HeaderText="cpuQ" SortExpression="cpuQ" />
        <asp:BoundField DataField="cpuP" HeaderText="cpuP" SortExpression="cpuP" />
        <asp:BoundField DataField="cpuid" HeaderText="cpuid" SortExpression="cpuid" />
        <asp:BoundField DataField="monitorQ" HeaderText="monitorQ" SortExpression="monitorQ" />
        <asp:BoundField DataField="monitorP" HeaderText="monitorP" SortExpression="monitorP" />
        <asp:BoundField DataField="monitorid" HeaderText="monitorid" SortExpression="monitorid" />
        <asp:BoundField DataField="keyboardQ" HeaderText="keyboardQ" SortExpression="keyboardQ" />
        <asp:BoundField DataField="keyboardP" HeaderText="keyboardP" SortExpression="keyboardP" />
        <asp:BoundField DataField="keyboardid" HeaderText="keyboardid" SortExpression="keyboardid" />
        <asp:BoundField DataField="mouseQ" HeaderText="mouseQ" SortExpression="mouseQ" />
        <asp:BoundField DataField="mouseP" HeaderText="mouseP" SortExpression="mouseP" />
        <asp:BoundField DataField="mouseid" HeaderText="mouseid" SortExpression="mouseid" />
        <asp:BoundField DataField="speakerQ" HeaderText="speakerQ" SortExpression="speakerQ" />
        <asp:BoundField DataField="speakerP" HeaderText="speakerP" SortExpression="speakerP" />
        <asp:BoundField DataField="speakerid" HeaderText="speakerid" SortExpression="speakerid" />
        <asp:BoundField DataField="webcamQ" HeaderText="webcamQ" SortExpression="webcamQ" />
        <asp:BoundField DataField="webcamP" HeaderText="webcamP" SortExpression="webcamP" />
        <asp:BoundField DataField="webcamid" HeaderText="webcamid" SortExpression="webcamid" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_InventryConnectionString %>" SelectCommand="SELECT * FROM [generalentrytbl]"></asp:SqlDataSource>
    
    
   
</asp:Content>

