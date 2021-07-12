<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="MainMenue.aspx.cs" MasterPageFile="~/Site.Master" Inherits="MyGuide.Guide.MainMenue" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <asp:BulletedList ID="BulletedList1" runat="server" OnClick="BulletedList1_Click">
        <asp:ListItem Text="IT"/>
        <asp:ListItem Text="Programming"/>
    </asp:BulletedList>
        </div>

</asp:Content>