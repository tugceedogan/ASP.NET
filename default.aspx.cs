using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webproject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DuyurularıGetir();

        }

        private void DuyurularıGetir()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

            string sorgu = "Select * from Duyurular order by Tarih";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            lstDuyuru.DataSource = dr;
            lstDuyuru.DataBind();

            cnn.Close();
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if(txtKullanıcıAdı.Text != "" | txtSifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

                string sorgu = "Insert into tablo1(KullaniciAdi,Sifre) Values (@kullaniciadi,@sifre)";

                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();
                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", txtKullanıcıAdı.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    cmd.ExecuteNonQuery();

                    cnn.Close();
                    lblSonuc.Text = "BAŞARIYLA KAYIT YAPILMIŞTIR.";

                }
                catch (Exception)
                {
                    lblSonuc.Text = "Kaydınız yapılmamıştır.";

                }



            }
            else
            {
                lblSonuc.Text = "Boş alanları doldurunuz.";
            }
        }
    }

}
