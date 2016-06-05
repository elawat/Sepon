﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master/References.master" AutoEventWireup="true" Inherits="References" Codebehind="References.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script>

function changeText(id,value)
{
if(value =="")
{document.getElementById('SearchCriteriaTextBox').value="Enter Search Criteria";
}

}

</script>
         <br />
    
    <div class="lookup-box">

    &nbsp;

    <asp:TextBox ID="txbFindAuthor" runat="server" Height="25px" Width="250px" value="Enter Search Criteria" ForeColor="GrayText" OnClick="this.value = ''; this.style.color = 'black'" OnBlur="javascript:changeText(this.id,this.value)"></asp:TextBox>
  
    &nbsp;
  
    <asp:Button ID="btnFindAuthor" runat="server" Text="Search" Height="25px" OnClick="btnFindAuthor_Click" Width="100px" />
    
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

