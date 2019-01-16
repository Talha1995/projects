using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadddmember_Click(object sender, EventArgs e)
    {
        using (var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MyDatabase.mdf;Integrated Security=True"))
        {
            var comm = new SqlCommand();

            //  comm.CommandText = "Insert into Member values('" + txtmembername.Text + "','" + txtmemberemail.Text + "'," + txtmembershipid.Text + ",'" + txtmemberaddress.Text + "','" + txtmemberusername.Text + "','" + txtmemberusername.Text + "' )";
            comm.Connection = conn;
            conn.Open();
            // txtmembername.Text = txtmemberemail.Text = txtmembershipid.Text = txtmemberaddress.Text = txtmemberusername.Text = txtmemberusername.Text = "";
            conn.Close();

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsView1.PageIndex = GridView1.SelectedIndex;
    }
}