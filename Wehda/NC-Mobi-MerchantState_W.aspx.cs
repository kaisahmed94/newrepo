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
    public partial class NC_Mobi_MerchantState_W : System.Web.UI.Page
    {
        int i;
        string s;

        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MobiCashConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("Ka_Merchant_status", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@i", i);
                cmd.Parameters.AddWithValue("@s", DropDownList1.SelectedValue);

                //cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            i = 1;
            //s = DropDownList1.SelectedValue.ToString();

            DataSet dt = GetDataresult();
            GridView1.DataSource = dt.Tables[0];
            GridView1.AllowPaging = true;

            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button3.Visible = true;
            DropDownList1.Visible = true;
                s = "0";
           
            
                i = 0;

            DataSet dt = GetDataresult();
            if (dt.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;
                GridView1.DataBind();
                Button2.Visible = true;
                // Button3.Visible = true;
                lblnull.Visible = false;
                lbl.Visible = true;
            }
            else
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;
                GridView1.DataBind();
                lblnull.Visible = true;
                Button2.Visible = false;
                // Button3.Visible = false;
                                lbl.Visible = true;

            }
        }

        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {

          

                    GridView1.PageIndex = e.NewPageIndex;
                    Button3_Click(sender, e);


                    //   GridView1.DataBind();
              
                    //Button1_Click(sender, e);


              

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}