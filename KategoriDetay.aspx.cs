using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string kategori_Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori_Id = Request.QueryString["Kategori_Id"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where Kategori_Id=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", kategori_Id);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

        }
    }
}