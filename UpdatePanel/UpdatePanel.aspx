<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="UpdatePanel.UpdatePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UpdatePanel</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button Text="Kliknij" ID="btnTime" runat="server" Width="200" OnClick ="btnTime_Click" />
                <asp:LinkButton  ID="btnLinkButton" Text="Kliknij" Width="200" OnClick="btnLinkButton_Click" runat="server" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnTime" EventName="Click"  />
                <asp:AsyncPostBackTrigger ControlID="btnLinkButton" EventName="Click"  />
            </Triggers>

        </asp:UpdatePanel>
        <br />
        <br />
        <asp:TextBox runat="server"  Width="200" Text="Cała strona się nie przeładowała"/>

    </form>
</body>
</html>
