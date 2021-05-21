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
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;


            SqlDataAdapter sqldata = new SqlDataAdapter("Select * From Tbl_Tarifler where Tarif_Durum=0", bgl.baglanti());
            DataTable table = new DataTable();
            sqldata.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            bgl.baglanti().Close();


            SqlDataAdapter sqldata1 = new SqlDataAdapter("Select * From Tbl_Tarifler where Tarif_Durum=1", bgl.baglanti());
            DataTable table1 = new DataTable();
            sqldata1.Fill(table1);
            GridView2.DataSource = table1;
            GridView2.DataBind();
            bgl.baglanti().Close();
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