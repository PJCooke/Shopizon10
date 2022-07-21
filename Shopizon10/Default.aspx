<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shopizon10._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>

        <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" Width="110px" />

    </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProdName" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="503px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="556px" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="catid" HeaderText="catid" SortExpression="catid" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" ReadOnly="True" SortExpression="ProdName" />
                <asp:BoundField DataField="ProdDescription" HeaderText="ProdDescription" SortExpression="ProdDescription" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:CommandField ButtonType="Button" InsertText="Add to Cart" InsertVisible="False" ShowCancelButton="False" ShowInsertButton="True" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopizonConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProdName] = @ProdName" InsertCommand="INSERT INTO [Products] ([catid], [ProdName], [ProdDescription], [Price]) VALUES (@catid, @ProdName, @ProdDescription, @Price)" SelectCommand="SELECT [catid], [ProdName], [ProdDescription], [Price] FROM [Products]" UpdateCommand="UPDATE [Products] SET [catid] = @catid, [ProdDescription] = @ProdDescription, [Price] = @Price WHERE [ProdName] = @ProdName">
            <DeleteParameters>
                <asp:Parameter Name="ProdName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="catid" Type="String" />
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="catid" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="ProdName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>
