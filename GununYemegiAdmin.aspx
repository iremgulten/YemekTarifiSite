<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSite.GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style31 {
            margin-bottom: 0px;
            color: #000000;
            background-color: #D7DCE2;
            font-size: medium;
        }

        .auto-style16 {
            width: 100%;
        }

        .auto-style30 {
            font-size: medium;
        }

        .auto-style37 {
            width: 31px;
            font-size: large;
            height: 27px;
        }

        .auto-style40 {
            font-weight: bold;
            font-size: medium;
        }

        .auto-style38 {
            width: 33px;
            height: 27px;
        }

        .auto-style24 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style39 {
            color: #333333;
            font-family: "Comic Sans MS";
            font-size: medium;
            height: 27px;
        }
        .auto-style41 {
            text-align: center;
        }
        .auto-style42 {
            font-family: "Comic Sans MS";
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#D7DCE2" CssClass="auto-style31">
        <table class="auto-style16">
            <tr>
                <td class="auto-style37"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style40" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1"  />
                </strong></td>
                <td class="auto-style38"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button2_Click1"  />
                </strong></td>
                <td class="auto-style39"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style30">
        <%--<asp:DataList ID="DataList1" runat="server" CssClass="auto-style22" Width="746px">
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style19">
                            <strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style33" Text='<%# Eval("Yemek_Ad") %>' style="font-family: 'Comic Sans MS'"></asp:Label>
                            </strong>&nbsp;</td>
                        <td class="auto-style20">
                            <a href="YemekDuzenle.aspx?Yemek_Id=<%#Eval("Yemek_Id") %>">
                                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/resimler/choose.png" Width="40px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>
        <div class="auto-style41">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style42" Width="744px">
                <Columns>
                    <asp:BoundField DataField="Yemek_Ad" HeaderText="YEMEK ADI" />
                    <asp:HyperLinkField DataNavigateUrlFields="Yemek_Id" DataNavigateUrlFormatString="~/YemekDuzenle.aspx?Yemek_Id={0}" HeaderImageUrl="~/resimler/choose.png" Text="GÜNÜN YEMEĞİ SEÇ" />
                </Columns>
                <HeaderStyle BackColor="#CCFFFF" />
            </asp:GridView>
        </div>
    </asp:Panel>
</asp:Content>
