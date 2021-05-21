using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Tarifler(Tarif_Ad,Tarif_Malzeme,Tarif_Yapilis,Tarif_Resim,Tarif_Sahip,Tarif_SahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", Txt_Ad.Text);
            komut.Parameters.AddWithValue("@t2", Txt_Mlz.Text);
            komut.Parameters.AddWithValue("@t3", Txt_Yapilis.Text);
            komut.Parameters.AddWithValue("@t4", Upload_Resim.FileName);
            komut.Parameters.AddWithValue("@t5", Txt_Oneren.Text);
            komut.Parameters.AddWithValue("@t6", Txt_Mail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır.");


        }
    }
}