using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (IsPostBack)  {
            //Define an SQL connection
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            //Open the connection, for every time a query is started
            conn.Open();
            //String for finding a count for where a database entry's username is the same as that of the text box value
            string checkUser = "SELECT count(*) FROM UserData WHERE UserName='" + TextBoxUsNam.Text + "'";
            //
            SqlCommand com = new SqlCommand(checkUser, conn);
            //Close the connection
            conn.Close();
            //
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //
            if (temp == 1) {
                //
                Response.Write("User already Exists");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e) {
        //
        try {
            //
            Guid newGuid = Guid.NewGuid();

            //Define an SQL connection
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            //Open the connection, for every time a query is started
            conn.Open();
            //String for finding a count for where a database entry's username is the same as that of the text box value
            string insertQuery = "INSERT INTO UserData(ID, Username, Email, Password, Country) VALUES (@ID, @Uname, @email, @password, @country)";
            //
            SqlCommand com = new SqlCommand(insertQuery, conn);
            //
            com.Parameters.AddWithValue("@ID", newGuid.ToString());
            //
            com.Parameters.AddWithValue("@Uname", TextBoxUsNam.Text);
            //
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            //
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            //
            com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
            //
            com.ExecuteNonQuery();
            //
            Response.Redirect("Manager.aspx");
            //
            Response.Write("Registration is successful");

            //Close the connection
            conn.Close();
        } catch (Exception ex) {
            //
            Response.Write("Error:" + ex.ToString());
        }
        
        
    }
}