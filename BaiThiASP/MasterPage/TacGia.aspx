<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainPage.Master" AutoEventWireup="true" CodeBehind="TacGia.aspx.cs" Inherits="BaiThiASP.MasterPage.TacGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TGia_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="auto-style2" Width="677px">
    <Columns>
        <asp:BoundField DataField="TGia_ID" HeaderText="TGia_ID" ReadOnly="True" SortExpression="TGia_ID" />
        <asp:BoundField DataField="TenTG" HeaderText="TenTG" SortExpression="TenTG" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Columns>
</asp:GridView>
<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="TGia_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="TGia_ID" HeaderText="TGia_ID" ReadOnly="True" SortExpression="TGia_ID" />
        <asp:BoundField DataField="TenTG" HeaderText="TenTG" SortExpression="TenTG" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyTinTucConnectionString2 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGia_ID] = @TGia_ID" InsertCommand="INSERT INTO [TACGIA] ([TGia_ID], [TenTG], [Email]) VALUES (@TGia_ID, @TenTG, @Email)" SelectCommand="SELECT [TGia_ID], [TenTG], [Email] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TenTG] = @TenTG, [Email] = @Email WHERE [TGia_ID] = @TGia_ID">
    <DeleteParameters>
        <asp:Parameter Name="TGia_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TGia_ID" Type="String" />
        <asp:Parameter Name="TenTG" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenTG" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="TGia_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
