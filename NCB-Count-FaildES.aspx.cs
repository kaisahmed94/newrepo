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
    public partial class NCB_Count_FaildES : System.Web.UI.Page
    {
        int i;
        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NCBMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {
                string x;
              //  x = DropDownList3.SelectedItem.Text;
                //x = x.Insert(0, "'");
                //x = x.Insert(x.Length, "'");

                SqlCommand cmd = new SqlCommand("ka_ES_faield_branch", con);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@s", x);
                //cmd.Parameters.AddWithValue("@i", i);


                //cmd.Parameters.AddWithValue("@x", DropDownList1.SelectedValue);
                //cmd.Parameters.AddWithValue("@y", DropDownList2.SelectedValue);

                cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@pid", dro);
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
            //if (!this.IsPostBack)
            //{

            //    string constr = ConfigurationManager.ConnectionStrings["logs"].ToString(); // connection string
            //    SqlConnection con = new SqlConnection(constr);
            //    con.Open();

            //    SqlCommand com = new SqlCommand(" select *   FROM [NCBMittSystemCoreDBLogs].[dbo].[BANK_REPLAY] ", con); // table name 
            //    SqlDataAdapter da = new SqlDataAdapter(com);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);  // fill dataset

            //    DropDownList3.DataTextField = ds.Tables[0].Columns["desc"].ToString(); // text field name of table dispalyed in dropdown
            //    DropDownList3.DataValueField = ds.Tables[0].Columns["replay"].ToString();             // to retrive specific  textfield name 
            //    DropDownList3.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            //    DropDownList3.DataBind();  //binding dropdownlist
            //                               //  DropDownList1.SelectedItem.Text = "";

            //    con.Close();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (DropDownList3.SelectedItem.Text == "")
            //{
            //    i = 0;
            //}
            //else
            //    i = 1;
            DataSet dt = GetDataresult();

            GridView1.DataSource = dt.Tables[0];
            // GridView1.Columns.Clear();
            GridView1.DataBind();
            Button2.Visible = true;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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
        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            try
            {

                GridView1.PageIndex = e.NewPageIndex;
                Button1_Click(sender, e);


                //   GridView1.DataBind();
            }
            catch (Exception ex)
            {
                //catch exception
            }

        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {

        }
    }
}