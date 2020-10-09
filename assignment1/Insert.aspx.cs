using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}