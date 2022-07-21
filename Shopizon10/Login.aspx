<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Shopizon10.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Customer Login</h3>
    <div>

        <table class="nav-justified">
            <tr>
                <td class="text-center" style="width: 103px">Username:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="width: 103px">Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="width: 103px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="90px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    
</asp:Content>
