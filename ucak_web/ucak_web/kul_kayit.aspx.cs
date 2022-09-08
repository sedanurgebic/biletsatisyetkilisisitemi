using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class kul_kayit : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            if (db.kullanicilar.FirstOrDefault(x => x.ad == txtad.Text) != null)
            {
                Response.Write("<script> alert('Kayıt Zaten Ekli') </script>");
                return;

            }


            kullanicilar ku = new kullanicilar();
            ku.ad = txtad.Text;
            ku.soyad = txtsoyad.Text;
            ku.kullanici_adi = txtkullaniciadi.Text;
            ku.sifre = txtsifre.Text;
            ku.kayit_tarihi = DateTime.Now;
            ku.isdeleted = false;
            db.kullanicilar.Add(ku);
            db.SaveChanges();
            Response.Write("<script> alert('Kayıt Eklendi') </script>");


        }
    }
}