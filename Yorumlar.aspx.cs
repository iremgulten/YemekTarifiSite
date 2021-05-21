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
    public partial class Yorumlar : System.Web.UI.Page
    {

        SqlSinif bgl = new SqlSinif();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            id = Request.QueryString["Yorum_Id"];
            islem = Request.QueryString["islem"];

            //Onaylı Yorumlar Listesi
            SqlDataAdapter sqldata = new SqlDataAdapter("Select * From Tbl_Yorumlar Where Yorum_Onay=1", bgl.baglanti());
            DataTable table = new DataTable();
            sqldata.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            bgl.baglanti().Close();

            //Onaysız Yorumlar Listesi
            SqlDataAdapter sqldata1 = new SqlDataAdapter("Select * From Tbl_Yorumlar Where Yorum_Onay=0", bgl.baglanti());
            DataTable table1 = new DataTable();
            sqldata1.Fill(table1);
            GridView2.DataSource = table1;
            GridView2.DataBind();
            bgl.baglanti().Close();

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yorumlar where Yorum_Id=@p1", bgl.baglanti());
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
    }
}