<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" CreateUserText="Regisztráció" 
    CreateUserUrl="~/Registration.aspx" LoginButtonText="Belépés" 
    PasswordLabelText="Jelszó:" RememberMeText="Emlékezzen rám" 
    TitleText="Bejelentkezés" UserNameLabelText="Felhasználónév:">
    </asp:Login>
</asp:Content>

