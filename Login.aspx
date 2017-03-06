<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: xx-large; text-align: center">
    
        Login Page<br />
        </div>
    <table class="auto-style1">
        <tr><td></td><td style="padding-left:5px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsNam" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td><td></td></tr>
        <tr>
            <td class="auto-style2">Username</td>
            <td class="auto-style3" style="padding-left:5px;">
                <asp:TextBox ID="TextBoxUsNam" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr><td></td><td style="padding-left:5px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassW" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td><td></td></tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style3" style="padding-left:5px;">
                <asp:TextBox ID="TextBoxPassW" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr><td></td><td>
            <br />
        </td><td></td></tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button_Login" runat="server" style="text-align: center" Text="Login" Width="180px" OnClick="Button_Login_Click" />
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" Width="180px">New User? Click Here</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td></td><td>
            <br />
         </td><td></td></tr>
    </table>
</asp:Content>