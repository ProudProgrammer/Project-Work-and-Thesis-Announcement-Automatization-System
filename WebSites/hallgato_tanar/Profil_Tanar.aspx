<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Profil_Tanar.aspx.cs" Inherits="Profil_Tanar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 align="center">Tanár adatlap beállítás</h2>
    <table style="width: 100%;" cellpadding="10" align="center">
        <tr>
            <td style="width: inherit" align="right">
                Név:</td>
            <td style="width: inherit" align="left">
                <asp:TextBox ID="TextBox_Nev" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Név megadása szükséges" ControlToValidate="TextBox_Nev"
                ValidationGroup="VG_Nev">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: inherit" align="right">
                Rövid leírás:</td>
            <td style="width: inherit" align="left">
                <asp:TextBox ID="TextBox_Rovid_leiras" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: inherit" align="right">
                E-mail:</td>
            <td style="width: inherit" align="left">
                <asp:TextBox ID="TextBox_Email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Konzultációs idő:</td>
            <td align="left" style="width: inherit">
                <asp:TextBox ID="TextBox_Konzultacios_ido" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Telefon:</td>
            <td align="left" style="width: inherit">
                <asp:TextBox ID="TextBox_Telefon" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Szoba:</td>
            <td align="left" style="width: inherit">
                <asp:TextBox ID="TextBox_Szoba" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Információs oldal:</td>
            <td align="left" style="width: inherit">
                <asp:TextBox ID="TextBox_Informacios_oldal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="text-align: center;">
                <asp:Label ID="Label1" runat="server" 
                    Text="Miről szeretne email értesítést kapni?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="text-align: center;">
                <asp:DropDownList ID="Ertesites" runat="server" Height="20px" 
                    style="margin-left: 0px" Width="350px">
                    <asp:ListItem Value="semmi">Semmiről</asp:ListItem>
                    <asp:ListItem Value="minden">Mindenről</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="text-align: center;">
                <asp:Button ID="Button_Mentes" runat="server" style="text-align: center" 
                    Text="Mentés" ValidationGroup="VG_Nev" onclick="Button_Mentes_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

