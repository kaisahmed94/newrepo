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

namespace ReportsProject
{
    public partial class KA_BV_Count : System.Web.UI.Page
    {
        string i;

        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NCBMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("ka_BVF", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("@i", i);
                cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);

                cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
                cmd.Parameters.AddWithValue("@pid", DropDownList3.SelectedValue);

                //cmd.Parameters.AddWithValue("@cusno", TextBox3.Text);
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(resultstable);

            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return resultstable;
        }
        private DataSet GetDataresult1()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NCBMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("ka_BVS", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("@i", i);
                cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);

                cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@i", i);
                cmd.Parameters.AddWithValue("@pid", DropDownList3.SelectedValue);

                //cmd.Parameters.AddWithValue("@cusno", TextBox3.Text);
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(resultstable);

            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return resultstable;
        }


        protected void ExportToExcel()
        {
            //ExportToExcel();
            Response.Clear();
            //Response.Buffer = true;
            Response.ContentType = "application/vnd.xls";
            Response.AddHeader("content-disposition", "attachment;filename=MyFiles.xls");
            Response.Charset = "";
            this.EnableViewState = false;

            System.IO.StringWriter sw = new System.IO.StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            {
                GridView1.RenderControl(htw);
                GridView1.AllowPaging = false;
                GridView1.AutoGenerateColumns = true;
                Response.Write(sw.ToString());
                Response.End();

            }





        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{

            //    string constr = ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ToString(); // connection string
            //    SqlConnection con = new SqlConnection(constr);
            //    con.Open();

            //    SqlCommand com = new SqlCommand("select * from LOGINUSER", con); // table name 
            //    SqlDataAdapter da = new SqlDataAdapter(com);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);  // fill dataset

            //    //DropDownList1.DataTextField = ds.Tables[0].Columns["BRANCHNAME"].ToString(); // text field name of table dispalyed in dropdown
            //    //DropDownList1.DataValueField = ds.Tables[0].Columns["PREFIX"].ToString();             // to retrive specific  textfield name 
            //    //DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            //    //DropDownList1.DataBind();  //binding dropdownlist
            //    //                           //  DropDownList1.SelectedItem.Text = "";
            //    //DropDownList1.Items.Add("الكل");

            //    con.Close();



            //}

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (DropDownList1.SelectedItem.Text == "الكل")
            //    i = "0";
            //else
            //    i = DropDownList1.SelectedValue;
            DataSet dt = GetDataresult();
            DataSet dt1 = GetDataresult1();

            GridView1.DataSource = dt.Tables[0];
            GridView2.DataSource = dt1.Tables[0];

            GridView1.AllowPaging = true;
            GridView2.AllowPaging = true;

            //GridView1.AutoGenerateColumns = true;
            GridView1.DataBind();
            GridView2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment; filename=" + "GridViewExport.xls");
            Response.ContentType = "application/excel";
            System.IO.StringWriter sw = new System.IO.StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}