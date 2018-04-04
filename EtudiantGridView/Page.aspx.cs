using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

namespace EtudiantGridView
{
    public partial class Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string co_str = ConfigurationManager.ConnectionStrings["mesetudiantConnectionString"].ConnectionString;
        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            foreach (GridViewRow gr in GridView1.Rows)
            {
                CheckBox cb = (CheckBox)gr.FindControl("CheckBox1");
                if (cb.Checked)
                {
                    sb.Append(((Label)gr.FindControl("Label1")).Text + ",");
                }
            }

            sb.Remove(sb.ToString().LastIndexOf(","), 1);

            SqlConnection con = new SqlConnection(co_str);
            SqlCommand cmd = new SqlCommand("etudiantSuppression", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter parameter = new SqlParameter("@IDs", sb.ToString());
            cmd.Parameters.Add(parameter);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
    }
    }
}