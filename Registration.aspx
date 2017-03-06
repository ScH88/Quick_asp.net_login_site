<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="style1">
        <h1 style="text-decoration: underline; text-align:center">
            Registration Form</h1>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td></td><td style="padding-left:5px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsNam" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td><td></td>
            </tr>
            <tr>
                <td class="auto-style9">Username</td>
                <td class="auto-style10" style="padding-left:5px;">
                    <asp:TextBox ID="TextBoxUsNam" runat="server" style="margin-left: 0px" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td></td><td style="padding-left:5px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td><td></td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style7" style="padding-left:5px;">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <br />
                </td>
            </tr>
            <tr>
                <td></td><td style="padding-left:5px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td><td></td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style7" style="padding-left:5px;">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td></td><td style="padding-left:5px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxConfPass" ErrorMessage="Password confirmation is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxConfPass" ErrorMessage="Both passwords must match" ForeColor="#FF3300"></asp:CompareValidator>
                </td><td></td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm Password</td>
                <td class="auto-style6" style="padding-left:5px;">
                    <asp:TextBox ID="TextBoxConfPass" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <br />
                </td>
            </tr>
            <tr>
                <td></td><td style="padding-left:5px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Select a country name" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td><td></td>
            </tr>
            <tr>
                <td class="auto-style5">Country</td>
                <td class="auto-style6" style="padding-left:5px;">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="250px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td></td><td></td><td></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value="Reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td><td>
                    <br />
                    <br />
                </td><td></td>
            </tr>
        </table>
    </div>
</asp:Content>

    