using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class panel : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] != null)
            {
                kullanicilar ku = (kullanicilar)Session["Kullanici"];
                txtad.Text = ku.ad;
                txtsoyad.Text = ku.soyad;
                txtkayittarihi.Text = ku.kayit_tarihi.ToString();
                return;


            }
            Response.Redirect("~/503.aspx");


        }

        protected void btncikis_Click(object sender, EventArgs e)
        {
            Session.Remove("Kullanici");
            Response.Redirect("~/kul_giris.aspx");
        }
    }
}