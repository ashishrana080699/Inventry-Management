<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="computerInventry.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
            <asp:BoundField DataField="part" HeaderText="part" SortExpression="part" />
            <asp:BoundField DataField="productid" HeaderText="productid" SortExpression="productid" />
            <asp:BoundField DataField="productprice" HeaderText="productprice" SortExpression="productprice" />
            <asp:BoundField DataField="productquantity" HeaderText="productquantity" SortExpression="productquantity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Computer_InventryConnectionString %>" DeleteCommand="DELETE FROM [inserttbl] WHERE [ID] = @original_ID AND (([company] = @original_company) OR ([company] IS NULL AND @original_company IS NULL)) AND (([part] = @original_part) OR ([part] IS NULL AND @original_part IS NULL)) AND (([productid] = @original_productid) OR ([productid] IS NULL AND @original_productid IS NULL)) AND (([productprice] = @original_productprice) OR ([productprice] IS NULL AND @original_productprice IS NULL)) AND (([productquantity] = @original_productquantity) OR ([productquantity] IS NULL AND @original_productquantity IS NULL))" InsertCommand="INSERT INTO [inserttbl] ([company], [part], [productid], [productprice], [productquantity]) VALUES (@company, @part, @productid, @productprice, @productquantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [inserttbl]" UpdateCommand="UPDATE [inserttbl] SET [company] = @company, [part] = @part, [productid] = @productid, [productprice] = @productprice, [productquantity] = @productquantity WHERE [ID] = @original_ID AND (([company] = @original_company) OR ([company] IS NULL AND @original_company IS NULL)) AND (([part] = @original_part) OR ([part] IS NULL AND @original_part IS NULL)) AND (([productid] = @original_productid) OR ([productid] IS NULL AND @original_productid IS NULL)) AND (([productprice] = @original_productprice) OR ([productprice] IS NULL AND @original_productprice IS NULL)) AND (([productquantity] = @original_productquantity) OR ([productquantity] IS NULL AND @original_productquantity IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_company" Type="String" />
            <asp:Parameter Name="original_part" Type="String" />
            <asp:Parameter Name="original_productid" Type="String" />
            <asp:Parameter Name="original_productprice" Type="Decimal" />
            <asp:Parameter Name="original_productquantity" Type="Int32" />
        </DeleteParameters>
       
    </asp:SqlDataSource>
</asp:Content>
