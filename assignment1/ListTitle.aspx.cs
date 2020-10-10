using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCBooks_JaesungLee
{
    public partial class ListTitle : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ConnectDB()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Books.mdf;Integrated Security=True");
            con.Open();
        }

        protected void btnHome_click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAll.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
        }

    }
}