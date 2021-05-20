using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportsProject
{
    public partial class NCB_Count_SucssesCards_W : System.Web.UI.Page
    {

        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WAHDAMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("KA_CARDS_SUM", con);
                cmd.CommandType = CommandType.StoredProcedure;

             //   cmd.Parameters.AddWithValue("@i", 0);
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
        //private DataSet GetDataresult124()
        //{

        //    DataSet resultstable = new DataSet();
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ConnectionString);
        //    try
        //    {

        //        SqlCommand cmd = new SqlCommand("KA_CARDS_SUM_I", con);
        //        cmd.CommandType = CommandType.StoredProcedure;

        //        //   cmd.Parameters.AddWithValue("@i", 0);
        //        cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);

        //        cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
        //        //cmd.Parameters.AddWithValue("@i", i);

        //        //cmd.Parameters.AddWithValue("@cusno", TextBox3.Text);
        //        SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
        //        Adapter.Fill(resultstable);

        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //    finally
        //    {
        //        if (con != null)
        //        {
        //            con.Close();
        //        }
        //    }
        //    return resultstable;
        //}

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

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            //if (TextBox1.Text - DateTime.Now() > 3)
            //      System.TimeSpan variance = DateTime.Now.Subtract(TextBox1.Text);
            DateTime x;
            DateTime x1;
            x = DateTime.Now;
            //  x1 = (x - Convert.ToDateTime(TextBox1.Text)).TotalDays;

            //  Dim days As Long = DateDiff(DateInterval.Day, date1, date2)
            //  long days= DateDiff(DateInterval.Day, date1, date2)
            //  System.TimeSpan diffResult 
            //TextBox1= Convert.ToDateTime(dateString);
            //string y= TextBox1.Text.ToString - DateTime.Now.ToString();
            //Convert.ToDateTime(TextBox1 = Convert.ToDateTime(dateString);, CultureInfo.InvariantCulture);
            //x1= diff  Convert.ToDateTime(TextBox1, CultureInfo.InvariantCulture)-x;


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
                Button3_Click(sender, e);


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

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}