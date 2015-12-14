<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Feladatok_Lista.aspx.cs" Inherits="Hallgato_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SDS_Feladatok" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [Feladatok]" >
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" ItemPlaceholderID="itemsPH" runat="server" 
        DataSourceID="SDS_Feladatok" EnableModelValidation="True">
        <LayoutTemplate>
            <h2 align="center">Feladatok listája</h2>
            <asp:PlaceHolder ID="itemsPH" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        Feladat neve</td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nev") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        Feladat rövid leírása</td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        <asp:TextBox ID="TextBox1" runat="server" Height="100px" 
                            Text='<%# Eval("Leiras_Rovid") %>' TextMode="MultiLine" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        Feladat státusza</td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Statusz") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        Feladat tulajdonosa</td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("Tulajdonos", "{0}") == "admin" ? "~/Adatlap_Tanar.aspx" : Eval("Tulajdonos", "~/Adatlap_Hallgato.aspx?Nev={0}") %>'
                        runat="server" Text='<%# Eval("Tulajdonos") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" align="center" width="100%">
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# Eval("ID", "~/Feladatok_Bovebben.aspx?ID={0}") %>' 
                        runat="server">Feladat bővebben</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <ItemSeparatorTemplate>
            <hr style="width: 500px" /><br />
        </ItemSeparatorTemplate>
    </asp:ListView>
    <br />
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" 
        PageSize="3">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                ShowNextPageButton="False" ShowPreviousPageButton="False" />
            <asp:NumericPagerField />
            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                ShowNextPageButton="False" ShowPreviousPageButton="False" />
        </Fields>
    </asp:DataPager>
</asp:Content>

