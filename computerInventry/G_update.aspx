<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="G_update.aspx.cs" Inherits="computerInventry.G_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Computer_InventryConnectionString %>" DeleteCommand="DELETE FROM [generalentrytbl] WHERE [ID] = @original_ID AND (([company] = @original_company) OR ([company] IS NULL AND @original_company IS NULL)) AND (([cpuQ] = @original_cpuQ) OR ([cpuQ] IS NULL AND @original_cpuQ IS NULL)) AND (([cpuP] = @original_cpuP) OR ([cpuP] IS NULL AND @original_cpuP IS NULL)) AND (([cpuid] = @original_cpuid) OR ([cpuid] IS NULL AND @original_cpuid IS NULL)) AND (([monitorQ] = @original_monitorQ) OR ([monitorQ] IS NULL AND @original_monitorQ IS NULL)) AND (([monitorP] = @original_monitorP) OR ([monitorP] IS NULL AND @original_monitorP IS NULL)) AND (([monitorid] = @original_monitorid) OR ([monitorid] IS NULL AND @original_monitorid IS NULL)) AND (([keyboardQ] = @original_keyboardQ) OR ([keyboardQ] IS NULL AND @original_keyboardQ IS NULL)) AND (([keyboardP] = @original_keyboardP) OR ([keyboardP] IS NULL AND @original_keyboardP IS NULL)) AND (([keyboardid] = @original_keyboardid) OR ([keyboardid] IS NULL AND @original_keyboardid IS NULL)) AND (([mouseQ] = @original_mouseQ) OR ([mouseQ] IS NULL AND @original_mouseQ IS NULL)) AND (([mouseP] = @original_mouseP) OR ([mouseP] IS NULL AND @original_mouseP IS NULL)) AND (([mouseid] = @original_mouseid) OR ([mouseid] IS NULL AND @original_mouseid IS NULL)) AND (([speakerQ] = @original_speakerQ) OR ([speakerQ] IS NULL AND @original_speakerQ IS NULL)) AND (([speakerP] = @original_speakerP) OR ([speakerP] IS NULL AND @original_speakerP IS NULL)) AND (([speakerid] = @original_speakerid) OR ([speakerid] IS NULL AND @original_speakerid IS NULL)) AND (([webcamQ] = @original_webcamQ) OR ([webcamQ] IS NULL AND @original_webcamQ IS NULL)) AND (([webcamP] = @original_webcamP) OR ([webcamP] IS NULL AND @original_webcamP IS NULL)) AND (([webcamid] = @original_webcamid) OR ([webcamid] IS NULL AND @original_webcamid IS NULL))" InsertCommand="INSERT INTO [generalentrytbl] ([company], [cpuQ], [cpuP], [cpuid], [monitorQ], [monitorP], [monitorid], [keyboardQ], [keyboardP], [keyboardid], [mouseQ], [mouseP], [mouseid], [speakerQ], [speakerP], [speakerid], [webcamQ], [webcamP], [webcamid]) VALUES (@company, @cpuQ, @cpuP, @cpuid, @monitorQ, @monitorP, @monitorid, @keyboardQ, @keyboardP, @keyboardid, @mouseQ, @mouseP, @mouseid, @speakerQ, @speakerP, @speakerid, @webcamQ, @webcamP, @webcamid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [generalentrytbl]" UpdateCommand="UPDATE [generalentrytbl] SET [company] = @company, [cpuQ] = @cpuQ, [cpuP] = @cpuP, [cpuid] = @cpuid, [monitorQ] = @monitorQ, [monitorP] = @monitorP, [monitorid] = @monitorid, [keyboardQ] = @keyboardQ, [keyboardP] = @keyboardP, [keyboardid] = @keyboardid, [mouseQ] = @mouseQ, [mouseP] = @mouseP, [mouseid] = @mouseid, [speakerQ] = @speakerQ, [speakerP] = @speakerP, [speakerid] = @speakerid, [webcamQ] = @webcamQ, [webcamP] = @webcamP, [webcamid] = @webcamid WHERE [ID] = @original_ID AND (([company] = @original_company) OR ([company] IS NULL AND @original_company IS NULL)) AND (([cpuQ] = @original_cpuQ) OR ([cpuQ] IS NULL AND @original_cpuQ IS NULL)) AND (([cpuP] = @original_cpuP) OR ([cpuP] IS NULL AND @original_cpuP IS NULL)) AND (([cpuid] = @original_cpuid) OR ([cpuid] IS NULL AND @original_cpuid IS NULL)) AND (([monitorQ] = @original_monitorQ) OR ([monitorQ] IS NULL AND @original_monitorQ IS NULL)) AND (([monitorP] = @original_monitorP) OR ([monitorP] IS NULL AND @original_monitorP IS NULL)) AND (([monitorid] = @original_monitorid) OR ([monitorid] IS NULL AND @original_monitorid IS NULL)) AND (([keyboardQ] = @original_keyboardQ) OR ([keyboardQ] IS NULL AND @original_keyboardQ IS NULL)) AND (([keyboardP] = @original_keyboardP) OR ([keyboardP] IS NULL AND @original_keyboardP IS NULL)) AND (([keyboardid] = @original_keyboardid) OR ([keyboardid] IS NULL AND @original_keyboardid IS NULL)) AND (([mouseQ] = @original_mouseQ) OR ([mouseQ] IS NULL AND @original_mouseQ IS NULL)) AND (([mouseP] = @original_mouseP) OR ([mouseP] IS NULL AND @original_mouseP IS NULL)) AND (([mouseid] = @original_mouseid) OR ([mouseid] IS NULL AND @original_mouseid IS NULL)) AND (([speakerQ] = @original_speakerQ) OR ([speakerQ] IS NULL AND @original_speakerQ IS NULL)) AND (([speakerP] = @original_speakerP) OR ([speakerP] IS NULL AND @original_speakerP IS NULL)) AND (([speakerid] = @original_speakerid) OR ([speakerid] IS NULL AND @original_speakerid IS NULL)) AND (([webcamQ] = @original_webcamQ) OR ([webcamQ] IS NULL AND @original_webcamQ IS NULL)) AND (([webcamP] = @original_webcamP) OR ([webcamP] IS NULL AND @original_webcamP IS NULL)) AND (([webcamid] = @original_webcamid) OR ([webcamid] IS NULL AND @original_webcamid IS NULL))">
       
        <UpdateParameters>
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="cpuQ" Type="Int32" />
            <asp:Parameter Name="cpuP" Type="Decimal" />
            <asp:Parameter Name="cpuid" Type="String" />
            <asp:Parameter Name="monitorQ" Type="Int32" />
            <asp:Parameter Name="monitorP" Type="Decimal" />
            <asp:Parameter Name="monitorid" Type="String" />
            <asp:Parameter Name="keyboardQ" Type="Int32" />
            <asp:Parameter Name="keyboardP" Type="Decimal" />
            <asp:Parameter Name="keyboardid" Type="String" />
            <asp:Parameter Name="mouseQ" Type="Int32" />
            <asp:Parameter Name="mouseP" Type="Decimal" />
            <asp:Parameter Name="mouseid" Type="String" />
            <asp:Parameter Name="speakerQ" Type="Int32" />
            <asp:Parameter Name="speakerP" Type="Decimal" />
            <asp:Parameter Name="speakerid" Type="String" />
            <asp:Parameter Name="webcamQ" Type="Int32" />
            <asp:Parameter Name="webcamP" Type="Decimal" />
            <asp:Parameter Name="webcamid" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_company" Type="String" />
            <asp:Parameter Name="original_cpuQ" Type="Int32" />
            <asp:Parameter Name="original_cpuP" Type="Decimal" />
            <asp:Parameter Name="original_cpuid" Type="String" />
            <asp:Parameter Name="original_monitorQ" Type="Int32" />
            <asp:Parameter Name="original_monitorP" Type="Decimal" />
            <asp:Parameter Name="original_monitorid" Type="String" />
            <asp:Parameter Name="original_keyboardQ" Type="Int32" />
            <asp:Parameter Name="original_keyboardP" Type="Decimal" />
            <asp:Parameter Name="original_keyboardid" Type="String" />
            <asp:Parameter Name="original_mouseQ" Type="Int32" />
            <asp:Parameter Name="original_mouseP" Type="Decimal" />
            <asp:Parameter Name="original_mouseid" Type="String" />
            <asp:Parameter Name="original_speakerQ" Type="Int32" />
            <asp:Parameter Name="original_speakerP" Type="Decimal" />
            <asp:Parameter Name="original_speakerid" Type="String" />
            <asp:Parameter Name="original_webcamQ" Type="Int32" />
            <asp:Parameter Name="original_webcamP" Type="Decimal" />
            <asp:Parameter Name="original_webcamid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
