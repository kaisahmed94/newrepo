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

    public partial class Master_allow_bayeElct : System.Web.UI.Page
    {
        string i;
        int x;
        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["logs95"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("KA_master_allow_bayelict", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@i", x);
                cmd.Parameters.AddWithValue("@x", i);

                cmd.Parameters.AddWithValue("@DateFrom", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);

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
            //GridView1.DataBind();

            //if (!this.IsPostBack)
            //{
            //    string constr = ConfigurationManager.ConnectionStrings["DBNCBConnectionString"].ToString(); // connection string
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
            //    DropDownList1.SelectedItem.Text = "";

            //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

   

        protected void Button1_Click(object sender, EventArgs e)
        {
            x = 1;

            Button2.Visible = true;
            Button3.Visible = true;

            if (DropDownList1.SelectedValue.ToString()=="32")
                i = "true"


               ;
            else
                i = "false";
            DataSet dt = GetDataresult();
            if (dt.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dt.Tables[0];
                GridView1.AllowPaging = true;
                GridView1.DataBind();
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
                Button2.Visible = false;
                Button3.Visible = false;
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            x = 2;

            if (DropDownList1.SelectedValue.ToString() == "32")
                i = "true"


               ;
            else
                i = "false";
            DataSet dt = GetDataresult();
            GridView1.DataSource = dt.Tables[0];
            GridView1.AllowPaging = true;

            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            try
            {
                if (x==1)
                { 
                GridView1.PageIndex = e.NewPageIndex;
                Button1_Click(sender, e);
                }
                else
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
    }
}