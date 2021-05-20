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
    public partial class Merchants_not_benefiting_from_service : System.Web.UI.Page
    {

        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobiMalPayConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("KA_Merchants_not_benefiting_from_service", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@i", i);

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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobiMalPayConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("KA_Merchants_not_benefiting_from_service_count", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@i", i);

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
        protected void Button3_Click(object sender, EventArgs e)
        {
            DataSet dt = GetDataresult1();

            if (dt.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;
                GridView1.DataBind();
                Button2.Visible = true;
                Button1.Visible = true;
                // Button3.Visible = true;
                lblnull.Visible = false;
            }
            else
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;
                GridView1.DataBind();
                lblnull.Visible = true;
                Button2.Visible = false;
                Button1.Visible = false;
                // Button3.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataSet dt = GetDataresult();

            if (dt.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;
                GridView1.DataBind();
                Button2.Visible = true;
                // Button3.Visible = true;
                lblnull.Visible = false;
            }
            else
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;
                GridView1.DataBind();
                lblnull.Visible = true;
                Button2.Visible = false;
                // Button3.Visible = false;
            }

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
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Button1_Click(sender, e);
        }
    }
}