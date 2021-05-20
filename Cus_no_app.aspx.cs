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
    public partial class Cus_no_app : System.Web.UI.Page
    {
        int i;
        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NCBMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {


                SqlCommand cmd = new SqlCommand("KA_Cus_no_app", con);
                cmd.CommandType = CommandType.StoredProcedure;


                //cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
                cmd.Parameters.AddWithValue("@i", i);

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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            i = 1;
            DataSet dt = GetDataresult();

            GridView1.DataSource = dt.Tables[0];
            // GridView1.Columns.Clear();
            GridView1.DataBind();
            Button2.Visible = true;
            Button3.Visible = true;
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            i = 2;
            DataSet dt = GetDataresult();

            GridView1.DataSource = dt.Tables[0];
            // GridView1.Columns.Clear();
            GridView1.DataBind();
            Button2.Visible = true;
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           

            if (i==1)


            {
                GridView1.PageIndex = e.NewPageIndex;
                Button3_Click(sender, e);
            }
           else

                GridView1.PageIndex = e.NewPageIndex;
            Button1_Click(sender, e);
        }
        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            //GridView1.PageIndex = e.NewPageIndex;
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //GridView1.PageIndex = e.NewPageIndex;
        }
    }
}