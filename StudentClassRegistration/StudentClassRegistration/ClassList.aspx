<%@ Page Title="" Language="C#" MasterPageFile="~/StudentRegistration.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="StudentClassRegistration.WebForm2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        My Classes</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Our Current Offerings"></asp:Label>
    <br />
    <asp:ListBox ID="ListBox1" runat="server">
        <asp:ListItem>Class 1</asp:ListItem>
        <asp:ListItem>Class 2</asp:ListItem>
        <asp:ListItem>Class 3</asp:ListItem>
    </asp:ListBox>
</asp:Content>