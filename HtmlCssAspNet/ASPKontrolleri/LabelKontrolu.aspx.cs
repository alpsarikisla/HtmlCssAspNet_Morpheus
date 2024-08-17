using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.ASPKontrolleri
{
    public partial class LabelKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_isim.Text = "Merhaba Alp";
        }
    }
}