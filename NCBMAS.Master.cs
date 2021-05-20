using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Collections;

namespace ReportsProject
{
    public partial class NCBMAS : System.Web.UI.MasterPage
    {
        //string x;
        string strConnString = ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ConnectionString;
        string str;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {

                string constr1 = ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ToString(); // connection string
                SqlConnection con1 = new SqlConnection(constr1);
                con1.Open();

                SqlCommand com1 = new SqlCommand("select count(*) from DBNCB.dbo.Customers where CustomerStatus = 3", con1); // table name 
                SqlDataAdapter da1 = new SqlDataAdapter(com1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);  // fill dataset
                Label4.Enabled = true;

                Label4.Text = Convert.ToString(ds1.Tables[0].Rows[0]["Column1"]);
                Label4.DataBind();
                con1.Close();



                string constr2 = ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ToString(); // connection string
                SqlConnection con2 = new SqlConnection(constr1);
                con2.Open();

                SqlCommand com2 = new SqlCommand("select count(*) from DBNCB.dbo.Customers where CustomerStatus = 3", con1); // table name 
                SqlDataAdapter da2 = new SqlDataAdapter(com1);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);  // fill dataset
                Label3.Enabled = true;

                Label3.Text = Convert.ToString(ds1.Tables[0].Rows[0]["Column1"]);
                Label3.DataBind();

                con2.Close();







                string constr3 = ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ToString(); // connection string
                SqlConnection con3 = new SqlConnection(constr3);
                con3.Open();

                SqlCommand com3 = new SqlCommand("select count(*) FROM [DBNCB].[dbo].[Customers] where id in (select id from[DBNCB].[dbo].[CustomersPasswords]  where PasswordType = 'APP')", con3); // table name 
                SqlDataAdapter da3 = new SqlDataAdapter(com3);
                DataSet ds3 = new DataSet();
                da3.Fill(ds3);  // fill dataset
                Label2.Enabled = true;

                Label2.Text = Convert.ToString(ds3.Tables[0].Rows[0]["Column1"]);
                Label2.DataBind();


                con3.Close();




                string constr4 = ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ToString(); // connection string
                SqlConnection con4 = new SqlConnection(constr4);
                con4.Open();

                SqlCommand com4 = new SqlCommand("select count(*) FROM [DBNCB].[dbo].[Customers] where id in(select id from dbncb.dbo.CustomersPasswords where PasswordType='MonyTrans')", con1); // table name 
                SqlDataAdapter da4 = new SqlDataAdapter(com4);
                DataSet ds4 = new DataSet();
                da4.Fill(ds4);  // fill dataset
                Label1.Enabled = true;

                Label1.Text = Convert.ToString(ds4.Tables[0].Rows[0]["Column1"]);
                Label1.DataBind();
                con4.Close();
            }
        }
    }
}