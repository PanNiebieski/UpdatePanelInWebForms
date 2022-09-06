using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UpdatePanel
{
    public partial class UpdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTime_Click(object sender, EventArgs e)
        {
            btnTime.Text = DateTime.Now.ToLongTimeString() + "  " + DateTime.Now.ToLongDateString();
        }

        protected void btnLinkButton_Click(object sender, EventArgs e)
        {
            Random r = new Random();

            btnLinkButton.Text = (r.Next(1,1000) * r.Next(1,1000) ).ToString(CultureInfo.InvariantCulture);
        }
    }
}