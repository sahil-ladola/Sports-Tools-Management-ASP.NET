using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace SportsToolsManagement
{
    public partial class checkoutdetails : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                BindNames();
            }
            if(Session["searchemail"] == null)
            {
                Response.Redirect("Check-Out.aspx");
            }
        }
        public void BindNames()
        {
            con.Open();
            string query = "select tid , t_name from tools";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            ToolsName.DataSource = data;
            ToolsName.DataTextField = "t_name";
            ToolsName.DataValueField = "tid";
            ToolsName.DataBind();
            ListItem selectItem = new ListItem("Select Tool", "-1");
            selectItem.Selected = true;
            ToolsName.Items.Insert(0, selectItem);
            con.Close();
        }

        protected void ToolsName_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string query = "select remain_quantity from tools where tid = '" + ToolsName.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                quantity.Text = dr["remain_quantity"].ToString();
            }
            con.Close();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (ToolsName.SelectedValue == "-1")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Please select tool')</script>");
            }
            else
            {
                if (Convert.ToInt32(quantity.Text) < Convert.ToInt32(txtneedquan.Text))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Sorry!!!!!Currently out of stock......')</script>");
                }
                else
                {
                    con.Open();
                    string query = "INSERT INTO [dbo].[transaction]([tid],[email],[quantity],[status]) values('" + ToolsName.SelectedValue + "','" + Session["searchemail"] + "','" + txtneedquan.Text + "','0')";
                    SqlCommand ins = new SqlCommand(query, con);
                    if (ins.ExecuteNonQuery() != 0)
                    {
                        string select = "select * from tools where tid = '" + ToolsName.SelectedValue + "'";
                        SqlCommand cmd = new SqlCommand(select, con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read() == true)
                        {
                            int dbremain = Convert.ToInt32(dr["remain_quantity"]);
                            int dbrent = Convert.ToInt32(dr["on_rent"]);
                            dbrent = dbrent + Convert.ToInt32(txtneedquan.Text);
                            dbremain = dbremain - Convert.ToInt32(txtneedquan.Text);
                            dr.Close();
                            string update = "update tools set remain_quantity = '" + dbremain + "' , on_rent = '" + dbrent + "' where tid = '" + ToolsName.SelectedValue + "'";
                            SqlCommand up = new SqlCommand(update, con);
                            if (up.ExecuteNonQuery() != 0)
                            {
                                Session.Remove("searchemail");
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Checkout successful')</script>");
                                Response.Redirect("dashboard.aspx");
                            }
                        }
                    }
                    con.Close();
                }
            }
        }
    }
}