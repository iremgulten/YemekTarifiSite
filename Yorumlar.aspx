<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }

        .auto-style31 {
            width: 31px;
            font-size: large;
            background-color: #CCCCCC;
            height: 50px;
        }

        .auto-style24 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style27 {
            width: 33px;
            background-color: #CCCCCC;
            height: 50px;
        }

        .auto-style30 {
            color: #333333;
            font-family: "Comic Sans MS";
            font-size: large;
            background-color: #CCCCCC;
            height: 50px;
        }

        .auto-style32 {
        font-weight: bold;
        font-size: large;
        margin-left: 0px;
    }
        .auto-style33 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style32" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style30"><strong>ONAYLI YORUM LİSTESİ</strong></td>
            </tr>


        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <%--<asp:DataList ID="DataList1" runat="server" CssClass="auto-style22" Width="447px" >
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text='<%# Eval("Yorum_AdSoyad") %>'></asp:Label>
                            &nbsp;</td>
                        <td class="auto-style18"><a href="Yorumlar.aspx?Yorum_Id=<%#Eval("Yorum_Id") %>&islem=sil">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/resimler/delete.png" Height="40px" Width="40px" CssClass="auto-style22" />
                        </a></td>
                        <td class="auto-style20"><a href="Yorumlar.aspx?Yorum_Id=<%#Eval("Yorum_Id") %>">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/resimler/update.png" Width="40px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>

        <div class="auto-style33">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style43" Font-Size="Large" Width="745px" style="font-family: 'Comic Sans MS'">
                <Columns>
                    <asp:BoundField DataField="Yorum_AdSoyad" HeaderText="AD SOYAD" />
                    <asp:HyperLinkField DataNavigateUrlFields="Yorum_Id" DataNavigateUrlFormatString="~/Yorumlar.aspx?Yorum_Id={0}&amp;islem=sil" HeaderImageUrl="~/resimler/delete.png" Text="Sil" />
                    <asp:HyperLinkField DataNavigateUrlFields="Yorum_Id" DataNavigateUrlFormatString="~/YorumDetay.aspx?Yorum_Id={0}" HeaderImageUrl="~/resimler/update.png" Text="Güncelle" />
                </Columns>
                <HeaderStyle BackColor="#CCFFFF" />
            </asp:GridView>
        </div>
    </asp:Panel>


        <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;">
        <table class="auto-style16">
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style24" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                </strong></td>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                </strong></td>
                <td class="auto-style30"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
            </tr>


        </table>
    </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <%--<asp:DataList ID="DataList2" runat="server" CssClass="auto-style22" Width="447px" >
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text='<%# Eval("Yorum_AdSoyad") %>'></asp:Label>
                            &nbsp;</td>
                        <td class="auto-style18"><a href="Yorumlar.aspx?Yorum_Id=<%#Eval("Yorum_Id") %>&islem=sil">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/resimler/delete.png" Height="40px" Width="40px" CssClass="auto-style22" />
                        </a></td>
                        <td class="auto-style20"><a href="YorumDetay.aspx?Yorum_Id=<%#Eval("Yorum_Id") %>">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/resimler/update.png" Width="40px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>
            <div class="auto-style33">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style43" Font-Size="Large" Width="745px" style="font-family: 'Comic Sans MS'">
                    <Columns>
                        <asp:BoundField DataField="Yorum_AdSoyad" HeaderText="AD SOYAD" />
                        <asp:HyperLinkField DataNavigateUrlFields="Yorum_Id" DataNavigateUrlFormatString="~/Yorumlar.aspx?Yorum_Id={0}&amp;islem=sil" HeaderImageUrl="~/resimler/delete.png" Text="Sil" />
                        <asp:HyperLinkField DataNavigateUrlFields="Yorum_Id" DataNavigateUrlFormatString="~/YorumDetay.aspx?Yorum_Id={0}" HeaderImageUrl="~/resimler/update.png" Text="Güncelle" />
                    </Columns>
                    <HeaderStyle BackColor="#CCFFFF" />
                </asp:GridView>
            </div>
    </asp:Panel>

</asp:Content>
