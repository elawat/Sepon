<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterSites.master" AutoEventWireup="true" Inherits="pages_GeologicalSetting" Codebehind="GeologicalSetting.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <script>
         $(document).ready(function () {
         $("cite").click(function () {
           
             var RefID = FormatRefID($(this).text());

             var pos = $(this).offset();           
             $('#<%= lblReferenceTitle.ClientID %>').offset({ top: pos.top});

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



    <p>The Sepon region is situated along the Truong Son Fold Belt, a NW-trending track of folded Palaeozoic sedimentary rocks with major granite intrusion which occupies north-centre of Laos and extends eastward into central Vietnam <cite>(Workman, 1997, p. 496)</cite>. The style of mineralisation in the Sepon district and its mining potential was recognised in 1990 when copper and gold lodes covering a variety of primary and secondary types were first documented <cite>(Manini & Albert, online)</cite>. <p>
	<p>Three main hypogene mineralisation styles were recognised comprising distal sedimentary rock hosted gold, proximal skarn (Cu, Au) and central porphyry (Cu-Mo). There are epigenetic in their origin involving magmatic and minor metamorphic fluids and occur along the faults and/or veins cutting all of the Palaeozoic sedimentary rocks <cite>(Cromie, 2010</cite>; <cite>Workman, 1997)</cite>. Common sulphide minerals in the Sepon mineral district are pyrite, arsenic-rich pyrite, chalcopyrite, minor sphalerite, galena, bornite and stibnite <cite>(Workman, 1997)</cite>. </p>
	<p>Gold mineralisation occurring as fine dissemination is predominantly hosted by highly altered calcareous shale <cite>(Manini & Albert, online)</cite>. </p>
	<p>The supergene copper enrichment derived from the weathering of a replacement style massive sulphide deposits developed in carbonate rocks was discovered at three deposits, namely Khonong, Thengkham North and Thengkham South <cite>(Workman, 1997)</cite>. Among them the Khonong lode is the biggest and richest one. Copper minerals present are mainly chalcocite, with minor covellite, malachite, azurite and same native copper <cite>(Baxter, Dreisinger, & Pratt, online)</cite>. </p>
	<p>Above the enrichment zone there is a well-developed lateritic profile which forms a leached cup to the supergene copper mineralisation and comprises gossan, ironstone boulders and red ferruginous clay soils. It is generally assumed that copper is leached away from the laterite <cite>(Baxter, Dreisinger, & Pratt, online)</cite>. </p>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" Runat="Server">
    <asp:Label ID="lblReferenceTitle" runat="server" Text="" CssClass="f"></asp:Label>
</asp:Content>

