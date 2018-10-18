using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cloudAsssignment
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
            }

            // Validate the user password

            else
            {
                FailureText.Text = "Invalid username or password.";
                ErrorMessage.Visible = true;
            }

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
            }

            // Validate the user password

            else
            {
                FailureText.Text = "Invalid username or password.";
                ErrorMessage.Visible = true;
            }
        }
    }
}