using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.ASPKontrolleri
{
    public partial class GridViewKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=NORTHWND; Integrated Security=True");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT CategoryID,CategoryName,Description FROM Categories";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
          
            List<Kategori> kategoriler = new List<Kategori>();
            while (reader.Read())
            {
                Kategori k = new Kategori();
                k.CategoryID = reader.GetInt32(0);
                k.CategoryName = reader.GetString(1);
                k.Description = reader.GetString(2);
                kategoriler.Add(k);
            }
            gv_kategoriler.DataSource = kategoriler;
            gv_kategoriler.DataBind();
            con.Close();
        }
    }
}