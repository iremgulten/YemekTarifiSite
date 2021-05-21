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
    public partial class AnaSayfa : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Listele();
            }


        }

        public void Listele()
        {
            SqlDataAdapter sqldata = new SqlDataAdapter("Select * From Tbl_Yemekler",bgl.baglanti());
            DataTable table = new DataTable();
            sqldata.Fill(table);
            GridView1.DataSource = table;
            ViewState["dt1"]= table;
            GridView1.DataBind();
            bgl.baglanti().Close();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Listele();
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            if (ViewState["dt1"] != null)
            {
                DataTable dt = (DataTable)ViewState["dt1"];
                DataView dv = new DataView(dt);
                dv.Sort = e.SortExpression;
                GridView1.DataSource = dv;
                GridView1.DataBind();
            }
        }
    }
}