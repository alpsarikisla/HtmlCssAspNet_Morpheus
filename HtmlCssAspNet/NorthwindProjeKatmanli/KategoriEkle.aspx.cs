using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace HtmlCssAspNet.NorthwindProjeKatmanli
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_kaydet_Click(object sender, EventArgs e)
        {
            Category cat = new Category();
            cat.CategoryName = tb_kategoriadi.Text;
            cat.Description = tb_aciklama.Text;
            if (dm.KategoriEkle(cat))
            {
                pnl_basarili.Visible = true;
                pnlBasarisiz.Visible = false;
            }
            else
            {
                pnlBasarisiz.Visible = true;
                pnl_basarili.Visible = false;
            }
        }
    }
}