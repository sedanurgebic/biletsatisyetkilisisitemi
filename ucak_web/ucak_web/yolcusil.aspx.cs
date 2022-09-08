using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class yolcusil : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("~/503.aspx");
            }
            if (Request.QueryString["ID"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                db.yolcular.Remove(db.yolcular.Find(id));
                db.SaveChanges();
                Response.Redirect("yolcuyonet.aspx");
            }
            else
            {
                Response.Redirect("~/panel.aspx");
            }

        }
    }
}