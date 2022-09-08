using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class secilenfirma : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["Kullanici"] == null) Response.Redirect("~/503.aspx");
            if (Request.QueryString["id"] != null)
            {
                int firmalar = Convert.ToInt32(Request.QueryString["id"]);
                rptliste.DataSource = db.yolcular.Where(x => x.firma_kodu == firmalar).ToList();
                rptliste.DataBind();
            }

        }
    }
}