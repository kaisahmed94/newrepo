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
    public partial class Cus_Not_Act_withContractNUm_W : System.Web.UI.Page
    {
        int i;
           string x;
        int br;
        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStr143_w"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("RP_Cus_NotActWithContractNum", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@i", i);
                cmd.Parameters.AddWithValue("@phone", x);
              //cmd.Parameters.AddWithValue("@br", br);

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
            //    string constr = ConfigurationManager.ConnectionStrings["ConnectionStr143_w"].ToString(); // connection string
            //    SqlConnection con = new SqlConnection(constr);
            //    con.Open();

            //    SqlCommand com = new SqlCommand("select *from LOGINUSER", con); // table name 
            //    SqlDataAdapter da = new SqlDataAdapter(com);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);  // fill dataset
            //    DropDownList1.DataTextField = ds.Tables[0].Columns["BRANCHNAME"].ToString(); // text field name of table dispalyed in dropdown
            //    DropDownList1.DataValueField = ds.Tables[0].Columns["PREFIX"].ToString();             // to retrive specific  textfield name 
            //    DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            //    DropDownList1.DataBind();  //binding dropdownlist
            //    DropDownList1.Items.Add("الكل");
            //    con.Close();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (DropDownList1.SelectedItem.Text == "الكل")
            //    i = "0";
            //else
            //    i = DropDownList1.SelectedValue;

            if (DropDownList1.SelectedValue == "1")

            {
                TextBox1.Visible = false;

                Button4.Visible = false;
                i = 1;
                x = "0";
                DataSet dt = GetDataresult();
                GridView1.DataSource = dt.Tables[0];
                //string x = GridView1.Columns[0].ToString();
                //GridView1.Columns[0].FooterText = dt.Tables[0].Rows[0]["sum"].ToString();
                //int x = Convert.ToInt32(dt.Tables[0].Compute("sum([sum])", string.Empty));
                //GridView1.Columns[1].FooterText = x.ToString();
                //System.Web.UI.WebControls.Label label1 = (System.Web.UI.WebControls.Label)GridView1.FooterRow.FindControl("Labelsum");
                //label1.Text = x.ToString(); 
                //GridView1.Columns[0].col = 'ss';
                GridView1.DataBind();
                Button2.Visible = true;
                //Button3.Visible = true;
            }
            else if (DropDownList1.SelectedValue == "2")
            {
                TextBox1.Visible = false;

                Button4.Visible = false;
                Button3_Click(sender, e);

            }

            else if (DropDownList1.SelectedValue == "3")
            {
                TextBox1.Visible = true;

                Button4.Visible = true;            }
           

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            i = 2;
            x = "0";
            DataSet dt = GetDataresult();
            GridView1.DataSource = dt.Tables[0];
           
            GridView1.DataBind();
            Button2.Visible = true;
            //Button4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            i = 3;
            x = TextBox1.Text;
            DataSet dt = GetDataresult();
            GridView1.DataSource = dt.Tables[0];
            GridView1.DataBind();
            Button2.Visible = true;

        }
        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            try
            {
                if (DropDownList1.SelectedValue=="1")

                {
                    GridView1.PageIndex = e.NewPageIndex;
                    Button1_Click(sender, e);
                }
                else if (DropDownList1.SelectedValue == "1")
                {
                    GridView1.PageIndex = e.NewPageIndex;
                    Button3_Click(sender, e);
                }

                else if (DropDownList1.SelectedValue == "1")
                {
                    GridView1.PageIndex = e.NewPageIndex;
                    Button4_Click(sender, e);
                }

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}