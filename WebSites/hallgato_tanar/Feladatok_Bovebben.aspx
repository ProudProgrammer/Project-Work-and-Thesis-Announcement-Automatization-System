<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Feladatok_Bovebben.aspx.cs" Inherits="Feladatok_Hallgato_Bovebben" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 align="center">Kiválasztott feladat adatlapja</h2>
    <table style="width: 100%;">
        <tr>
            <td align="center">
                Feladat neve</td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBox_Nev" runat="server" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Feladat rövid leírása</td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBox_Rovid" runat="server" Height="50px" 
                    TextMode="MultiLine" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Feladat hosszú leírása</td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBox_Hosszu" runat="server" Height="200px" 
                    TextMode="MultiLine" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Feladat féléve</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label_Felev" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                Feladat státusza</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label_Statusz" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                Feladat tulajdonosa</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label_Tulajdonos" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                Feladatra jelentkezett</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label_Jelentkezett" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button_Modosit" runat="server" Text="Módosítás" 
                    onclick="Button_Modosit_Click" />
                <asp:Button ID="Button_Torles" runat="server" Text="Törlés" 
                    onclick="Button_Torles_Click" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button_Jelentkezes" runat="server" Text="Jelentkezés" 
                    onclick="Button_Jelentkezes_Click" />
                <asp:Button ID="Button_Leiratkozas" runat="server" Text="Leiratkozás" 
                    onclick="Button_Leiratkozas_Click" />
                <asp:Button ID="Button_Veglegesit" runat="server" Text="Véglegesítés" 
                    onclick="Button_Veglegesit_Click" />
                <asp:Button ID="Button_Duplikal" runat="server" Text="Duplikálás" 
                    onclick="Button_Duplikal_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

