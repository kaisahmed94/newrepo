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
    public partial class App_users_per_branch_W : System.Web.UI.Page
    {

        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStr143_w"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("RP_Cus_Active", con);
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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStr143_w"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("RP_v2_custperbran", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
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
          //  CheckBox1.Checked = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (CheckBox1.Checked==true)
            {
               
                DataSet dt1 = GetDataresult1();
                GridView1.DataSource = dt1.Tables[0];
                //GridView1.Columns[0].FooterText = dt.Tables[0].Rows[0]["sum"].ToString();
            //    int xx = Convert.ToInt32(dt1.Tables[0].Compute("min([sum])", string.Empty));
                //GridView1.Columns[0].FooterText = x.ToString();
                //GridView1.Columns[0].col = 'ss';
                GridView1.DataBind();
                Button2.Visible = true;
            }
            else
            { 
            DataSet dt = GetDataresult();
            GridView1.DataSource = dt.Tables[0];
            //GridView1.Columns[0].FooterText = dt.Tables[0].Rows[0]["sum"].ToString();
          int x=  Convert.ToInt32(dt.Tables[0].Compute("min([sum])", string.Empty));
            //GridView1.Columns[0].FooterText = x.ToString();
            //GridView1.Columns[0].col = 'ss';
            GridView1.DataBind();
            Button2.Visible = true;
            }
        }

        //int sum = 0;
        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{

        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        Label salary = (Label)e.Row.FindControl("Label3");//take lable id
        //        sum += int.Parse(salary.Text);
        //        lblsum.Text = sum.ToString();
        //    }
        //}

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

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
        }

        //int totalvalue = 0;

        //protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        //{
        //    //Check if the current row is datarow or not
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        //Add the value of column
        //        totalvalue += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SUM"));
        //    }
        //    if (e.Row.RowType == DataControlRowType.Footer)
        //    {
        //        //Find the control label in footer 
        //        Label lblamount = (Label)e.Row.FindControl("lblTotalValue");
        //        //Assign the total value to footer label control
        //        lblamount.Text = "Total Value is : " + totalvalue.ToString();
        //    }
        //}
    }
}