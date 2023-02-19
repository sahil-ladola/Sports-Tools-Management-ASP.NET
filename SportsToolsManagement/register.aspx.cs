using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SportsToolsManagement
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
            if(!IsPostBack)
            {
                ListItem selectItem = new ListItem("Select gender", "-1");
                selectItem.Selected = true;
                gender.Items.Insert(0, selectItem);
            }
            if (IsPostBack)
            {
                if (ViewState["fname"] != null)
                {
                    txtFname.Text = ViewState["fname"].ToString();
                }
                if (ViewState["lname"] != null)
                {
                    txtLname.Text = ViewState["lname"].ToString();
                }
                if (ViewState["address"] != null)
                {
                    txtAddress.Text = ViewState["address"].ToString();
                }
                if (ViewState["landmark"] != null)
                {
                    txtLandmark.Text = ViewState["landmark"].ToString();
                }
                if (ViewState["area"] != null)
                {
                    txtArea.Text = ViewState["area"].ToString();
                }
                if (ViewState["postalcode"] != null)
                {
                    txtPostalCode.Text = ViewState["postalcode"].ToString();
                }
                if (ViewState["contact"] != null)
                {
                    txtMobileNum.Text = ViewState["contact"].ToString();
                }
                if (ViewState["email"] != null)
                {
                    txtEmail.Text = ViewState["email"].ToString();
                }
                if (ViewState["gender"] != null)
                {
                    gender.SelectedValue = ViewState["gender"].ToString();
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            string select = "select * from customer where email='" + txtEmail.Text + "'";
            SqlCommand cmd = new SqlCommand(select, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (gender.SelectedValue == "-1")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Select Gender!!!!')</script>");
            }
            else
            {
                if (dr.Read() == true)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('User already exists')</script>");
                }
                else
                {
                    dr.Close();


                    string query = "insert into customer (fname,lname,address,landmark,area,postalcode,gender,contactno,email) values('" + txtFname.Text + "','" + txtLname.Text + "','" + txtAddress.Text + "','" + txtLandmark.Text + "','" + txtArea.Text + "','" + txtPostalCode.Text + "','" + gender.SelectedValue + "','" + txtMobileNum.Text + "','" + txtEmail.Text + "')";
                    SqlCommand ins = new SqlCommand(query, con);
                    if (ins.ExecuteNonQuery() != 0)
                    {
                        con.Close();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Registered successfully!!!!!')</script>");
                        Response.Redirect("dashboard.aspx");
                    }
                    else
                    {
                        ViewState["gender"] = gender.SelectedValue;
                        ViewState["email"] = txtEmail.Text;
                        ViewState["contact"] = txtMobileNum.Text;
                        ViewState["postalcode"] = txtPostalCode.Text;
                        ViewState["area"] = txtArea.Text;
                        ViewState["landmark"] = txtLandmark.Text; ;
                        ViewState["address"] = txtAddress.Text;
                        ViewState["lname"] = txtLname.Text;
                        ViewState["fname"] = txtFname.Text;

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Something went wrong , Try again!!!!!')</script>");
                    }
                }
            }
        }

        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}