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
    public partial class app_users_active_per_branchs_W : System.Web.UI.Page
    {
        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStr143_w"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("RP_Cus_APP_Active", con);
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string x;

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet dt = GetDataresult();

            GridView1.DataSource = dt.Tables[0];
            GridView1.Columns.Clear();
            //GridView1.Columns.Add("dsd");

            //string x = GridView1.Columns[0].ToString();
            //GridView1.Columns[0].FooterText = dt.Tables[0].Rows[0]["sum"].ToString();
            //int x = Convert.ToInt32(dt.Tables[0].Compute("sum([sum])", string.Empty));
            // GridView1.Columns[1].FooterText = x.ToString();
            //System.Web.UI.WebControls.Label label1 = (System.Web.UI.WebControls.Label)GridView1.FooterRow.FindControl("Labelsum");
            //label1.Text = x.ToString(); 
            //GridView1.Columns[0].col = 'ss';
            GridView1.DataBind();
            Button2.Visible = true;
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


        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.Footer)
        //    {
        //        System.Web.UI.WebControls.Label lbl = (Label)e.Row.FindControl("lblTotal");
        //        lbl.Text = GridView1.ToString("c");
        //    }
        //}
    }
}


