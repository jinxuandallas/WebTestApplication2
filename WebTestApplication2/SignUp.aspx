<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebTestApplication2.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" >
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server"  />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
            <StartNavigationTemplate>
                <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="下一步" />
            </StartNavigationTemplate>
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="上一步" />
                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="下一步" />
            </StepNavigationTemplate>
        </asp:CreateUserWizard>
    
    </div>
    </form>
</body>
</html>
