using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace computerInventry
{
    public partial class insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-D4FUASE;Initial Catalog=Computer_Inventry;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("entry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@company", SqlDbType.VarChar, 50).Value = company1.Text.ToString();
            cmd.Parameters.Add("@part", SqlDbType.VarChar, 50).Value = part.Text.ToString();
            cmd.Parameters.Add("@productid", SqlDbType.VarChar, 50).Value = productid.Text.ToString();
            cmd.Parameters.Add("@productprice", SqlDbType.Money).Value = (double.Parse(productprice.Text));
            cmd.Parameters.Add("@productquantity", SqlDbType.Int).Value = (int.Parse(productquantity.Text));
            

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                message.Text = "Data updated succesfully ";
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}