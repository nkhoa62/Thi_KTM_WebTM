<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainPage.Master" AutoEventWireup="true" CodeBehind="ChuDe.aspx.cs" Inherits="BaiThiASP.MasterPage.ChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ChuDe" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="509px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="ChuDe" HeaderText="ChuDe" ReadOnly="True" SortExpression="ChuDe" />
        <asp:BoundField DataField="TenCD" HeaderText="TenCD" SortExpression="TenCD" />
    </Columns>
</asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ChuDe" DataSourceID="SqlDataSource2" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="ChuDe" HeaderText="ChuDe" ReadOnly="True" SortExpression="ChuDe" />
            <asp:BoundField DataField="TenCD" HeaderText="TenCD" SortExpression="TenCD" />
        </Fields>
    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyTinTucConnectionString1 %>" SelectCommand="SELECT [ChuDe], [TenCD] FROM [CHUDE]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyTinTucConnectionString1 %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [ChuDe] = @ChuDe" InsertCommand="INSERT INTO [CHUDE] ([ChuDe], [TenCD]) VALUES (@ChuDe, @TenCD)" ProviderName="<%$ ConnectionStrings:QuanLyTinTucConnectionString1.ProviderName %>" SelectCommand="SELECT [ChuDe], [TenCD] FROM [CHUDE]" UpdateCommand="UPDATE [CHUDE] SET [TenCD] = @TenCD WHERE [ChuDe] = @ChuDe">
    <DeleteParameters>
        <asp:Parameter Name="ChuDe" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ChuDe" Type="String" />
        <asp:Parameter Name="TenCD" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenCD" Type="String" />
        <asp:Parameter Name="ChuDe" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
