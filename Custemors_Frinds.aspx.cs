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
    public partial class Custemors_Frinds : System.Web.UI.Page
    {
        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ConnectionString);
            try
            {


                SqlCommand cmd = new SqlCommand("KA_Frinds", con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@x", TextBox1.Text);
               // cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@i", i);

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet dt = GetDataresult();
            if (dt.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;

                GridView1.DataBind();
                //Button1.Visible = true;
                lblnull.Visible = false;
                Button2.Visible = true;
            }
            else
            {
                lblnull.Visible = true;
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;

                GridView1.DataBind();
                //Button1.Visible = false;

                Button2.Visible = false;
            }
         
        }
    }
}