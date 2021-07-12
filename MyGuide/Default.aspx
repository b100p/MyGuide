<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyGuide._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>My Guide</h1>
        <p class="lead">The whole purpose of this application is to be a guide for future reference weather it’s IT or programming related. The project is a work on progress!</p>
        <p><a href="Guide/MainMenue.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>IT</h2>
            <p>
               All the IT related knowledge researched from router configuration or windows server configuration. 
            </p>
            <p>
                <a class="btn btn-default" href="guide/IT/">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Programming</h2>
            <p class="MsoNormal">
                Interesting code that is worth saving for later use and reference for future projects.
            </p>
            <p>
                <a class="btn btn-default" href="guide/programming">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
