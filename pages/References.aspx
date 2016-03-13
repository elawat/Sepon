<%@ Page Title="" Language="C#" MasterPageFile="~/master/References.master" AutoEventWireup="true" Inherits="References" Codebehind="References.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

         <br />
    
    <div class="lookup-box">
    
    <asp:Label ID="lblFindAuthor" runat="server" Text="Find author"></asp:Label>

    &nbsp;

    <asp:TextBox ID="txbFindAuthor" runat="server" Height="25px" Width="150px"></asp:TextBox>
  
    &nbsp;
  
    <asp:Button ID="btnFindAuthor" runat="server" Text="Find" Height="25px" OnClick="btnFindAuthor_Click" Width="100px" />
    
    </div>

    <br />

    
    
    <asp:GridView ID="GridViewReferences" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSepon">
        <AlternatingRowStyle BackColor="#EAE9CA" /> 
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Reference" SortExpression="Title" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSepon" runat="server" ConnectionString="<%$ ConnectionStrings:SeponConnectionString %>" SelectCommand="SELECT * FROM [References]"></asp:SqlDataSource>

    <br />
<asp:GridView ID="GridViewSelectedAuthours" runat="server">
    <AlternatingRowStyle BackColor="#EAE9CA" /> 
</asp:GridView>
<br />


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" Runat="Server">
</asp:Content>

