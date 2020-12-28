<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainPage.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="BaiThiASP.MasterPage.TinTuc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Tin_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="557px">
    <Columns>
        <asp:BoundField DataField="Tin_ID" HeaderText="Tin_ID" ReadOnly="True" SortExpression="Tin_ID" />
        <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
        <asp:BoundField DataField="NgayGui" HeaderText="NgayGui" SortExpression="NgayGui" />
        <asp:BoundField DataField="TGia_ID" HeaderText="TGia_ID" SortExpression="TGia_ID" />
    </Columns>
</asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Tin_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="Tin_ID" HeaderText="Tin_ID" ReadOnly="True" SortExpression="Tin_ID" />
            <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
            <asp:BoundField DataField="NgayGui" HeaderText="NgayGui" SortExpression="NgayGui" />
            <asp:BoundField DataField="TGia_ID" HeaderText="TGia_ID" SortExpression="TGia_ID" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyTinTucConnectionString1 %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [Tin_ID] = @Tin_ID" InsertCommand="INSERT INTO [TINTUC] ([Tin_ID], [NoiDung], [NgayGui], [TGia_ID]) VALUES (@Tin_ID, @NoiDung, @NgayGui, @TGia_ID)" SelectCommand="SELECT [Tin_ID], [NoiDung], [NgayGui], [TGia_ID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NoiDung] = @NoiDung, [NgayGui] = @NgayGui, [TGia_ID] = @TGia_ID WHERE [Tin_ID] = @Tin_ID">
    <DeleteParameters>
        <asp:Parameter Name="Tin_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Tin_ID" Type="String" />
        <asp:Parameter Name="NoiDung" Type="String" />
        <asp:Parameter Name="NgayGui" Type="DateTime" />
        <asp:Parameter Name="TGia_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NoiDung" Type="String" />
        <asp:Parameter Name="NgayGui" Type="DateTime" />
        <asp:Parameter Name="TGia_ID" Type="String" />
        <asp:Parameter Name="Tin_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
