using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SportsToolsManagement
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (ViewState["Username"] != null)
                {
                    txtUsername.Text = ViewState["Username"].ToString();
                }
                if (ViewState["Password"] != null)
                {
                    txtPassword.Text = ViewState["Password"].ToString();
                }
            }
            if (!IsPostBack)
            {
                if (Request.Cookies["Username"] != null && Request.Cookies["Password"] != null)
                {
                    txtUsername.Text = Request.Cookies["Username"].Value;
                    txtPassword.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ViewState["Username"] = txtUsername.Text;
            ViewState["Password"] = txtPassword.Text;
            con.Open();
            string login = "select * from login where username ='" + txtUsername.Text + "'";
            SqlCommand cmd = new SqlCommand(login, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["password"].ToString() == txtPassword.Text)
                {
                    if (chkRememberMe.Checked)
                    {
                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(30);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
                    }
                    else
                    {
                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Response.Cookies["Username"].Value = txtUsername.Text.Trim();
                    Response.Cookies["Password"].Value = txtPassword.Text.Trim();
                    Session["login"] = "login";
                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Invalid Credential!')</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Invalid Credential!')</script>");
            }
        }
    }
}