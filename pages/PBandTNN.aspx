<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterSites.master" AutoEventWireup="true" Inherits="PBandTNN" Codebehind="PBandTNN.aspx.cs" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

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

    <p>Peun Baolo (hereafter PB) and Thong Na Nguak (TNN), are located in the Sepon region of Savannakhet Province, south-eastern Laos <cite>(Chang et al., unpublished)</cite> (Fig. 1). They are both situated within the area of Lane Xang Minerals Limited’s current mining works.</p>
    <figure>
    <img class="img-center" ID="map" src="../images/map.png" alt="Map of Southeast Asia with PB and TNN marked" />
    <figcaption><p class="text-center"><small>Fig. 1. Map of Southeast Asia, showing the sites mentioned in the text; KWPV- Khao Wong Prachan Valley.</small></p></figcaption>
    </figure>    
    <p>The rich history of the Sepon region was initially recognised during the surveys carried out in 2000 and 2006 by the staff of the Department of Museums and Archaeology, Lao PDR. During the surveys many artefacts were collected and several archaeological sites were identified. The first archaeological excavation in the region took place in 2008 at PB and TNN as a joint project of the Lao Department of National Heritage, James Cook University, and LXML <cite>(Chang & Sayavongkhamdy, unpublished)</cite>.</p>
    <p>The works at TNN were suspended after the first season in order to focus on the areas under immediate threat of destruction. In 2009 over 130 individual circular shafts were identified and excavated within the adjacent to TNN modern mining pit Khanong <cite>(Chang, unpublished)</cite>. The excavations at PB have been continued until present <cite>(Chang, unpublished 2)</cite>. </p>
    <figure>
    <img class="img-center" ID="chronology" src="../images/chronology.jpg" alt="Chronology of the upper Mun Valley (Thailand)"/>
    <figcaption><p class="text-center"><small>Fig. 2. Chronology of the upper Mun Valley (Thailand) (after Higham, 137, Tab.2); in colour periods evidenced in Sepon by the radiocarbon dates: red-PB, blue-TNN.</small></p></figcaption>
    </figure> 
    <p>Sepon is the third region recognised in Southeast Asia with the abundant evidences of prehistoric copper mining and production <cite>(Pryce et al., 2011)</cite>. The first two areas, Phu Lon and the Khao Wong Prachan Valley (Fig. 1), were identified and excavated by the Thailand Archaeometallurgy Project in 1980’ <cite>(Pigott, Natapintu, & Theetiparivatra, 1992</cite>; <cite>Pigott, Weiss, & Natapintu, 1997)</cite>. The excavations at situated in northeast Thailand Phu Lon revealed extensive copper mining evidence dated back to the first millennium BCE and a much less clear indicator of local copper extraction <cite>(Pryce et al., 2011)</cite>. In the Khao Wong Prachan Valley in central Thailand two main smelting sites were discovered: Non Pa Wai (c. 500-300 BCE) and Nin Kham Haeng (c. 300 BCE-500CE). At both sites extensive smelting debris up to 4-6 m deep was recognised <cite>(Pryce et al., 2010, p. 239)</cite>. </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="RightSidebar" Runat="Server">
    <asp:Label ID="lblReferenceTitle" runat="server" Text="" CssClass="lblRef"></asp:Label>
</asp:Content>

