<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifiSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .baslik {
            font-size: x-large;
            color: #660066;
            text-transform: uppercase;
            font-family: "Comic Sans MS";
            background-color: #D6ACFF;
            border-radius: 17%;
        }

        .tablo {
            width: 100%;
            font-family: "Comic Sans MS";
            font-weight: bold;
        }
        .box {
            border: 2px solid #456879;
            border-radius: 10px;
             width: 700px;
            height: 20px;
            font-weight: bold;
            font-family: "Comic Sans MS";
            font-size: large;
            text-align:left;
        }
        

        .btn {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-family: "Comic Sans MS";
            font-size: large;
            text-align: center;
        }
        .auto-style29 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-family: "Comic Sans MS";
            font-size: large;
            text-align: left;
        }
        .auto-style24 {
            text-align: right;
        }
        .auto-style30 {
            color: #660066;
            font-size: xx-large;
            text-align: center;
            background-color: #FFCCCC;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="tablo">
        <tr>
            <td  colspan="2" class="auto-style30">MESAJ PANELİ</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">Ad Soyad :</td>
            <td>
                <asp:TextBox ID="Txt_Gonderen" runat="server" CssClass="auto-style29" Height="33px" Width="306px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Mail Adresiniz: </td>
            <td>
                <asp:TextBox ID="Txt_Mail" runat="server"  CssClass="auto-style29" Height="34px" Width="306px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Konu : </td>
            <td>
                <asp:TextBox ID="Txt_Konu" runat="server"  CssClass="auto-style29" Height="31px" Width="305px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Mesaj :</td>
            <td>
                <asp:TextBox ID="Txt_Icerik" runat="server"  CssClass="auto-style29" TextMode="MultiLine" Height="158px" Width="304px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td><strong>&nbsp;<asp:Button ID="Button1" runat="server"  CssClass="btn" Text="GÖNDER" Height="40px" Width="199px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </strong></td>
        </tr>
    </table>
</asp:Content>
