using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekIcerik : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        String id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemek_Id"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where Yemek_Id = @p1", bgl.baglanti());
            SqlParameter param = komut.Parameters.AddWithValue("@p1", id);
            if (id == null)
            {
                param.Value = DBNull.Value;
            }
            SqlDataReader dr2 = komut.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();

        }
    }
}