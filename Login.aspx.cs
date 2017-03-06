using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
        //Define an SQL connection
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        //Open the connection, for every time a query is started
        conn.Open();
        //String for finding a count for where a database entry's username is the same as that of the text box value
        string checkUser = "SELECT count(*) FROM UserData WHERE UserName='" + TextBoxUsNam.Text + "'";
        //
        SqlCommand com = new SqlCommand(checkUser, conn);
        //
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        //Close the connection
        conn.Close();
        //
        if (temp == 1)
        {
            //
            conn.Open();
            //
            string checkPasswordQuery = "SELECT password FROM UserData WHERE Username = '" + TextBoxUsNam.Text + "'";
            //
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
            //
            string password = passCom.ExecuteScalar().ToString().Replace(" ", "");
            //
            if (password == TextBoxPassW.Text)
            {
                //
                Session["New"] = TextBoxUsNam.Text;
                //
                Response.Redirect("Users.aspx");
            } else {
                //
                Response.Write("Password is incorrect");
            }
        } else {
            //
            Response.Write("Username is incorrect");
        }
    }
}