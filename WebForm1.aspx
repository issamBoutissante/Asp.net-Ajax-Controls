<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Asp.net_Partie_13_AJAX.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                       <asp:Label runat="server" Text="Id" />
                    </td>
                     <td>
                         <asp:TextBox runat="server" ID="Id" />
                    </td>
                </tr>
                <tr>
                    <td>
                       <asp:Label runat="server" Text="Nom" />
                    </td>
                     <td>
                         <asp:TextBox runat="server" ID="Nom" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Prenom" />
                    </td>
                     <td>
                        <asp:TextBox runat="server" ID="Prenom" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label runat="server" Text="Group" />
                    </td>
                     <td>
                         <asp:TextBox runat="server" ID="Group" />
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Button runat="server" ID="Ajouter" OnClick="Ajouter_Click" Text="Ajouter" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                         <asp:Label runat="server" ID="ErrorMessage" ForeColor="Red" />
                    </td>
                </tr>
            </table>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="true">
                    </asp:GridView>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Ajouter" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                In Progress.....
            </ProgressTemplate>
        </asp:UpdateProgress>
        </div>
        
    </form>
</body>
</html>
