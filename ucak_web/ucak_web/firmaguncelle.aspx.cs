using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class firmaguncelle : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("~/503.aspx");
            }
            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                if (db.firmalar.Find(id) != null)
                {
                    firmalar frm = db.firmalar.Find(id);
                    firmaadii.Text = frm.firma_adi;
                    txtID.Text = frm.id.ToString();
                }
                else
                {
                    Response.Write("<script>alert('İlgili ID'ye ait firma türü bulunamadı.')</script>");
                    return;
                }
            }
            else
            {
                Response.Redirect("~/firmalisteleyonet.aspx");
            }

        }

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtID.Text);
            firmalar frm = db.firmalar.Find(id);
            frm.firma_adi = firmaadii.Text;
            db.SaveChanges();
            Response.Write("<script>alert('Firma Adı Güncellendi.')</script>");
            firmaadii.Visible = false;

        }
    }
}