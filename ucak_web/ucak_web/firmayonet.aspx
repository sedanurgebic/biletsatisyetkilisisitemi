<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firmayonet.aspx.cs" Inherits="ucak_web.firmayonet" %>

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
                        <td>
                           Firma Adı
                        </td>
                        <td>Firma Bilgisi</td>
                    </tr>
                </thead>
                <tbody>
                   <asp:Repeater ID="rptliste" runat="server"><ItemTemplate> <tr>
                       <td>  <%# Eval("firma_adi") %></td>

        
                       <td><a href='<%# Eval("ID","secilenfirma.aspx?ID={0}") %>'>Firmalara Atanan Yolcular</a></td>
                                                                             </tr></ItemTemplate></asp:Repeater>
                </tbody>
            </table>
            <a href="panel.aspx">Geri</a>
        </div>
    </form>
</body>
</html>
