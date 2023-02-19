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
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        public List<string> T_name = new List<string>();
        public List<int> Quantity = new List<int>();
        public List<int> Remaining = new List<int>();
        public List<int> Rent = new List<int>();
        public List<string> NT_name = new List<string>();
        public List<int> NQuantity = new List<int>();
        public List<int> NRemaining = new List<int>();
        public List<int> NRent = new List<int>();

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
                getnames();
                getquan();
                getremain();
                getrent();
                ngetnames();
                ngetquan();
                ngetremain();
                ngetrent();
            }
        }
        public void getnames()
        {
            con.Open();
            string query = "select t_name from tools where remain_quantity != 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                T_name.Add((dr["t_name"]).ToString());
            }
            con.Close();
        }
        public void getquan()
        {
            con.Open();
            string query = "select quantity from tools where remain_quantity != 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Quantity.Add(Convert.ToInt32(dr["quantity"]));
            }
            con.Close();
        }
        public void getremain()
        {
            con.Open();
            string query = "select remain_quantity from tools where remain_quantity != 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Remaining.Add(Convert.ToInt32(dr["remain_quantity"]));
            }
            con.Close();
        }
        public void getrent()
        {
            con.Open();
            string query = "select on_rent from tools where remain_quantity != 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Rent.Add(Convert.ToInt32(dr["on_rent"]));
            }
            con.Close();
        }
        public void ngetnames()
        {
            con.Open();
            string query = "select t_name from tools where remain_quantity = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                NT_name.Add((dr["t_name"]).ToString());
            }
            con.Close();
        }
        public void ngetquan()
        {
            con.Open();
            string query = "select quantity from tools where remain_quantity = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                NQuantity.Add(Convert.ToInt32(dr["quantity"]));
            }
            con.Close();
        }
        public void ngetremain()
        {
            con.Open();
            string query = "select remain_quantity from tools where remain_quantity = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                NRemaining.Add(Convert.ToInt32(dr["remain_quantity"]));
            }
            con.Close();
        }
        public void ngetrent()
        {
            con.Open();
            string query = "select on_rent from tools where remain_quantity = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                NRent.Add(Convert.ToInt32(dr["on_rent"]));
            }
            con.Close();
        }
    }
}