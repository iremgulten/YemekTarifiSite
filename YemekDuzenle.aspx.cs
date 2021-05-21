using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["Yemek_Id"];

            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Yemek_Id=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                
                }
                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut_kat = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut_kat.ExecuteReader();

                    DropDownList1.DataTextField = "Kategori_Ad";
                    DropDownList1.DataValueField = "Kategori_Id";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));


            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemekler SET Yemek_Ad=@p1,Yemek_Malzeme=@p2,Yemek_Tarif=@p3,Kategori_Id=@p4,Yemek_Resim=@p5 WHERE Yemek_Id=@p6", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/resimler/"+FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p6", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void btn_sec_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumu false yapıldı.
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler Set Durum=0 ",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Günün yemeği için idye göre true yapılıyor.
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler Set Durum=1 Where Yemek_Id=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}