<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="style1">
    <div>
    
        <h1>
            <asp:Label ID="LabelWelcome" runat="server" style="font-size: xx-large" Text="Welcome..."></asp:Label>
        </h1>
        <p>
            <asp:Button ID="ButtonLogOut" runat="server" OnClick="ButtonLogin_Click" Text="Log Out" />
        </p>
    
    </div>
</div>
</asp:Content>
