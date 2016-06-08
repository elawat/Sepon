<%@ Page Title="" Language="C#" MasterPageFile="~/master/Data.master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Sepon.pages.Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AccessFormContent" runat="server">
     
    <table id="ObjectsForm">
        <tr>
            <td class="dataform" ID="tdheader" style="height: 22px; " colspan="3">Select object or sample to retrieve information and photos</td>
        </tr>
        <tr>
            <td class="dataform" style="width: 120px" rowspan="3">Objects</td>
            <td class="dataformbold" style="height: 22px; width: 201px">Object Type</td>
            <td class="dataform" style="height: 22px; width: 339px">
                <asp:DropDownList ID="DropDownListObjType" runat="server">
                    <asp:ListItem Text="--Select One--" Value="" />  
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="dataformbold" style="width: 201px; height: 32px;">Object ID</td>
            <td class="dataform" style="width: 339px; height: 32px;">
                <asp:DropDownList ID="DropDownListObjID" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="dataformright" colspan="2">
                <asp:Button ID="btnObjectsFormObj" runat="server" Text="Button" Width="98px" />
            </td>
        </tr>
        <tr>
            <td class="dataform" style="width: 120px" rowspan="4">Samples</td>
            <td class="dataformbold" style="width: 201px">Sample Type</td>
            <td class="dataform" style="width: 339px">
                <asp:DropDownList ID="DropDownListSplType" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="dataformbold" style="width: 201px">Analysed</td>
            <td class="dataform" style="width: 339px">
                <asp:CheckBox ID="CheckBoxAnalysed" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="dataformbold" style="width: 201px">Sample ID</td>
            <td class="dataform" style="width: 339px">
                <asp:DropDownList ID="DropDownListSplID" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="dataformright" colspan="2">
                <asp:Button ID="btnObjectsFormSpl" runat="server" Text="Button" Width="98px" />
            </td>
        </tr>
        </table>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" runat="server">
</asp:Content>
