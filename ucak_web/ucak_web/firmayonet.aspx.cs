using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class firmayonet : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("~/503.aspx");
                return;
            }
            rptliste.DataSource = db.firmalar.ToList();
            rptliste.DataBind();

        }
    }
}