using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ReportsProject
{
    public partial class MT_Success_W : System.Web.UI.Page
    {

        string i;
        int x;

        private DataSet GetDataresult1()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAHDAMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("KA_MTranfer_NCB_count", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@i", i);
                cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);

                cmd.Parameters.AddWithValue("@pid", DropDownList3.SelectedValue);
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

        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAHDAMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("KA_MTranfer_NCB", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@br", i);

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
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["WAHDAMittSystemCoreDBConnectionString"].ToString(); // connection string
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand com = new SqlCommand("select * FROM [DBWahda].[dbo].[LOGINUSER]", con); // table name 
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset

                DropDownList1.DataTextField = ds.Tables[0].Columns["BRANCHNAME"].ToString(); // text field name of table dispalyed in dropdown
                DropDownList1.DataValueField = ds.Tables[0].Columns["OLDBRANCHID"].ToString();
                // to retrive specific  textfield name 
                DropDownList1.DataSource = ds.Tables[0];
                //assigning datasource to the dropdownlist
                DropDownList1.DataBind();
                DropDownList1.Items.Add("الكل");
                con.Close();
                //binding dropdownlist
                //DropDownList1.SelectedItem.Text =null ;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            x = 2;
            if (DropDownList1.SelectedItem.Text == "الكل")
                i = "0";
            else
                i = DropDownList1.SelectedValue;

            
                DataSet dt = GetDataresult();
                if (dt.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = dt.Tables[0];
                    GridView1.AllowPaging = true;
                    GridView1.DataBind();
                    Button1.Visible = true;
                    Button2.Visible = true;
                    Button3.Visible = true;
                    lblnull.Visible = false;
                }
                else
                {
                    GridView1.DataSource = dt.Tables[0];
                    GridView1.AllowPaging = true;
                    GridView1.DataBind();
                    lblnull.Visible = true;
                    Button1.Visible = false;
                    Button2.Visible = false;
                    Button3.Visible = false;
                }
            }
          
        


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            x = 1;

            if (DropDownList1.SelectedItem.Text == "الكل")
                i = "0";
            else
                i = DropDownList1.SelectedValue;

            
                DataSet dt = GetDataresult1();
                if (dt.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = dt.Tables[0];
                    GridView1.AllowPaging = true;
                    GridView1.DataBind();
                    Button1.Visible = true;
                    Button2.Visible = true;
                    lblnull.Visible = false;
                }
                else
                {
                    GridView1.DataSource = dt.Tables[0];
                    GridView1.AllowPaging = true;
                    GridView1.DataBind();
                    lblnull.Visible = true;
                    Button1.Visible = false;
                    Button2.Visible = false;
                }
            }
           

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
               
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            //GridView1.PageIndex = e.NewPageIndex;
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {


            if (x == 1)
            {
                GridView1.PageIndex = e.NewPageIndex;
                Button3_Click(sender, e);
            }
            else
            {
                GridView1.PageIndex = e.NewPageIndex;
                Button1_Click(sender, e);
            }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}