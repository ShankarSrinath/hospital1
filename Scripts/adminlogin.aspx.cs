using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace hospital1.Scripts
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select *from admi_cre where username='" + TextBoxUsername.Text + "' and password='"+TextBoxPassword.Text+"'", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Response.Redirect("OP registry.aspx");

            }

            else
            {


                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('INVALID LOGIN')", true);
                TextBoxUsername.Text = "";
                TextBoxPassword.Text = "";
            }
        }
    }
}