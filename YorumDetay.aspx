<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSite.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            margin-left: 80px;
        }
        .auto-style17 {
            font-family: "Comic Sans MS";
            font-weight: bold;
        }
        .auto-style18 {
            font-family: "Comic Sans MS";
            text-align: right;
        }
        .auto-style19 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style19"><strong>
                <br class="auto-style11" />
                </strong></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="Txt_Ad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Mail:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="Txt_Mail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="Txt_Icerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="Txt_Yemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em>
                <asp:Button ID="Btn_Onayla" runat="server" CssClass="auto-style17" Height="40px" Text="ONAYLA" Width="195px" OnClick="Btn_Onayla_Click" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
