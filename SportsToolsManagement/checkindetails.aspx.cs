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
        public List<int> quantity = new List<int>();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            getquan();
        }
        public void getquan()
        {
            con.Open();
            string query = "select quantity from [transaction] where [email] = '" + Session["searchemail"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                quantity.Add(Convert.ToInt32(dr["quantity"]));
            }
            con.Close();
        }
        public void gettool()
        {
            con.Open();
            string query = "select quantity from [transaction] where [email] = '" + Session["searchemail"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                quantity.Add(Convert.ToInt32(dr["quantity"]));
            }
            con.Close();
        }
    }
}