using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class firmaekle : System.Web.UI.Page
    {
        ucakEntities3 db = new ucakEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnkkaydet_Click(object sender, EventArgs e)
        {
            if (db.firmalar.FirstOrDefault(x => x.firma_adi == firmaa.Text) != null)
            {
                Response.Write("<script> alert('Bu Firma Zaten Ekli')</script>");
                return;
            }


            firmalar frm = new firmalar();
            frm.firma_adi = firmaa.Text;
            db.firmalar.Add(frm);
            db.SaveChanges();
            Response.Write("<script> alert('Firma Eklendi')</script>");

        }
    }
}