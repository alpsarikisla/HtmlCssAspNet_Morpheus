using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.ASPKontrolleri
{
    public partial class ButtonKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_tikla_Click(object sender, EventArgs e)
        {
            this.Title = "Gıdıklamaaaaaa !!!!";
        }

        protected void btn_topla_Click(object sender, EventArgs e)
        {
            string strSayi1 = tb_sayi1.Text;
            int sayi1 = Convert.ToInt32(strSayi1);

            int sayi2 = Convert.ToInt32(tb_sayi2.Text);

            int toplam = sayi1 + sayi2;
            tb_sonuc.Text = toplam.ToString();
        }
    }
}