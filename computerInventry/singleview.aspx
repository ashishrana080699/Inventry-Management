<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="singleview.aspx.cs" Inherits="computerInventry.singleview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
        <asp:BoundField DataField="part" HeaderText="part" SortExpression="part" />
        <asp:BoundField DataField="productid" HeaderText="productid" SortExpression="productid" />
        <asp:BoundField DataField="productprice" HeaderText="productprice" SortExpression="productprice" />
        <asp:BoundField DataField="productquantity" HeaderText="productquantity" SortExpression="productquantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_InventryConnectionString %>" SelectCommand="SELECT * FROM [inserttbl]"></asp:SqlDataSource>
</asp:Content>
