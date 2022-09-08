using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ucak_web
{
    public partial class yolcuekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("~/503.aspx");
            }
            firmakodu.DataSource = db.firmalar.ToList();
            firmakodu.DataTextField = "firma_adi";
            firmakodu.DataValueField = "id";
            firmakodu.DataBind();
        }
        ucakEntities3 db = new ucakEntities3();

        protected void btnkaydet_Click(object sender, EventArgs e)
        {
            int koltukno = Convert.ToInt32(ykoltukno.Value);
            if (db.yolcular.FirstOrDefault(x => x.yolcu_koltukno == koltukno ) != null)
            {
                Response.Write("<script> alert('İlgili Yolcu Daha Önce Kaydedilmiş')</script>");
                return;
            }

            yolcular ylc = new yolcular();
            if (yad.Text == "") { Response.Write("<script> alert('Ad Boş geçilemez')</script>"); return; }
            ylc.yolcu_ad = yad.Text;
            ylc.yolcu_soyad = ysoyad.Text;
            ylc.yolcu_cinsiyet = ycinsiyet.Text;
            ylc.yolcu_dogumyili = Convert.ToInt32(ydogumyili.Value);
            ylc.nereden = ynereden.Text;
            ylc.nereye = ynereye.Text;
            ylc.firma_kodu = Convert.ToInt32(firmakodu.SelectedValue);
            ylc.yolcu_koltukno = koltukno;
            ylc.yolcu_kayit_tarihi = DateTime.Now;
            ylc.Isdeleted = false;
            ylc.fotograf = imgresim.ImageUrl;
            db.yolcular.Add(ylc);
            db.SaveChanges();
            Response.Write("<script> alert('Kayıt Eklendi')</script>");
        }

        protected void btnresimyukle_Click(object sender, EventArgs e)
        {
            try
            {
                if (uplresim.HasFile)
                {
                    if (uplresim.PostedFile.ContentType == "image/jpeg" || uplresim.PostedFile.ContentType == "image/png")
                    {

                        if (uplresim.PostedFile.ContentLength < 102400000)
                        {

                            string isim = Guid.NewGuid().ToString();
                            uplresim.SaveAs(Server.MapPath("~/Resimler/" + isim + Path.GetExtension(uplresim.FileName)));
                            imgresim.ImageUrl = "/Resimler/" + isim + Path.GetExtension(uplresim.FileName);

                        }
                        else
                        {
                            Response.Write("<script> alert('Seçtiğiniz dosya boyutu 10 mb büyük olamaz')</script>");
                            return;
                        }
                    }
                    else
                    {
                        Response.Write("<script> alert('Seçtiğiniz dosya formatı uygun değil. Lütfen JPG yada PNG seçiniz')</script>");
                        return;
                    }
                }
                else
                {
                    Response.Write("<script> alert('Dosya Seçmediniz')</script>");
                    return;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "')</script>");


            }
        }
    }
    
}