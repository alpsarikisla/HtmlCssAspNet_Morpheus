using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.ASPKontrolleri
{
    public partial class ImageKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            img_resim.ImageUrl = "images/none.jpg";
        }

        protected void btn_degistir_Click(object sender, EventArgs e)
        {
            //img_resim.ImageUrl = "images/resim2.jpg";
            Random rnd = new Random();
            int sonuc = rnd.Next(1, 5);
            img_resim.ImageUrl = "images/" + sonuc + ".jpg";
        }
    }
}