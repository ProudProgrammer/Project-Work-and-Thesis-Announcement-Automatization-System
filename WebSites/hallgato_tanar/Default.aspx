<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
        <RoleGroups>
            <asp:RoleGroup Roles="tanar">
                <ContentTemplate>
                    Kedves tanár úr, használja a menüt.
                </ContentTemplate>
           </asp:RoleGroup>
        </RoleGroups>
        <AnonymousTemplate>
            Kedves látogató, ha használni akarod a rendszert akkor jelentkezz be.
        </AnonymousTemplate>
        <LoggedInTemplate>
            Kedves hallgató, használja a menüt.
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>

