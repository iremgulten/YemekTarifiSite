<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            margin-bottom: 0px;
            color: #000000;
            background-color: #D7DCE2;
        }

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
        }

        .auto-style29 {
            font-size: medium;
            font-family: "Comic Sans MS";
            font-weight: bold;
            margin-bottom: 0px;
        }

        .auto-style31 {
            width: 31px;
            font-size: large;
        }

        .auto-style32 {
            font-family: "Comic Sans MS";
            font-size: medium;
        }

        .auto-style33 {
            font-size: medium;
        }

        .auto-style34 {
            color: #333333;
            font-family: "Comic Sans MS";
            font-size: medium;
        }

        .auto-style35 {
            font-family: "Comic Sans MS";
            font-size: medium;
            text-align: right;
        }
        .auto-style36 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#D7DCE2" CssClass="auto-style15">
        <table class="auto-style16">
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style24" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
                <td class="auto-style34"><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
      
        <%-- <asp:DataList ID="DataList1" runat="server" CssClass="auto-style22" Width="745px">
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text='<%# Eval("Kategori_Ad") %>'></asp:Label>
                            &nbsp;</td>
                        <td class="auto-style18">
                            <a href="Kategoriler.aspx?Kategori_Id=<%#Eval("Kategori_Id") %>&islem=sil">
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/resimler/delete.png" Height="40px" Width="40px" CssClass="auto-style22" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>

        <div class="auto-style36">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="Black" GridLines="Vertical" Height="335px" Width="749px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Kategori_Ad" HeaderText="Kategori Adı" />
                    <asp:HyperLinkField DataNavigateUrlFields="Kategori_Id" DataNavigateUrlFormatString="~/Kategoriler.aspx?Kategori_Id={0}&amp;islem=sil" HeaderImageUrl="~/resimler/delete.png" HeaderText="SİL" Text="DELETE" />
                </Columns>
                <HeaderStyle BackColor="#CCFFFF"  Font-Bold="True"  />
            </asp:GridView>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#D7DCE2" Style="margin-top: 15px;">
        <table class="auto-style16">
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style24" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style34"><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>

    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">KATEGORİ AD: &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="262px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="34px" Width="269px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_ekle" runat="server" CssClass="auto-style29" Height="39px" Text="EKLE" Width="123px" OnClick="btn_ekle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
