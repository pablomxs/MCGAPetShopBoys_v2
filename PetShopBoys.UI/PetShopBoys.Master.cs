using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShopBoys.UI
{
    public partial class PetShopBoys : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void lnkAdminMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmanagement.aspx");
        }

        protected void lnkUserMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("usermanagement.aspx");
        }

        protected void lnkLogDashboard_Click(object sender, EventArgs e)
        {

        }

        protected void lnkBackupRestore_Click(object sender, EventArgs e)
        {

        }

        protected void lnkViewProducts_Click(object sender, EventArgs e)
        {

        }

        protected void lnkUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void lnkSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}