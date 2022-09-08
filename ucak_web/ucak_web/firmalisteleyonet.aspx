<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firmalisteleyonet.aspx.cs" Inherits="ucak_web.firmalisteleyonet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <td>Firma Adı</td>
                        <td>Düzenle</td>
                        <td>Sil</td>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptliste" runat="server"><ItemTemplate> <tr>
                       <td><%# Eval("firma_adi") %></td>
                       <td><a href='<%# Eval("ID","firmaguncelle.aspx?ID={0}") %>'>Düzenle</a></td>
                       <td><a href='<%# Eval("ID","firmasil.aspx?ID={0}") %>'>Sil</a></td>
                       
                                                                             </tr></ItemTemplate></asp:Repeater>
                </tbody>
            </table>
          <td><a href='panel.aspx'>Geri</a></td>

        </div>
    </form>
</body>
</html>
