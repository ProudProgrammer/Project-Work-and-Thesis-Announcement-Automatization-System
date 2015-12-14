<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Adatlap_Hallgato.aspx.cs" Inherits="Adatlap_Hallgato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 align="center">A kiválasztott hallgató adatlapja</h2>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SDS_Hallgato" 
        EnableModelValidation="True" style="text-align: center" 
        HorizontalAlign="Center" Width="100%">
        <EditItemTemplate>
            Felhasznalo_Nev:
            <asp:TextBox ID="Felhasznalo_NevTextBox" runat="server" 
                Text='<%# Bind("Felhasznalo_Nev") %>' />
            <br />
            Nev:
            <asp:TextBox ID="NevTextBox" runat="server" Text='<%# Bind("Nev") %>' />
            <br />
            Neptunkod:
            <asp:TextBox ID="NeptunkodTextBox" runat="server" 
                Text='<%# Bind("Neptunkod") %>' />
            <br />
            Szak:
            <asp:TextBox ID="SzakTextBox" runat="server" Text='<%# Bind("Szak") %>' />
            <br />
            Szakirany:
            <asp:TextBox ID="SzakiranyTextBox" runat="server" 
                Text='<%# Bind("Szakirany") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Megjegyzes:
            <asp:TextBox ID="MegjegyzesTextBox" runat="server" 
                Text='<%# Bind("Megjegyzes") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Felhasznalo_Nev:
            <asp:TextBox ID="Felhasznalo_NevTextBox" runat="server" 
                Text='<%# Bind("Felhasznalo_Nev") %>' />
            <br />
            Nev:
            <asp:TextBox ID="NevTextBox" runat="server" Text='<%# Bind("Nev") %>' />
            <br />
            Neptunkod:
            <asp:TextBox ID="NeptunkodTextBox" runat="server" 
                Text='<%# Bind("Neptunkod") %>' />
            <br />
            Szak:
            <asp:TextBox ID="SzakTextBox" runat="server" Text='<%# Bind("Szak") %>' />
            <br />
            Szakirany:
            <asp:TextBox ID="SzakiranyTextBox" runat="server" 
                Text='<%# Bind("Szakirany") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Megjegyzes:
            <asp:TextBox ID="MegjegyzesTextBox" runat="server" 
                Text='<%# Bind("Megjegyzes") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table align="center" style="width:100%;">
                <tr>
                    <td align="right">
                        Felhasználói név:</td>
                    <td align="left">
                        <asp:Label ID="lbl_nick" runat="server" Text='<%# Eval("Felhasznalo_Nev") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Teljes név:</td>
                    <td align="left">
                        <asp:Label ID="lbl_nev" runat="server" Text='<%# Eval("Nev") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Neptunkód:</td>
                    <td align="left">
                        <asp:Label ID="lbl_neptunkod" runat="server" Text='<%# Eval("Neptunkod") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Szak:</td>
                    <td align="left">
                        <asp:Label ID="lbl_szak" runat="server" Text='<%# Eval("Szak") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Szakirány:</td>
                    <td align="left">
                        <asp:Label ID="lbl_szakirany" runat="server" Text='<%# Eval("Szakirany") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Email:</td>
                    <td align="left">
                        <asp:Label ID="lbl_email" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Megjegyzés</td>
                    <td align="left">
                        <asp:Label ID="lbl_megjegyzes" runat="server" Text='<%# Eval("Megjegyzes") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SDS_Hallgato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT [Felhasznalo_Nev], [Nev], [Neptunkod], [Szak], [Szakirany], [Email], [Megjegyzes] FROM [Hallgatok] WHERE ([Felhasznalo_Nev] = @Felhasznalo_Nev)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Felhasznalo_Nev" QueryStringField="Nev" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

