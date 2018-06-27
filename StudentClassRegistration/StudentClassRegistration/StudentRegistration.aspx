<%@ Page Title="Student Registration" Language="C#" MasterPageFile="~/StudentRegistration.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="StudentClassRegistration.WebForm6" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .PadLeft
        {
            position: relative;
            top: 10px;
            left: 10px;
            width:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceRequestedClass" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>"
        ProviderName="<%$ ConnectionStrings:AdvWebProjectConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [Classes] WHERE ([ClassId] = @ClassId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ClassId" QueryStringField="ClassId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Label ID="LabelMessage" runat="server" Text="Label" Font-Size="Larger" ForeColor="Black"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server" Style="position: relative; top: 47px; left: 8px;
        width: 748px; height: 220px;" BackColor="Maroon">
        <br />
        &nbsp; <asp:Button ID="ButtonConfirm" runat="server" 
            Text="Confim Selection"    onclick="ButtonConfirm_Click" Width="160px" />
        &nbsp;<asp:Button ID="ButtonReturn" runat="server" OnClick="ButtonReturn_Click" 
            Text="Select a different class" Width="182px" />
         &nbsp;&nbsp;<asp:Button ID="ButtonVerifyYourClasses" runat="server" 
            Text="Verify Your Current Classes" onclick="ButtonVerifyYourClasses_Click" 
            Width="356px" />
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="PadLeft"
            DataKeyNames="ClassId" DataSourceID="SqlDataSourceRequestedClass" ForeColor="Black"
            GridLines="Vertical" Height="16px" HorizontalAlign="Left" 
            ShowHeaderWhenEmpty="True" Width="720px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
                <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"
                ForeColor="Black" />
            <SelectedRowStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>

    </asp:Panel>

</asp:Content>
