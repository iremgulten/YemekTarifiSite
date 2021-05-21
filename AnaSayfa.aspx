<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifiSite.AnaSayfa" %>

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
            text-align: center;
        }

        .satir {
            color: #FFFFFF;
            border-bottom-style: dotted;
            border-bottom-width: 3px;
            border-bottom-color: #AAD5FF;
        }

        .auto-style16 {
            color: #FFFFFF;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <%--        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="anasayfa_table">
                    <tr>
                        <td>
                            &nbsp;<a href="YemekDetay.aspx?Yemek_Id=<%#Eval("Yemek_Id")%>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" CssClass="baslik" Style="color: #660066; text-align:center;" Text='<%# Eval("Yemek_Ad") %>'></asp:Label>
                                <br />
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="satir">Malzemeler :
                            <asp:Label ID="Label4" runat="server" style="color:black;" Text='<%# Eval("Yemek_Malzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="satir">Yemek Tarifi :
                            <asp:Label ID="Label5" runat="server" style="color:black;" Text='<%# Eval("Yemek_Tarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" style="text-align:center;" Height="322px" ImageUrl='<%# Eval("Yemek_Resim") %>' Width="407px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="satir">Eklenme Tarihi :
                            <asp:Label ID="Label6" runat="server" style="color: #000000;"  Text='<%# Eval("Yemek_Tarih") %>'></asp:Label>
                           </td>
                    </tr>
                    <tr>
                        <td class="satir" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">Puan : 
                            <asp:Label ID="Label7" runat="server" style="color: #000000;"  Text='<%# Eval("Yemek_Puan") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%> 
        <asp:GridView ID="GridView1" runat="server" AllowPaging="true" AllowSorting="true" OnSorting="GridView1_Sorting" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="170px" Width="747px" Font-Bold="True" Font-Names="Comic Sans MS">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Yemek_Ad" HeaderText="Yemek Adı" SortExpression="Yemek_Ad" />
                <asp:ImageField HeaderText="Fotoğraf" DataImageUrlField="Yemek_Resim" ControlStyle-Height="100px" ControlStyle-Width="100px">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="Yemek_Tarih" HeaderText="Eklenme Tarihi" SortExpression="Yemek_Tarih" />
                <asp:BoundField DataField="Yemek_Puan" HeaderText="Puan" SortExpression="Yemek_Puan"/>
                <asp:HyperLinkField HeaderText="Yorumlar" DataNavigateUrlFields="Yemek_Id" DataNavigateUrlFormatString="~/YemekDetay.aspx?Yemek_Id={0}" Text="View" />
                <asp:HyperLinkField HeaderText="İçerik" DataNavigateUrlFields="Yemek_Id" DataNavigateUrlFormatString="~/YemekIcerik.aspx?Yemek_Id={0}" Text="View" />

            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#B5A6A3" Font-Bold="True" ForeColor="#660066" HorizontalAlign="Center" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </asp:Panel>
</asp:Content>
