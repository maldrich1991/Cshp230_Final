<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/StudentRegistration.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StudentClassRegistration.WebForm5" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <asp:Label ID="LabelMessage" runat="server" Text="Label" Font-Size="Larger" ForeColor="Black"></asp:Label>

    <br />

    <asp:Panel ID="Panel1" runat="server" Style="position: absolute; top: 47px; left: 8px; width: 552px; height: 309px;" BackColor="Green">

        <br /> <br /> &nbsp;&nbsp;&nbsp;

        <asp:Label ID="LabelStudentLogin" runat="server" ForeColor="White" Text="Student Login"></asp:Label>

        <br /> <br /> &nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextBoxStudentLogin" runat="server" Width="260px"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxStudentLogin" 
            ErrorMessage="Please enter your Student login &lt;br/&gt;(ex. maldrich9901)" 
            ForeColor="White">*</asp:RequiredFieldValidator>

        <br /> <br /> &nbsp;&nbsp;&nbsp;

        <asp:Label ID="LabelStudentPassword" runat="server" ForeColor="White" 
            Text="Student Password"></asp:Label>

        <br /> <br /> &nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="TextBoxStudentPassword" runat="server" Width="260px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBoxStudentPassword" 
            ErrorMessage="Please enter your student password" ForeColor="White">*</asp:RequiredFieldValidator>

        <br /> <br /> &nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="ButtonLogin" runat="server" Text="Login" Width="85px" />

           <br /> <br /> &nbsp;&nbsp;&nbsp;
                
        <asp:Button ID="ButtonReturn" runat="server" Text="Return to Class List" Visible="False" 
             CausesValidation="False" />
         <br /> <br /> &nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="ButtonLogOut" runat="server" CausesValidation="False" Text="Logout" Width="267px" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ForeColor="White" />

    </asp:Panel>
</asp:Content>
