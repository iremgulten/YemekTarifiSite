using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (Mesaj_Gonderen,Mesaj_Baslik,Mesaj_Mail,Mesaj_Icerik) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txt_Gonderen.Text);
            komut.Parameters.AddWithValue("@p2", Txt_Konu.Text);
            komut.Parameters.AddWithValue("@p3", Txt_Mail.Text);
            komut.Parameters.AddWithValue("@p4", Txt_Icerik.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}