using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCBooks_JaesungLee
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
            Response.Redirect("ShowAll.aspx");
        }

        protected void btnAuthor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListAuthor.aspx");
        }

        protected void btnTitle_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListTitle.aspx");

        }

        protected void btnExp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Expensive.aspx");

        }
    }
}