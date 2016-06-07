<%@ Page Title="" Language="C#" MasterPageFile="~/master/Data.master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Sepon.pages.Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AccessFormContent" runat="server">
     
    <table id="ObjectsForm">
        <tr>
            <td class="tdhead" style="height: 22px; " colspan="3">Select object or sample to retrieve information and photos</td>
        </tr>
        <tr>
            <td class="td1" style="width: 120px" rowspan="3">Objects</td>
            <td class="td2" style="height: 22px; width: 201px">Object Type</td>
            <td class="td3" style="height: 22px; width: 339px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="--Select One--" Value="" />  
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="td2" style="width: 201px; height: 32px;">Object ID</td>
            <td class="td3" style="width: 339px; height: 32px;" class="modal-sm">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="td4" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Button" Width="98px" />
            </td>
        </tr>
        <tr>
            <td class="td1" style="width: 120px" rowspan="4">Samples</td>
            <td class="td2" style="width: 201px">Sample Type</td>
            <td class="td3" style="width: 339px" class="modal-sm">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="td2" style="width: 201px">Analysed</td>
            <td class="td3" style="width: 339px" class="modal-sm">
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="td2" style="width: 201px">Sample ID</td>
            <td class="td3" style="width: 339px" class="modal-sm">
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="td4" colspan="2">
                <asp:Button ID="Button2" runat="server" Text="Button" Width="98px" />
            </td>
        </tr>
        </table>
     
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="RightSidebar" runat="server">
</asp:Content>
