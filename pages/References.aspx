<%@ Page Title="" Language="C#" MasterPageFile="~/master/References.master" AutoEventWireup="true" CodeFile="References.aspx.cs" Inherits="pages_References" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <asp:GridView ID="GridViewReferences" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSepon">
        <AlternatingRowStyle BackColor="#EAE9CA" /> 
        <Columns>
            <asp:BoundField DataField="Reference" HeaderText="Reference" SortExpression="Reference" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSepon" runat="server" ConnectionString="<%$ ConnectionStrings:SeponConnectionString %>" SelectCommand="SELECT * FROM [References]"></asp:SqlDataSource>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" Runat="Server">
</asp:Content>

