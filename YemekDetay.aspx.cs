using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yemekid = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            yemekid = Request.QueryString["Yemek_Id"];

            SqlCommand komut = new SqlCommand("Select Yemek_Ad from Tbl_Yemekler where Yemek_Id= @p1", bgl.baglanti());
            SqlParameter param1 = komut.Parameters.AddWithValue("@p1", yemekid);
            if (yemekid == null)
            {
                param1.Value = DBNull.Value;
            }
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read()) {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            // Yorum Listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where Yemek_Id = @p2",bgl.baglanti());
            SqlParameter param2 = komut2.Parameters.AddWithValue("@p2", yemekid);
            if (yemekid == null)
            {
                param2.Value = DBNull.Value;
            }
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

         




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yorumlar (Yorum_AdSoyad,Yorum_Mail,Yorum_Icerik,Yemek_Id) values (@p1,@p2,@p3,@p4) ",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    } 
}