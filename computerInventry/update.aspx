<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="computerInventry.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
            <asp:BoundField DataField="part" HeaderText="part" SortExpression="part" />
            <asp:BoundField DataField="productid" HeaderText="productid" SortExpression="productid" />
            <asp:BoundField DataField="productprice" HeaderText="productprice" SortExpression="productprice" />
            <asp:BoundField DataField="productquantity" HeaderText="productquantity" SortExpression="productquantity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Computer_InventryConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [inserttbl]" UpdateCommand="UPDATE [inserttbl] SET [company] = @company, [part] = @part, [productid] = @productid, [productprice] = @productprice, [productquantity] = @productquantity WHERE [ID] = @original_ID AND (([company] = @original_company) OR ([company] IS NULL AND @original_company IS NULL)) AND (([part] = @original_part) OR ([part] IS NULL AND @original_part IS NULL)) AND (([productid] = @original_productid) OR ([productid] IS NULL AND @original_productid IS NULL)) AND (([productprice] = @original_productprice) OR ([productprice] IS NULL AND @original_productprice IS NULL)) AND (([productquantity] = @original_productquantity) OR ([productquantity] IS NULL AND @original_productquantity IS NULL))">
       
        <UpdateParameters>
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="part" Type="String" />
            <asp:Parameter Name="productid" Type="String" />
            <asp:Parameter Name="productprice" Type="Decimal" />
            <asp:Parameter Name="productquantity" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_company" Type="String" />
            <asp:Parameter Name="original_part" Type="String" />
            <asp:Parameter Name="original_productid" Type="String" />
            <asp:Parameter Name="original_productprice" Type="Decimal" />
            <asp:Parameter Name="original_productquantity" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
