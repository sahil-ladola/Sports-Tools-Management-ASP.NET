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
    public partial class Check_in : System.Web.UI.Page
    {
        public List<string> fname = new List<string>();
        public List<string> lname = new List<string>();
        public List<string> address = new List<string>();
        public List<string> landmark = new List<string>();
        public List<string> area = new List<string>();
        public List<string> postalcode = new List<string>();
        public List<string> gender = new List<string>();
        public List<string> contactno = new List<string>();
        public List<string> email = new List<string>();
        

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
        }

        protected void Search_Click(object sender, ImageClickEventArgs e)
        {
            Session["searchemail"] = txtsearch.Text;
            getfname();
            getlname();
            getaddress();
            getland();
            getarea();
            getpostal();
            getcontact();
            getgender();
        }
        public void getfname()
        {
            con.Open();
            string query = "select fname from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                fname.Add((dr["fname"]).ToString());
            }
            con.Close();
        }
        public void getlname()
        {
            con.Open();
            string query = "select lname from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lname.Add((dr["lname"]).ToString());
            }
            con.Close();
        }
        public void getaddress()
        {
            con.Open();
            string query = "select address from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                address.Add((dr["address"]).ToString());
            }
            con.Close();
        }
        public void getland()
        {
            con.Open();
            string query = "select landmark from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                landmark.Add((dr["landmark"]).ToString());
            }
            con.Close();
        }
        public void getarea()
        {
            con.Open();
            string query = "select area from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                area.Add((dr["area"]).ToString());
            }
            con.Close();
        }
        public void getpostal()
        {
            con.Open();
            string query = "select postalcode from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                postalcode.Add((dr["postalcode"]).ToString());
            }
            con.Close();
        }
        public void getgender()
        {
            con.Open();
            string query = "select gender from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                gender.Add((dr["gender"]).ToString());
            }
            con.Close();
        }
        public void getcontact()
        {
            con.Open();
            string query = "select contactno from customer where email = '" + txtsearch.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                contactno.Add((dr["contactno"]).ToString());
            }
            con.Close();
        }
    }
}