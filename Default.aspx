<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TicketID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="TicketID" HeaderText="TicketID" InsertVisible="False" ReadOnly="True" SortExpression="TicketID" />
                <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" SortExpression="SaleDate" />
                <asp:BoundField DataField="CompleteDate" HeaderText="CompleteDate" SortExpression="CompleteDate" />
                <asp:BoundField DataField="TicketNumber" HeaderText="TicketNumber" SortExpression="TicketNumber" />
                <asp:BoundField DataField="SalesAmount" HeaderText="SalesAmount" SortExpression="SalesAmount" />
                <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                <asp:BoundField DataField="Delivery" HeaderText="Delivery" SortExpression="Delivery" />
                <asp:BoundField DataField="Cash" HeaderText="Cash" SortExpression="Cash" />
                <asp:BoundField DataField="PersonalCK" HeaderText="PersonalCK" SortExpression="PersonalCK" />
                <asp:BoundField DataField="CreditCard" HeaderText="CreditCard" SortExpression="CreditCard" />
                <asp:BoundField DataField="Finance" HeaderText="Finance" SortExpression="Finance" />
                <asp:BoundField DataField="Company" HeaderText="Company" ReadOnly="True" SortExpression="Company" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                <asp:BoundField DataField="Person" HeaderText="Person" ReadOnly="True" SortExpression="Person" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FurnitureConnectionString %>" SelectCommand="sp_GetTicketInfo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>

</asp:Content>
