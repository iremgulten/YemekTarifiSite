using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorum_Id"];

            if (Page.IsPostBack==false){
                SqlCommand komut = new SqlCommand("Select Yorum_AdSoyad,Yorum_Mail,Yorum_Icerik,Yemek_Ad From Tbl_Yorumlar Inner Join Tbl_Yemekler On Tbl_Yorumlar.Yemek_Id=Tbl_Yemekler.Yemek_Id where Yorum_Id=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    Txt_Ad.Text = dr[0].ToString();
                    Txt_Mail.Text = dr[1].ToString();
                    Txt_Icerik.Text = dr[2].ToString();
                    Txt_Yemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
            

        }

        protected void Btn_Onayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar Set Yorum_Icerik=@p1,Yorum_Onay=@p2 Where Yorum_Id=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",Txt_Icerik.Text);
            komut.Parameters.AddWithValue("@p2","True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}