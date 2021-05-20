using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    StringBuilder st = new StringBuilder();
    string user, pass;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)

        {
            Response.Redirect("HomeWahda.aspx");

        }
    }
    protected void Login_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GumDBArchiveConnectionString_login"].ConnectionString);

        SqlCommand cmd = new SqlCommand("gum_login_account", con);
        user = Request.Form["user"];
        pass = Request.Form["pass"];
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username",user);
        cmd.Parameters.AddWithValue("@password",pass);


        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (user == "" || pass == "")
        {
            st.Append("<div class='alert alert-danger ' role='alert'> يجب تعبئة جميع الحقول </div>");
            //error.Controls.Add(new Literal { Text = st.ToString() });
        }
        

        else { 
            if (dr.HasRows)
              {
                Session["username"] = user.ToString();
                Session["password"] = pass.ToString();
                Response.Redirect("WebForm1.aspx");
                Session.RemoveAll();
              }
           else
           {
            st.Append("<div class='alert alert-danger ' role='alert'>خطأ في اسم المستخدم أو كلمة المرور  </div>");
            //error.Controls.Add(new Literal { Text = st.ToString() });
           }
        }
        con.Close();

    }

}