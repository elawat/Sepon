<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterAnalyses.master" AutoEventWireup="true" Inherits="master_Analyses" Codebehind="Analyses.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<script>

           $(document).ready($(function () {
               ActivePageMainRun();
               ActivePageSide();
           }));

       </script>

<p>The initial selection of samples was done during the fieldworks. The collection submitted for analyses contains the most common types of metallurgical waste found at PB and TNN.</p>
<p>All the artefacts have been macroscopically examined in order to define their potential value for further studies of the metallurgical process and the relation between PN an TNN, and for contextualisation of the results. The artefacts were sampled gradually and their selection was influenced by the results of the foregoing analyses. Ultimately, 35 artefacts were sampled. 30 of them were prepared as polished blocks and 11 as thin sections.</p>

 <figure id="grid">
<asp:GridView ID="GridViewSamples" runat="server" AutoGenerateColumns="False" DataKeyNames="Sample_ID" DataSourceID="SqlDataSourceSamples" Width="550px">
    <AlternatingRowStyle BackColor="#e6e6e6" />
    <Columns>
        <asp:BoundField DataField="Sample_ID" HeaderText="Sample_ID" ReadOnly="True" SortExpression="Sample_ID" />
        <asp:BoundField DataField="Object_ID" HeaderText="Object_ID" SortExpression="Object_ID" />
        <asp:BoundField DataField="Sample_Type" HeaderText="Sample_Type" SortExpression="Sample_Type" />
        <asp:BoundField DataField="Sample_No" HeaderText="Sample_No" SortExpression="Sample_No" Visible="false"  />
        <asp:BoundField DataField="Object_Type" HeaderText="Object_Type" SortExpression="Object_Type" />
        <asp:BoundField DataField="Analysed" HeaderText="Analysed" SortExpression="Analysed" />
    </Columns>
</asp:GridView>
   
     <asp:SqlDataSource ID="SqlDataSourceSamples" runat="server" ConnectionString="<%$ ConnectionStrings:SeponConnectionString %>" SelectCommand="SELECT * FROM [Samples]"></asp:SqlDataSource>
   
     <br />

<asp:Button ID="btnExportExcel" runat="server" Text="Export to Excel" OnClick="btnExportExcel_Click" />

   <p></p> <br />
   <p></p>

</figure>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" Runat="Server">
    
</asp:Content>

