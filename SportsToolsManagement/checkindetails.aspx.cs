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
    public partial class checkindetails : System.Web.UI.Page
    {
        //public List<int> quantity = new List<int>();
        //public List<string> toolsname = new List<string>();
        //public List<int> tid = new List<int>();
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
            if (Session["cinsearchemail"] == null)
            {
                Response.Redirect("Check-in.aspx");
            }
            if(!IsPostBack)
            {
                Data_load();
            }
            //getquan();
            //gettools();
        }
        //public void getquan()
        //{
        //    con.Open();
        //    string query = "select quantity from [transaction] where [email] = '" + Session["cinsearchemail"] + "'";
        //    SqlCommand cmd = new SqlCommand(query, con);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        quantity.Add(Convert.ToInt32(dr["quantity"]));
        //    }
        //    con.Close();
        //}
        //public void gettools()
        //{
        //    con.Open();
        //    string tools = "select tid,trn_id from [transaction] where [email] = '" + Session["cinsearchemail"] + "'";
        //    SqlCommand cmd = new SqlCommand(tools, con);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        tid.Add(Convert.ToInt32(dr["trn_id"]));
        //        string fetch = "select t_name from tools where tid = '"+dr["tid"]+"'";
        //        SqlCommand sc = new SqlCommand(fetch, con);
        //        SqlDataReader sdr = sc.ExecuteReader();
        //        while(sdr.Read())
        //        {
        //            toolsname.Add((sdr["t_name"]).ToString());
        //        }
        //    }
        //    con.Close();
        //}

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{

        //}
        void Data_load()
        {
            string query = "select [transaction].trn_id , [transaction].email , [transaction].quantity , tools.t_name from [transaction] join tools on [transaction].tid = tools.tid where [transaction].email ='" + Session["cinsearchemail"] + "' and [transaction].status = '0'";
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label dltid = (Label)GridView1.Rows[e.RowIndex].FindControl("id");
            Label toolname = (Label)GridView1.Rows[e.RowIndex].FindControl("Label3");
            Label quntityreturn = (Label)GridView1.Rows[e.RowIndex].FindControl("Label7");
            con.Open();
            string dltquery = "update [transaction] set quantity = '0' , status = '1' where trn_id='" + dltid.Text + "'";
            SqlCommand cmd = new SqlCommand(dltquery, con);
            if (cmd.ExecuteNonQuery() != 0)
            {
                string select = "select * from tools where t_name = '" + toolname.Text + "'";
                SqlCommand chng = new SqlCommand(select, con);
                SqlDataReader dr = chng.ExecuteReader();
                if (dr.Read() == true)
                {
                    int dbremain = Convert.ToInt32(dr["remain_quantity"]);
                    int dbrent = Convert.ToInt32(dr["on_rent"]);
                    dbrent = dbrent - Convert.ToInt32(quntityreturn.Text);
                    dbremain = dbremain + Convert.ToInt32(quntityreturn.Text);
                    dr.Close();
                    string update = "update tools set remain_quantity = '" + dbremain + "' , on_rent = '" + dbrent + "' where t_name = '" + toolname.Text + "'";
                    SqlCommand up = new SqlCommand(update, con);
                }
            }
            con.Close();
            //GridView1.EditIndex = -1;
            Data_load();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Data_load();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Data_load();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("Label8");
            Label toolname = (Label)GridView1.Rows[e.RowIndex].FindControl("Label4");
            TextBox quntityreturn = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtreturn");
            Label quntityhave = (Label)GridView1.Rows[e.RowIndex].FindControl("Label6");
            if (Convert.ToInt32(quntityhave) < Convert.ToInt32(quntityreturn))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Please !!!!! Check return quntity......')</script>");
            }
            else
            {
                if (Convert.ToInt32(quntityhave) == Convert.ToInt32(quntityreturn))
                {
                    con.Open();
                    string upquery = "update [transaction] set quantity = '0' , status = '1' where trn_id='"+ id.Text + "'";
                    SqlCommand cmd = new SqlCommand(upquery, con);
                    if (cmd.ExecuteNonQuery() != 0)
                    {
                        string select = "select * from tools where t_name = '" + toolname.Text + "'";
                        SqlCommand chng = new SqlCommand(select, con);
                        SqlDataReader dr = chng.ExecuteReader();
                        if (dr.Read() == true)
                        {
                            int dbremain = Convert.ToInt32(dr["remain_quantity"]);
                            int dbrent = Convert.ToInt32(dr["on_rent"]);
                            dbrent = dbrent - Convert.ToInt32(quntityreturn.Text);
                            dbremain = dbremain + Convert.ToInt32(quntityreturn.Text);
                            dr.Close();
                            string update = "update tools set remain_quantity = '" + dbremain + "' , on_rent = '" + dbrent + "' where t_name = '" + toolname.Text + "'";
                            SqlCommand up = new SqlCommand(update, con);
                        }
                    }
                    con.Close();
                    GridView1.EditIndex = -1;
                    Data_load();
                }
                else
                {
                    con.Open();
                    string upquery = "update [transaction] set quantity = '"+ quntityreturn .Text + "' where trn_id='" + id.Text + "'";
                    SqlCommand cmd = new SqlCommand(upquery, con);
                    if (cmd.ExecuteNonQuery() != 0)
                    {
                        string select = "select * from tools where t_name = '" + toolname.Text + "'";
                        SqlCommand chng = new SqlCommand(select, con);
                        SqlDataReader dr = chng.ExecuteReader();
                        if (dr.Read() == true)
                        {
                            int dbremain = Convert.ToInt32(dr["remain_quantity"]);
                            int dbrent = Convert.ToInt32(dr["on_rent"]);
                            dbrent = dbrent - Convert.ToInt32(quntityreturn.Text);
                            dbremain = dbremain + Convert.ToInt32(quntityreturn.Text);
                            dr.Close();
                            string update = "update tools set remain_quantity = '" + dbremain + "' , on_rent = '" + dbrent + "' where t_name = '" + toolname.Text + "'";
                            SqlCommand up = new SqlCommand(update, con);
                            up.ExecuteNonQuery();
                        }
                    }
                    con.Close();
                    GridView1.EditIndex = -1;
                    Data_load();
                }
            }
        }
    }
}