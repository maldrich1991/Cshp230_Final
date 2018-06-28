<%@ Page Title="" Language="C#" MasterPageFile="~/StudentRegistration.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="StudentClassRegistration.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <p>Register</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem>Basket Weaving 101</asp:ListItem>
        <asp:ListItem>Advanced Basket Manufacturing 102</asp:ListItem>
        <asp:ListItem>Underwater Basket Assembly 401</asp:ListItem>
        <asp:ListItem>Basic Math</asp:ListItem>
        <asp:ListItem>Snake Charming</asp:ListItem>
        <asp:ListItem>Rudimentry Physics</asp:ListItem>
       
    </asp:CheckBoxList>
     <br />
        <asp:Button runat="server" Text="Complete Registration"/>
</asp:Content>
