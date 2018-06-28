<%@ Page Title="" Language="C#" MasterPageFile="~/StudentRegistration.Master" AutoEventWireup="true" CodeBehind="StudentSchedule.aspx.cs" Inherits="StudentClassRegistration.WebForm4" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        Register</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Here are your classes"></asp:Label>
    <br />
    <br />
    <asp:ListBox ID="Chlasses" runat="server">
        <asp:ListItem>Basket Weaving 101</asp:ListItem>
        <asp:ListItem>Underwater Basket Weaving</asp:ListItem>
        <asp:ListItem>Math</asp:ListItem>
        <asp:ListItem>Hovel Fabrication</asp:ListItem>
      </asp:ListBox> 
</asp:Content>