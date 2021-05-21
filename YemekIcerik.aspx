﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekIcerik.aspx.cs" Inherits="YemekTarifiSite.YemekIcerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .anasayfa_table {
            width: 100%;
            font-family: "Comic Sans MS";
            text-align: left;
        }

        .baslik {
            font-size: xx-large;
            color: #660066;
            text-transform: uppercase;
            font-family: "Comic Sans MS";
            background-color: #D6ACFF;
            border-radius: 17%;
        }

        .satir {
            color: #FFFFFF;
            border-bottom-style: dotted;
            border-bottom-width: 3px;
            border-bottom-color: #AAD5FF;
        }
        .auto-style20 {
            border-bottom: 3px dotted #AAD5FF;
            color: #FFFFFF;
            width: 711px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList3" runat="server" Width="743px">
            <ItemTemplate>
                <table class="anasayfa_table">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" CssClass="baslik" Style="color: #660066;" Text='<%# Eval("Yemek_Ad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="satir">Malzemeler :
                            <asp:Label ID="Label4" runat="server" Style="color: black;" Text='<%# Eval("Yemek_Malzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="satir">Tarif :
                            <asp:Label ID="Label5" runat="server" Style="color: black;" Text='<%# Eval("Yemek_Tarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="274px" ImageUrl='<%# Eval("Yemek_Resim") %>' Style="text-align: center;" Width="711px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style23">
                                <tr>
                                    <td class="auto-style20" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">Puan :&nbsp;
                                        <asp:Label ID="Label6" runat="server" Style="color: #000000;" Text='<%# Eval("Yemek_Puan") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">Eklenme Tarih :&nbsp;<asp:Label ID="Label7" runat="server" Style="color: #000000;" Text='<%# Eval("Yemek_Tarih") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
