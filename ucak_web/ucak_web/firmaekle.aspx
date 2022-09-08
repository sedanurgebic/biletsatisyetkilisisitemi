<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firmaekle.aspx.cs" Inherits="ucak_web.firmaekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table border="1" runat="server">
           <tr>
                <td>Firma Adı</td>
                <td><asp:TextBox ID="firmaa" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="btnkkaydet" OnClick="btnkkaydet_Click" runat="server" Text="EKLE"/>
                </td>
            </tr>
            </table>
            <a href="panel.aspx">Geri</a>
        </div>
    </form>
</body>
</html>
