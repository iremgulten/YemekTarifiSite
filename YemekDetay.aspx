<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .baslik {
            font-size: 45pt;
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
            text-align: right;
        }
        .auto-style20 {
            width: 284px;
        }
        .auto-style21 {
            text-align: left;
        }
        .auto-style22 {
            font-size: xx-large;
            color: #660066;
            text-transform: uppercase;
            font-family: "Comic Sans MS";
            background-color: #D6ACFF;
            border-radius: 17%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style22" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" Width="746px">
        <ItemTemplate>
            <table class="tablo" style="text-align:left;" >
                <tr>
                    <td>
                        <span><em>~</em></span><asp:Label ID="Label4" runat="server" Text='<%# Eval("Yorum_AdSoyad") %>' CssClass="auto-style16"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorum_Icerik") %>' Style="font-size: small;"></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" Style="font-size: x-small;" Text='<%# Eval("Yorum_Tarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div class="baslik" style="font-size: large; font-weight:bold;">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="tablo">
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Ad Soyad :</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server"   Height="20px" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Mail :</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Yorumunuz:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21">

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" Width="238px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20" >&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>


