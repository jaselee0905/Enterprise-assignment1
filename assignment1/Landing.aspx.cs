using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_click(object sender, EventArgs e)
        {
            Response.Redirect("Insert.aspx");
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }

        protected void btnAuthor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAuthor.axpx");
        }

        protected void btnTitle_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListTitle.axpx");

        }

        protected void btnExp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Expensive.axpx");

        }
    }
}