<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/StudentRegistration.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StudentClassRegistration.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="LabelMessage" runat="server" Text="Label" Font-Size="Larger" 
        ForeColor="Black"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server" Style="position: absolute; top: 47px;
        left: 8px; width: 552px; height: 309px;" BackColor="Green">
         <br />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="LabelStudentLogin" runat="server" ForeColor="White" Text="Student Login"></asp:Label>
        &nbsp; <br /> &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxStudentLogin" 
            runat="server" Width="260px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBoxStudentLogin" 
            ErrorMessage="Please enter your Student login &lt;br/&gt;(ex. BSmith01)" 
            ForeColor="White">*</asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="LabelStudentPassword" runat="server" ForeColor="White" 
            Text="Student Password"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxStudentPassword" runat="server" Width="260px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBoxStudentPassword" 
            ErrorMessage="Please enter your student password" ForeColor="White">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonLogin" runat="server" Text="Login" onclick="ButtonLogin_Click" Width="85px" />
             &nbsp;<asp:Button ID="ButtonRequestNewLogin" runat="server" 
             Text="Request a new Login" CausesValidation="False" 
             onclick="ButtonRequestNewLogin_Click" />
         <br />
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonReturn" runat="server" 
             onclick="ButtonReturn_Click" Text="Return to Class List" Visible="False" 
             CausesValidation="False" />
         <br />
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonLogOut" runat="server" CausesValidation="False" onclick="ButtonLogOut_Click" Text="Logout" Width="267px" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ForeColor="White" />

    </asp:Panel>
</asp:Content>
