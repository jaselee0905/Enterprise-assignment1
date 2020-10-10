using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCBooks_JaesungLee
{
    public partial class ListAuthor : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnHome_click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAll.aspx");
        }
    }
}