using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.ASPKontrolleri
{
    public partial class KullaniciGirisFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_giris_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_mail.Text))
            {
                if (!string.IsNullOrEmpty(tb_sifre.Text))
                {
                    if (tb_mail.Text == "alpsarikisla@hotmail.com" && tb_sifre.Text=="1234")
                    {
                        Response.Redirect("TextBoxKontrolu.aspx");
                    }
                    else
                    {
                        lbl_mesaj.Visible = true;
                        lbl_mesaj.Text = "Kullanıcı Bulunamadı";
                    }
                }
                else
                {
                    lbl_mesaj.Visible = true;
                    lbl_mesaj.Text = "Şifre Boş bırakılamaz";
                }
            }
            else
            {
                lbl_mesaj.Visible = true;
                lbl_mesaj.Text = "Mail Adresi Boş bırakılamaz";
            }
        }
    }
}