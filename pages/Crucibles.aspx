<%@ Page Title="crucible" Language="C#" MasterPageFile="~/master/MasterAnalyses.master" AutoEventWireup="true" Inherits="pages_Crucibles" Codebehind="Crucibles.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script>
         $(document).ready(function () {
         $("cite").click(function () {
           
             var RefID = FormatRefID($(this).text());

             $('#<%= lblReferenceTitle.ClientID %>').offset({ top: 150 + document.body.scrollTop });

             $.ajax({
                 method: "post",
                 url: "GeologicalSetting.aspx/GetReferenceByID",
                 contentType: "application/json",
                 data: '{ReferenceID: "' + RefID + '" }',
                 dataType: "json",
                 success: function (data)
                 {
                   
                     $('#<%= lblReferenceTitle.ClientID %>').text(data.d.Title);
          
                 },
                 failure: function (error) {
                     alert(error);
                 }
             });
         });
         });
    </script>

    <p> About 100 small fragments of crucibles (c. 52 from PB, c. 47 from TNN) were included in the assemblage sent for analysis.  Nine of them were sampled and analysed with the SEM-EDS, 6 from PB and 3 from TNN. Thin sections for ceramic petrography studies were prepared from 7 sherds.</p>
    <p>All analysed samples were made of non-calcareous highly weathered clays. Its origin in highly weathered deposits is demonstrated by a very low amount of other ingredients than quartz, presence of weathered potassium feldspar and minerals considered, aside from quartz, as the most resistant ones (rutile, zircon) <cite>(Pettijohn, Potter, & Siever, 1973)</cite>. It seems to be also indicated by the composition of the clay matrix originally probably quite rich in high-alumina minerals.</p>
    <p>See <a class="download" target="_blank" href="../download/An investigation of the metallurgical material from Peun Baolo and Thong Na Nguak.pdf">attachment</a> for full record on post-deposition alterations, heat treatment, results of analyses and their interpretation. The below report gives an overview of the bulk composition of crucible fabric.</p>

    <br />

    <iframe src="https://app.powerbi.com/view?r=eyJrIjoiODIxNDBjNjAtZTgwZS00NGE4LWExZjktNDlhNzg0N2Q1MGM4IiwidCI6IjI1ODczYjQ0LWQ2OWMtNGYwMy05NjZhLTlmNTY2MWRmNDE2MCJ9" scrolling="no"; allowFullScreen="true">
    </iframe>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" Runat="Server">
    <asp:Label ID="lblReferenceTitle" runat="server" Text="" CssClass="citation"></asp:Label>
</asp:Content>

