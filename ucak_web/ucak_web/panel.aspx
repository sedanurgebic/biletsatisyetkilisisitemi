<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="ucak_web.panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-12">
        <div class="col-md-6">
            <asp:Label ID="txtad" runat="server" />
            <br />
            <asp:Label ID="txtsoyad" runat="server" />
            <br />
            <asp:Label ID="txtkayittarihi" runat="server" />
            <br />
            <asp:Label ID="txtpersonel_kodu" runat="server" />
            <br />
            <asp:Button ID="btncikis" Onclick="btncikis_Click" runat="server" text="Çıkış Yap"/>
            <br />
            <a href="yolcuekle.aspx">Yolcu Ekle</a><br />
            <a href="yolcuyonet.aspx">Yolcu Yönet</a><br />
            <a href="firmalisteleyonet.aspx">Firmalar</a><br />
            <a href="firmaekle.aspx">Firma Ekle</a><br />
            <a href="firmayonet.aspx">Firma Yolcuları</a><br />

                   
        </div>
    </div>
</asp:Content>
