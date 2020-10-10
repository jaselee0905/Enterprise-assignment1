using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCBooks_JaesungLee
{
    public partial class Insert : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ConnectDB()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Jason\source\repos\assignment1\assignment1\App_Data\Books.mdf;Integrated Security=True");
            con.Open();
        }

        void InsertDB()
        {
            string ins = "Insert into Books values (@isbn,@title,@author,@date,@publisher,@page,@price)";
            ConnectDB();
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.AddWithValue("@isbn", Convert.ToInt32(tbISBN.Text));
            cmd.Parameters.AddWithValue("@title", tbTitle.Text);
            cmd.Parameters.AddWithValue("@author", tbAuthor.Text);
            cmd.Parameters.AddWithValue("@date", tbDate.Text);
            cmd.Parameters.AddWithValue("@publisher", tbPublisher.Text);
            cmd.Parameters.AddWithValue("@page", Convert.ToInt32(tbPgCount.Text));
            cmd.Parameters.AddWithValue("@price", Convert.ToDecimal(tbPrice.Text));
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnHome_click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime temp = DateTime.Parse(args.Value);
            if (temp > DateTime.Now)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            InsertDB();
            lbSuccess.Visible = true;
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAll.aspx");
        }
    }
}