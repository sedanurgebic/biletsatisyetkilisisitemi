<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secilenfirma.aspx.cs" Inherits="ucak_web.secilenfirma" %>

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
                       
                        <td>Fotoğraf</td>
                        <td>Adı</td>
                        <td>Soyadı</td>
                        <td>Cinsiyet</td>
                        <td>Doğum Yılı</td>
                        <td>Nereden</td>
                        <td>Nereye</td>
                        <td>Firma Adı</td>
                        <td>Koltuk No</td>
                        <td>Kayıt Tarihi</td>

                    </tr>
                </thead>
                <tbody>
                   <asp:Repeater ID="rptliste" runat="server"><ItemTemplate> <tr>
            
                       <td><img src="<%# Eval("fotograf") %>" width="100" height="75" /></td>
                       <td>  <%# Eval("yolcu_ad") %></td>
                       <td><%# Eval("yolcu_soyad") %></td>
                       <td><%# Eval("yolcu_cinsiyet") %></td>
                       <td><%# Eval("yolcu_dogumyili") %></td>
                       <td><%# Eval("nereden") %></td>
                       <td><%# Eval("nereye") %></td>
                       <td><%# Eval("firmalar.firma_adi") %></td>
                       <td><%# Eval("yolcu_koltukno") %></td>
                       <td><%# Eval("yolcu_kayit_tarihi") %></td>
                       
                                                                             </tr></ItemTemplate></asp:Repeater>
                </tbody>
            </table>
            <a href="firmayonet.aspx">Geri</a>
            
        </div>
    </form>
</body>
</html>
