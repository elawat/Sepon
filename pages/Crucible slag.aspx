<%@ Page Title="crucible slag" Language="C#" MasterPageFile="~/master/MasterAnalyses.master" AutoEventWireup="true" Inherits="pages_Crucible_slag" Codebehind="Crucible slag.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <script>
         $(document).ready(function () {
             function setHeight() {
                 windowHeight = $(window).innerHeight();
                 $('leftcol').css('min-height', windowHeight);
             };
             setHeight();

             $(window).resize(function () {
                 setHeight();
             });
         });
    </script>
     
    <p>The bulk chemical analysis indicates that the most abundant oxides in all crucible slag samples are SiO2, FeO and Al2O3. Their contents make up nearly 90% or above of the slag composition. The concentrations of SiO2 and FeO are widely varied in particular samples as well as within the same sample what confirms the heterogeneity of the slag demonstrated also by its microstructure. </p>
    <p>See <a class="download" href="../download/An investigation of the metallurgical material from Peun Baolo and Thong Na Nguak.pdf">the attachment</a> for the full details on the results of crucible slag analysis. The below report gives an overview of the bulk composition of crucible slag.</p>

       <iframe src="https://app.powerbi.com/view?r=eyJrIjoiZmVmMWY2YjAtZjBkZS00NzI0LTg2MzktODE0NTA0MGRiYzA1IiwidCI6IjI1ODczYjQ0LWQ2OWMtNGYwMy05NjZhLTlmNTY2MWRmNDE2MCJ9" scrolling="no"; allowFullScreen="true">
    </iframe>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" Runat="Server">
</asp:Content>

