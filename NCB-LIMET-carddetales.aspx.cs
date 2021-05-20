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
    public partial class NCB_LIMET_carddetales : System.Web.UI.Page
    {

        private DataSet GetDataresult()
        {

            DataSet resultstable = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NCBMittSystemCoreDBConnectionString"].ConnectionString);
            try
            {

                SqlCommand cmd = new SqlCommand("ka_limits_cards_detaisl", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
             //   cmd.Parameters.AddWithValue("@DateTo", TextBox2.Text);
              //  cmd.Parameters.AddWithValue("@i", i);

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
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["MobiMalPayConnectionStr"].ToString(); // connection string
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand com = new SqlCommand("select * from Classifications  where viewstate=1", con); // table name 
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset
                DropDownList1.DataTextField = ds.Tables[0].Columns["Classification_name"].ToString(); // text field name of table dispalyed in dropdown
                DropDownList1.DataValueField = ds.Tables[0].Columns["Classification_ID"].ToString();             // to retrive specific  textfield name 
                DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                DropDownList1.DataBind();  //binding dropdownlist
                                           //    DropDownList1.SelectedItem.Text = "";
                con.Close();
            }
        }

            protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {

            }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {


         


            
                GridView1.PageIndex = e.NewPageIndex;
                Button1_Click(sender, e);
            
        
        }
        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            //GridView1.PageIndex = e.NewPageIndex;
        }
        protected void Button1_Click(object sender, EventArgs e)
            {
            DataSet dt = GetDataresult();
            GridView1.DataSource = dt.Tables[0];
            GridView1.AllowPaging = true;

            GridView1.DataBind();
        }
        }
    } 