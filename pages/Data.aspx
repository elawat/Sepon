<%@ Page Title="" Language="C#" MasterPageFile="~/master/Data.master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Sepon.pages.Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AccessFormContent" runat="server">
    
    <asp:Button ID="btnShowFilter" runat="server" Text="Show Filter" OnClick="btnShowFilter_Click" />
    <table id="ObjectsForm" runat="server">
        <tr>
            <td class="dataform" ID="tdheader" style="height: 22px; " colspan="3">Select object or sample to retrieve information and photos</td>
        </tr>
        <tr>
            <td class="dataform" style="width: 120px" rowspan="3">Objects</td>
            <td class="dataformbold" style="height: 22px; width: 201px">Object Type</td>
            <td class="dataform" style="height: 22px; width: 339px">
                <asp:DropDownList ID="DropDownListObjType" runat="server" AutoPostBack="True"  AppendDataBoundItems="true" Width="250px" OnSelectedIndexChanged="DropDownListObjType_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="dataformbold" style="width: 201px; height: 32px;">Object ID</td>
            <td class="dataform" style="width: 339px; height: 32px;">
                <asp:DropDownList ID="DropDownListObjID" runat="server" AutoPostBack="True" AppendDataBoundItems="true" Width="250px" OnSelectedIndexChanged="DropDownListObjID_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="dataformright" colspan="2">
                <asp:Button ID="btnObjectsFormObj" runat="server" Text="Show information about selected objects" Width="350px" OnClick="btnObjectsFormObj_Click" />
            </td>
        </tr>
        <tr>
            <td class="dataform" style="width: 120px" rowspan="4">Samples</td>
            <td class="dataformbold" style="width: 201px">Sample Type</td>
            <td class="dataform" style="width: 339px">
                <asp:DropDownList ID="DropDownListSplType" runat="server" AutoPostBack="True"  AppendDataBoundItems="true" Width="250px" OnSelectedIndexChanged="DropDownListSplType_SelectedIndexChanged">
                </asp:DropDownList>
                <!-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SeponConnectionString %>" SelectCommand="SELECT DISTINCT [Sample_Type] FROM [Samples_New]"></asp:SqlDataSource>-->
            </td>
        </tr>
        <tr>
            <td class="dataformbold" style="width: 201px">Analysed</td>
            <td class="dataform" style="width: 339px">
                &nbsp;&nbsp;
                <asp:CheckBox ID="CheckBoxAnalysed" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBoxAnalysed_CheckedChanged" />
             </td>
        </tr>
        <tr>
            <td class="dataformbold" style="width: 201px">Sample ID</td>
            <td class="dataform" style="width: 339px">
                <asp:DropDownList ID="DropDownListSplID" runat="server" AppendDataBoundItems="true" Width="250px"> 
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="dataformright" colspan="2">
                <asp:Button ID="btnObjectsFormSpl" runat="server" Text="Show information about selected samples" Width="350px" />
            </td>
        </tr>
        </table>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" runat="server">
</asp:Content>
