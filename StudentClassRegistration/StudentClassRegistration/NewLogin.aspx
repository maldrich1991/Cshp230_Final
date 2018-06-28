<%@ Page Title="" Language="C#" MasterPageFile="~/StudentRegistration.Master" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="StudentClassRegistration.WebForm3" %>



<script runat="server">

</script>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>New Login Request</p>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Please enter registration information for a new or reactivated account. You will receive further 
                instructions and your credentials, 
                including a password, to the email address you provide within 5 business days.
    </p>
    <div>
        <asp:Table runat="server" CellPadding="5" CellSpacing="5">
            <asp:TableRow>
                <asp:TableCell>
                   Full Name:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="EnterName" Text="">
                   
                    </asp:TextBox>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   Email Address:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="EnterEmail" Text="">
                    </asp:TextBox>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   Username:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="EnterUser" Text="">
                    </asp:TextBox>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   New or Reactivate:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList runat="server" ID="EnterType" Font-Bold="false">
                        <asp:ListItem Text="New Account" Value="New"></asp:ListItem>
                        <asp:ListItem Text="Reactivate Account" Value="React"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   Reason for Access:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="EnterReas" Text="">
                    </asp:TextBox>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow Height="10px">
                <asp:TableCell>
                   Date Needed By:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Calendar runat="server" ID="EnterDate" SelectionMode="DayWeekMonth">
                    </asp:Calendar>

                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />

        <%--            See LoginRequest.aspx.cs file for Button1_Click method--%>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"
            BackColor="#000066" Font-Bold="True" ForeColor="White" Width="187px" />
    </div>
</asp:Content>