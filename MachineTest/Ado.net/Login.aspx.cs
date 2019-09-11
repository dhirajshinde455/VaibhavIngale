using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ado.net
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

        
            SqlCommand cmd = new SqlCommand("select * from tblUser where UserName=@UserName and Password=@Password", con);

            cmd.Parameters.AddWithValue("@UserName", txtName.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            
            Response.Redirect("~/FoodItems.aspx");

           



        }
    }
}