using PetShopBoys.BE;
using PetShopBoys.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShopBoys.UI
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.userId = txtUsuario.Text.Trim();
            user.password = txtPassword.Text.Trim();
            user.firstName = txtNombre.Text.Trim();
            user.lastName = txtApellido.Text.Trim();
            user.mail = txtMail.Text.Trim();
            user.phoneNumber = Int64.Parse(txtTelefono.Text.Trim());
            user.province = drpProvincia.Text.Trim();
            user.city = txtLocalidad.Text.Trim();
            user.postalCode = int.Parse(txtCodPostal.Text.Trim());
            user.fullAddress = txtDireccion.Text.Trim();
            user.accountStatus = "Active";
            user.failedLogons = 0;
            new UserBLL().Create(user);

            Response.Redirect("home.aspx");
        }
    }
}