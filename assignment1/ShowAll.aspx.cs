using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCBooks_JaesungLee
{
    public partial class ShowAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHome_click(object sender, EventArgs e)
        {
            Response.Redirect("Landing.aspx");
        }
    }
}