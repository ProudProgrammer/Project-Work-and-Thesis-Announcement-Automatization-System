<%@ Page Title="" Language="C#" MasterPageFile="~/HallgatoTanar.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        AnswerLabelText="Kérdésre a válasz:" CancelButtonText="Mégsem" 
        CompleteSuccessText="Felhasználó létrehozva." 
        ConfirmPasswordLabelText="Jelszó mégegyszer:" ContinueButtonText="Következő" 
        CreateUserButtonText="Létrehozás" 
        DuplicateEmailErrorMessage="Adj meg egy másik e-mail címet, ez már létezik." 
        DuplicateUserNameErrorMessage="Adj meg egy másik nevet, ez már létezik." 
        FinishCompleteButtonText="Kész" FinishPreviousButtonText="Előző" 
        PasswordLabelText="Jelszó:" QuestionLabelText="Biztonsági kérdés:" 
        StartNextButtonText="Következő" StepNextButtonText="Következő" 
        StepPreviousButtonText="Előző" 
        UnknownErrorMessage="A felhasználó nem lett létrehozva. Próbáld újra." 
        UserNameLabelText="Felhasználónév:" 
        oncreateduser="CreateUserWizard1_CreatedUser">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold">
                                Felhasználó létrehozása</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Felhasználónév:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="Felhasználónév megadása szükséges." 
                                    ToolTip="Felhasználónév megadása szükséges." ValidationGroup="CreateUserWizard1">Felhasználónév megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Jelszó:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Jelszó megadása szükséges." 
                                    ToolTip="Jelszó megadása szükséges." ValidationGroup="CreateUserWizard1">Jelszó megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Jelszó mégegyszer:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Jelszó megadása szükséges." 
                                    ToolTip="Jelszó megadása szükséges." ValidationGroup="CreateUserWizard1">Jelszó megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="NevLabel" runat="server" AssociatedControlID="UserName">Teljes név:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TeljesNev" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TeljesNev" ErrorMessage="Név megadása szükséges." 
                                    ToolTip="Felhasználónév megadása szükséges." ValidationGroup="CreateUserWizard1">Név megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="NeptunkodLabel" runat="server" AssociatedControlID="Neptunkod">Neptunkód:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Neptunkod" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="Neptunkod" ErrorMessage="Neptunkód megadása szükséges." 
                                    ToolTip="Neptunkód megadása szükséges." 
                                    ValidationGroup="CreateUserWizard1" Display="Dynamic">Neptunkód megadása szükséges</asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                    ErrorMessage="Neptunkod 6 karakteres" ControlToValidate="Neptunkod" ValidationGroup="CreateUserWizard1" 
                                    Display="Dynamic" onservervalidate="CustomValidator1_ServerValidate">Neptunkod 6 karakteres</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="SzakLabel" runat="server" AssociatedControlID="Szak">Szak:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Szak" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="Szak" ErrorMessage="Szak megadása szükséges." 
                                    ToolTip="Szak megadása szükséges." ValidationGroup="CreateUserWizard1">Szak megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="SzakiranyLabel" runat="server" AssociatedControlID="Szakirany">Szakirány:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Szakirany" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="Szakirany" ErrorMessage="Szakirány megadása szükséges." 
                                    ToolTip="Szakirány megadása szükséges." ValidationGroup="CreateUserWizard1">Szakirány megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail megadása szükséges." 
                                    ToolTip="E-mail megadása szükséges." ValidationGroup="CreateUserWizard1">E-mail megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="MegjegyzesLabel" runat="server" AssociatedControlID="Megjegyzes">Megjegyzés:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Megjegyzes" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Biztonsági kérdés:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Biztonsági kérdés megadása szükséges." 
                                    ToolTip="Biztonsági kérdés megadása szükséges." ValidationGroup="CreateUserWizard1">Biztonsági kérdés megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Kérdésre a válasz:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Biztonsági válasz megadása szükséges." 
                                    ToolTip="Biztonsági válasz megadása szükséges." ValidationGroup="CreateUserWizard1">Biztonsági válasz megadása szükséges</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="A két jelszónak meg kell egyeznie." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

