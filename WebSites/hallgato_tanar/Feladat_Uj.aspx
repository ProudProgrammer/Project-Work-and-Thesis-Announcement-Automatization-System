<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Feladat_Uj.aspx.cs" Inherits="Feladat_Uj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 align="center">Új feladat létrehozása</h2>
    <table style="width: 100%;">
        <tr>
            <td align="right">
                Feladat címe:</td>
            <td>
                <asp:TextBox ID="FeladatNev" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FeladatNev" ErrorMessage="Név megadása szükséges"
                    ToolTip="Név megadása szükséges" ValidationGroup="FeladatValidGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                Feladat féléve:</td>
            <td>
                <asp:DropDownList ID="FelevValaszto" runat="server" Width="300px">
                    <asp:ListItem Value="aktualis"></asp:ListItem>
                    <asp:ListItem Value="kovetkezo"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                Feladat rövid leírása:</td>
            <td>
                <asp:TextBox ID="FeladatRovidLeiras" runat="server" Height="100px" TextMode="MultiLine" 
                    Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="FeladatRovidLeiras" ErrorMessage="Rövid leírás megadása szükséges"
                    ToolTip="Rövid leírás megadása szükséges" ValidationGroup="FeladatValidGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                Feladat hosszú leírása:</td>
            <td>
                <asp:TextBox ID="FeladatHosszuLeiras" runat="server" Height="300px" TextMode="MultiLine" 
                    Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="FeladatHosszuLeiras" ErrorMessage="Hosszú leírás megadása szükséges"
                    ToolTip="Hosszú leírás megadása szükséges" ValidationGroup="FeladatValidGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="LetrehozButton" runat="server" Text="Létrehoz"
                ValidationGroup="FeladatValidGroup" onclick="LetrehozButton_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="FeladatValidGroup" ShowSummary="False" ShowMessageBox="True" />
            </td>
        </tr>
    </table>
</asp:Content>

