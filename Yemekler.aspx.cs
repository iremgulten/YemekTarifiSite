using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {

        SqlSinif bgl = new SqlSinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;


            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemek_Id"];
                islem = Request.QueryString["islem"];


                //Kategori Listesi
                SqlCommand komut_kat = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut_kat.ExecuteReader();

                DropDownList1.DataTextField = "Kategori_Ad";
                DropDownList1.DataValueField = "Kategori_Id";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            //Yemek Listesi
            SqlDataAdapter sqldata = new SqlDataAdapter("Select * From Tbl_Yemekler", bgl.baglanti());
            DataTable table = new DataTable();
            sqldata.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            bgl.baglanti().Close();

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yemekler where Yemek_Id=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }


            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {

            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yemekler (Yemek_Ad,Yemek_Malzeme,Yemek_Tarif,Kategori_Id) values (@p1,@p2,@p3,@p4)", bgl.baglanti()); ;
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox4.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Sayısını Arttırma

            SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler Set Kategori_Adet=Kategori_Adet+1 Where Kategori_Id=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}