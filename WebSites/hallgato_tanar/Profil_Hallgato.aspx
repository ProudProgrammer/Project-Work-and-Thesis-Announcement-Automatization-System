<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Profil_Hallgato.aspx.cs" Inherits="Profil_Hallgato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 align="center">Hallgató adatlap beállítás</h2>
    <table style="width: 100%;" cellpadding="10" align="center">
        <tr>
            <td style="width: inherit" align="right">
                Teljes név:</td>
            <td style="width: inherit" align="left">
                <asp:TextBox ID="Teljes_Nev" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Név megadása szükséges" ControlToValidate="Teljes_Nev"
                ValidationGroup="VG_Hallgato_Profil">Név megadása szükséges</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: inherit" align="right">
                Neptunkód:</td>
            <td style="width: inherit" align="left">
                <asp:TextBox ID="Neptunkod" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Neptunkód megadása szükséges" ControlToValidate="Neptunkod"
                ValidationGroup="VG_Hallgato_Profil" Display="Dynamic">Neptunkód megadása szükséges</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="Neptunkód 6 karakter hosszú" ValidationGroup="VG_Hallgato_Profil" 
                ControlToValidate="Neptunkod" onservervalidate="CustomValidator1_ServerValidate" 
                Display="Dynamic">Neptunkód 6 karakter hosszú</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: inherit" align="right">
                Szak:</td>
            <td style="width: inherit" align="left">
                <asp:TextBox ID="Szak" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Szak megadása szükséges" ControlToValidate="Szak"
                ValidationGroup="VG_Hallgato_Profil">Szak megadása szükséges</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Szakirány:</td>
            <td align="left" style="width: inherit">
                <asp:TextBox ID="Szakirany" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Szakirány megadása szükséges" ControlToValidate="Szakirany"
                ValidationGroup="VG_Hallgato_Profil">Szakirány megadása szükséges</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Email:</td>
            <td align="left" style="width: inherit">
                <asp:TextBox ID="Email" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Email megadása szükséges" ControlToValidate="Email"
                ValidationGroup="VG_Hallgato_Profil">Email megadása szükséges</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: inherit">
                Megjegyzés:</td>
            <td align="left" style="width: inherit">
                <asp:TextBox ID="Megjegyzes" runat="server" Width="200px"></asp:TextBox>
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
                    Text="Mentés" ValidationGroup="VG_Hallgato_Profil" onclick="Button_Mentes_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

