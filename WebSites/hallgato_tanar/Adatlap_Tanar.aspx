<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Adatlap_Tanar.aspx.cs" Inherits="Adatlap_Tanar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 align="center">A tárgyat jegyző tanár adatlapja</h2>
    <table style="width: 100%;" cellpadding="10" align="center">
        <tr>
            <td align="right" style="width: inherit">
                Név:</td>
            <td align="left" style="width: inherit">
                <asp:Label ID="Label_Nev" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Rövid leírás:</td>
            <td align="left" style="width: inherit">
                <asp:Label ID="Label_Rovid_leiras" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                E-mail:</td>
            <td align="left" style="width: inherit">
                <asp:Label ID="Label_Email" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Konzultációs idő:</td>
            <td align="left" style="width: inherit">
                <asp:Label ID="Label_Konzultacios_ido" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Telefon:</td>
            <td align="left" style="width: inherit">
                <asp:Label ID="Label_Telefon" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Szoba:</td>
            <td align="left" style="width: inherit">
                <asp:Label ID="Label_Szoba" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Információs oldal:</td>
            <td align="left" style="width: inherit">
                <asp:Label ID="Label_Informacios_oldal" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

