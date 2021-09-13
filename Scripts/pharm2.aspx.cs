using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hospital1.Scripts
{
    public partial class pharm2 : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if (ViewState["Record"] == null)
                {
                    dt.Columns.Add("Drugcode");
                    dt.Columns.Add("Drug");
                    dt.Columns.Add("Price");
                    dt.Columns.Add("Quantity");
                    dt.Columns.Add("Total");
                    ViewState["Record"] = dt;
                    bindgrid();
                }
            }
        }
        protected void bindgrid()
        {
            GridView1.DataSource = ViewState["Record"] as DataTable;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            SqlCommand cmd=new SqlCommand("select *from pharma_drugs where drugcode='"+TextBox3.Text+"'",con);
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            if(dr.Read())
            {

                string dname;
                string price;
                dname = dr["drug"].ToString();
                price = dr["price"].ToString();
                Label1.Text = "";
                TextBox4.Text = dname;
                TextBox5.Text = price;
            }
            else
            {
                Label1.Text = "WRONG CODE";
                TextBox3.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string dcode = TextBox3.Text;
            string drug = TextBox4.Text;
            double price = double.Parse(TextBox5.Text);
            double qty = double.Parse(TextBox6.Text);
            double total = price * qty;
            dt = (DataTable)ViewState["Record"];
            dt.Rows.Add(dcode,drug,price,qty,total);
            GridView1.DataSource=dt;
            GridView1.DataBind();
            int sum = 0;
            for(int i=0;i<GridView1.Rows.Count;i++)
            {
                sum = sum + Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            }
            TextBox8.Text = sum.ToString();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox3.Focus();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
       

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = ViewState["Record"] as DataTable;
            dt.Rows[index].Delete();
            ViewState["Record"] = dt;
            bindgrid();
            int sum = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                sum = sum + Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            }
            TextBox8.Text = sum.ToString();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox3.Focus();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double ftotal = double.Parse(TextBox8.Text);
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8848HFL7\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True");
            con.Open();
            DateTime dt = DateTime.Now;
            SqlCommand cmd = new SqlCommand("insert into sales_c(Name,Doctor_p,total)values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox8.Text+ "')", con);
            cmd.ExecuteNonQuery();
            string name, doct, drug;
            int qty;
            double total;
            for(int row=0;row<GridView1.Rows.Count;row++)
            {
                qty = 0;
                total = 0.0;
                name = TextBox1.Text;
                doct = TextBox2.Text;
                drug = GridView1.Rows[row].Cells[2].Text;
                qty = int.Parse(GridView1.Rows[row].Cells[4].Text);
                total = double.Parse(GridView1.Rows[row].Cells[5].Text);
                SqlCommand cmd1 = new SqlCommand("insert into sales_p(Name,Doctor_p,Drug,qty,total,sales_id)values(@Name,@Doctor_p,@Drug,@qty,@total,(select sales_id from sales_c where Name='"+TextBox1.Text+"' and Doctor_p='"+TextBox2.Text+"' and total='"+TextBox8.Text+"'))", con);
                cmd1.Parameters.AddWithValue("@Name", name);
                cmd1.Parameters.AddWithValue("@Doctor_p", doct);
                cmd1.Parameters.AddWithValue("@Drug", drug);
                cmd1.Parameters.AddWithValue("@qty", qty);
                cmd1.Parameters.AddWithValue("@total", total);
                cmd1.ExecuteNonQuery();

            }
           
            Response.Write("Data billeddddddddddddddd");
            ClientScript.RegisterStartupScript(this.GetType(),"alert", "alert('Billing is successfullll')", true);
            
            con.Close();
            
        }
    }
    
}