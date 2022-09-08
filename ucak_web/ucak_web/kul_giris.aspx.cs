using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class login : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }
            lblsessionid.Text = Session.SessionID;
            lblkontrol.Text = "Henüz Giriş Yapılmadı";

        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            string kadi = txtkadi.Text;
            string sifre = txtsifre.Text;
            kullanicilar o = db.kullanicilar.FirstOrDefault(x => x.kullanici_adi == kadi);
            if (o != null)
            {
                if (o.sifre == sifre)
                {
                    Session["Kullanici"] = o;
                    Response.Redirect("~/panel.aspx");
                }
                else
                {
                    lblkontrol.Text = "Şifre Yanlış";
                }
            }
            else
            {
                lblkontrol.Text = "Kullanıcı bulunamadı";

            }

        }

        }
    }
