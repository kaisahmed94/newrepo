using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Http;
using Newtonsoft.Json;
using System.Net;
using System.Net.Http.Headers;
using Newtonsoft.Json.Linq;
//using ServiceStack;
using System.Threading.Tasks;


namespace ReportsProject
{
    public partial class Login : System.Web.UI.Page
    {
        StringBuilder st = new StringBuilder();
        string user, pass;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["PageName"] == null)
            {
                Session["PageName"] = "NCBMAIN.aspx";
            }

            Session["PageId"] = ConfigurationManager.AppSettings["PageId_UserManagement"].ToString();

            if (Session["username"] != null)
            {
                //Response.Redirect(Session["PageName"].ToString());

                if (this.Request.QueryString["ReturnUrl"] != null)
                {
                    this.Response.Redirect(Request.QueryString["ReturnUrl"].ToString());
                }
                else
                {
                    this.Response.Redirect("NCBMAIN.aspx");
                }

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            user = Request.Form["un"];
            pass = Request.Form["pa"];
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@username",user);
            //cmd.Parameters.AddWithValue("@password",pass);
            //cmd.Parameters.AddWithValue("@web_id", 11);

            //con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            if (user == "" || pass == "")
            {
                st.Append("<div class='alert alert-danger ' role='alert'> يجب تعبئة جميع الحقول </div>");
                error.Controls.Add(new Literal { Text = st.ToString() });
            }


            else
            {
                Session["AuthState"] = "";
                LoginDomainAuth(ConfigurationManager.AppSettings["DomainAuthAPI_BaseURL"], user, pass);

                string x = Session["AuthState"].ToString();
            }

            }
            public Boolean checkUserPermissions(int userid, int control_id, int web_id)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["UserManagementConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("cheak_control", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@control_id", control_id);
            cmd.Parameters.AddWithValue("@web_id", web_id);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                con.Close();
                return true;
            }
            else
            {
                con.Close();
                return false;
            }

        }

        public async void LoginDomainAuth(string baseString, string username, string password)
        {
            try
            {
                using (var client = new HttpClient())
                {
                    client.BaseAddress = new Uri(baseString);
                    client.DefaultRequestHeaders.Accept.Clear();
                    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                    //String requestString = baseString + "auter?username=" + username + "&password=" + password + "&web_id=" + ConfigurationManager.AppSettings["PageId_UserManagement"];
                    String requestString = baseString + "auter";
                    //String queryString = "{\"username\": \"m.araab\", \"password\": \"MM@#$659404\",\"web_id\":\"16\"}";


                    var values = new Dictionary<string, string>
                    {
                        { "username", username },
                        { "password", password },
                        { "web_id", ConfigurationManager.AppSettings["PageId_UserManagement"] }
                    };

                    var queryString = new FormUrlEncodedContent(values);

                    HttpResponseMessage response = await client.PostAsync(requestString, queryString).ConfigureAwait(false);

                    if (response.IsSuccessStatusCode)
                    {
                        var result = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
                        string parsedJson = JValue.Parse(result).ToString();
                        Session["AuthState"] = parsedJson;

                    }
                    else { Session["AuthState"] = "10"; }
                }

                //Context.ApplicationInstance.CompleteRequest();
                switch (Session["AuthState"].ToString())
                {
                    case ("10"): st.Append("<div class='alert alert-danger ' role='alert'> Couldn't access domain </div>"); break;
                    case ("1"):
                        Session["username"] = username;
                        Session["password"] = password;


                        //using (var client_bank = new HttpClient())
                        //{

                        //    //String queryString = baseString + "auter?username=" + username + "&password=" + password + "&web_id=" + ConfigurationManager.AppSettings["PageId_UserManagement"];

                        //    client_bank.BaseAddress = new Uri(baseString);
                        //    client_bank.DefaultRequestHeaders.Accept.Clear();
                        //    client_bank.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                        //    HttpResponseMessage response_bank = await client_bank.GetAsync("getpr?username=" + username + "&web_id=" + ConfigurationManager.AppSettings["PageId_UserManagement"]);
                        //    if (response_bank.IsSuccessStatusCode)
                        //    {

                        //        DataTable dt = new DataTable();
                        //        object ob = new object();
                        //        string s = await response_bank.Content.ReadAsStringAsync();

                        //        string result1 = await response_bank.Content.ReadAsStringAsync();
                        //        dt = (DataTable)JsonConvert.DeserializeObject(s, (typeof(DataTable)));

                        //        foreach (DataRow row in dt.Rows)
                        //        {
                        //            string x = (string)row["control_name"];
                        //            Session[x] = "True";
                        //        }
                        //        //Session["ViewBalanceButton"] = "True";

                        //    }

                        //}



                        if (this.Request.QueryString["ReturnUrl"] != null)
                        {
                            //this.Response.Redirect(Request.QueryString["ReturnUrl"].ToString());
                            //if (Session["PageName"].ToString() == "PaymentService.aspx" || Session["PageName"].ToString() == "TraceBankStatement.aspx" || Session["PageName"].ToString() == "VouchersTracking.aspx")
                            //{
                            //    //con.Close();
                            //    this.Response.Redirect("TraceServices.aspx");
                            //}
                            //else
                            //{
                            //con.Close();
                            this.Response.Redirect(Request.QueryString["ReturnUrl"].ToString());
                            //this.Response.Redirect("TraceServices.aspx");
                            //}
                        }
                        else
                        {
                            //con.Close();
                            this.Response.Redirect("NCBMAIN.aspx");
                        }
                        break;
                    case ("2"): st.Append("<div class='alert alert-danger ' role='alert'> هذا المستخدم ليس لديه صلاحية وصول الى الواجهة </div>"); break;
                    case ("3"): st.Append("<div class='alert alert-danger ' role='alert'>  بيانات دخول غير صحيحة، الرجاء استخدام بيانات الدخول الى جهاز الكمبيوتر (domain)  </div>"); break;
                    default: st.Append("<div class='alert alert-danger ' role='alert'> حدث خطأ </div>"); break;
                }
                error.Controls.Add(new Literal { Text = st.ToString() });
            }
            catch
            {
                st.Append("<div class='alert alert-danger ' role='alert'> Couldn't access domain </div>");
                error.Controls.Add(new Literal { Text = st.ToString() });
            }

        }

    }
}