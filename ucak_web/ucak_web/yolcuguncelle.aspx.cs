using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class yolcuguncelle : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("~/503.aspx");
            }
            firmaadi.DataSource = db.firmalar.ToList();
            firmaadi.DataTextField = "firma_adi";
            firmaadi.DataValueField = "id";
            firmaadi.DataBind();
            if (Request.QueryString["id"] != null)
            {

                int id = Convert.ToInt32(Request.QueryString["ID"]);
                if (db.yolcular.Find(id) != null)
                {
                    yolcular ylc = db.yolcular.Find(id);
                    yolcuad.Text = ylc.yolcu_ad;
                    yolcusoyad.Text = ylc.yolcu_soyad;
                    ycinsiyet.Text = ylc.yolcu_cinsiyet;
                    dyili.Text = ylc.yolcu_dogumyili.ToString();
                    neredeny.Text = ylc.nereden;
                    nereyey.Text = ylc.nereye;
                    koltuknoy.Text = ylc.yolcu_koltukno.ToString();
                    y_id.Text = ylc.ID.ToString();



                }
                else
                {
                    Response.Write("<script> alert('İlgili ID'ye ait yolcu bulunamadı.')</script>");
                    return;
                }

            }
            else
            {
                Response.Redirect("~/yolcuyonet.aspx");
            }

        }

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(y_id.Text);

            int yolcu_koltukno = Convert.ToInt32(koltuknoy.Text);
            int yolcu_dogumyili = Convert.ToInt32(dyili.Text);
            yolcular ylc = db.yolcular.Find(id);
            ylc.yolcu_ad = yolcuad.Text;
            ylc.yolcu_soyad = yolcusoyad.Text;
            ylc.yolcu_cinsiyet = ycinsiyet.Text;
            ylc.nereden = neredeny.Text;
            ylc.nereye = nereyey.Text;
            ylc.yolcu_koltukno = yolcu_koltukno;
            ylc.yolcu_dogumyili = yolcu_dogumyili;
            ylc.firma_kodu = Convert.ToInt32(firmaadi.SelectedValue);

            db.SaveChanges();
            Response.Write("<script> alert('Kayıt Düzenlendi')</script>");
            yolcuad.Visible = false;
            yolcusoyad.Visible = false;
            ycinsiyet.Visible = false;
            dyili.Visible = false;
            y_id.Visible = false;
            neredeny.Visible = false;
            nereyey.Visible = false;
            firmaadi.Visible = false;
            koltuknoy.Visible = false;

        }

       
    }
}