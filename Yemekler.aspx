<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }

        .auto-style24 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style27 {
            width: 33px;
        }

        .auto-style28 {
            margin-left: 40px;
            text-align: center;
        }

        .auto-style29 {
            font-size: medium;
            font-family: "Comic Sans MS";
            font-weight: bold;
            margin-bottom: 0px;
        }

        .auto-style30 {
            font-size: medium;
        }

        .auto-style31 {
            margin-bottom: 0px;
            color: #000000;
            background-color: #D7DCE2;
            font-size: medium;
        }

        .auto-style33 {
            font-size: medium;
            font-family: "Comic Sans MS";
        }

        .auto-style35 {
            width: 31px;
            font-size: large;
        }

        .auto-style36 {
            color: #333333;
            font-family: "Comic Sans MS";
            font-size: large;
        }

        .auto-style37 {
            width: 31px;
            font-size: large;
            height: 27px;
        }

        .auto-style38 {
            width: 33px;
            height: 27px;
        }

        .auto-style39 {
            color: #333333;
            font-family: "Comic Sans MS";
            font-size: large;
            height: 27px;
        }

        .auto-style40 {
            font-weight: bold;
            font-size: medium;
        }

        .auto-style41 {
            font-size: medium;
            font-family: "Comic Sans MS";
            text-align: right;
        }
        .auto-style42 {
            text-align: center;
        }
        .auto-style43 {
            font-family: "Comic Sans MS";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#D7DCE2" CssClass="auto-style31">
        <table class="auto-style16">
            <tr>
                <td class="auto-style37"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style40" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style38"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style39"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style30">
       <%-- <asp:DataList ID="DataList1" runat="server" CssClass="auto-style22" Width="447px">
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style19">
                            <strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style33" Text='<%# Eval("Yemek_Ad") %>'></asp:Label>
                            </strong>&nbsp;</td>
                        <td class="auto-style18">
                            <a href="Yemekler.aspx?Yemek_Id=<%#Eval("Yemek_Id") %>&islem=sil">
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/resimler/delete.png" Height="40px" Width="40px" CssClass="auto-style22" /></a>
                        </td>
                        <td class="auto-style20">
                            <a href="YemekDuzenle.aspx?Yemek_Id=<%#Eval("Yemek_Id") %>">
                                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/resimler/update.png" Width="40px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>

        <div class="auto-style42">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style43" Font-Size="Large" Width="745px">
                <Columns>
                    <asp:BoundField DataField="Yemek_Ad" HeaderText="YEMEK ADI" />
                    <asp:HyperLinkField DataNavigateUrlFields="Yemek_Id" DataNavigateUrlFormatString="~/Yemekler.aspx?Yemek_Id={0}&amp;islem=sil" HeaderImageUrl="~/resimler/delete.png" Text="Sil" />
                    <asp:HyperLinkField DataNavigateUrlFields="Yemek_Id" DataNavigateUrlFormatString="~/YemekDuzenle.aspx?Yemek_Id={0}" HeaderImageUrl="~/resimler/update.png" Text="Güncelle" />
                </Columns>
                <HeaderStyle BackColor="#CCFFFF" />
            </asp:GridView>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#D7DCE2" Style="margin-top: 15px;" CssClass="auto-style30">
        <table class="auto-style16">
            <tr>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style40" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style36"><strong>YEMEK EKLEME</strong></td>
            </tr>
        </table>

    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style30">
        <table class="auto-style16">
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41"><strong>YEMEK AD: &nbsp;</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="284px" Height="37px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style41"><strong>YEMEK MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="107px" TextMode="MultiLine" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style41"><strong>YEMEK TARİFİ: &nbsp;</strong></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="157px" TextMode="MultiLine" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style41"><strong>KATEGORİ: &nbsp;</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="52px" Width="290px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style28">
                    <asp:Button ID="btn_ekle" runat="server" CssClass="auto-style29" Height="40px" Text="EKLE" Width="170px" OnClick="btn_ekle_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
