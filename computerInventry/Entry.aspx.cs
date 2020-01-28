using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace computerInventry
{
    public partial class Entry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-D4FUASE;Initial Catalog=Computer_Inventry;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("generalentry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@company", SqlDbType.VarChar, 50).Value = company.Text.ToString();
            cmd.Parameters.Add("@cpuquantity", SqlDbType.Int).Value = (int.Parse(cpuquantity.Text));
            cmd.Parameters.Add("@cpuprice", SqlDbType.Money).Value = (double.Parse(cpuprice.Text));
            cmd.Parameters.Add("@monitorquantity", SqlDbType.Int).Value = (int.Parse(monitorquantity.Text));
            cmd.Parameters.Add("@monitorprice", SqlDbType.Money).Value = (double.Parse(monitorprice.Text));
            cmd.Parameters.Add("@keyboardquantity", SqlDbType.Int).Value = (int.Parse(keyboardquantity.Text));
            cmd.Parameters.Add("keyboardprice", SqlDbType.Money).Value = (double.Parse(keyboardprice.Text));
            cmd.Parameters.Add("@mousequantity", SqlDbType.Int).Value = (int.Parse(mousequantity.Text));
            cmd.Parameters.Add("@mouseprice", SqlDbType.Money).Value = (double.Parse(mouseprice.Text));
            cmd.Parameters.Add("@speakerquantity", SqlDbType.Int).Value = (int.Parse(speakerquantity.Text));
            cmd.Parameters.Add("@speakerprice", SqlDbType.Money).Value = (double.Parse(speakerprice.Text));
            cmd.Parameters.Add("@webcamquantity", SqlDbType.Int).Value = (int.Parse(webcamquantity.Text));
            cmd.Parameters.Add("@webcamprice", SqlDbType.Money).Value = (double.Parse(webcamprice.Text));
            cmd.Parameters.Add("@cpuid", SqlDbType.VarChar, 50).Value = cpuid.Text.ToString();
            cmd.Parameters.Add("@monitorid", SqlDbType.VarChar, 50).Value = monitorid.Text.ToString();
            cmd.Parameters.Add("@keyboardid", SqlDbType.VarChar, 50).Value = keyboardid.Text.ToString();
            cmd.Parameters.Add("@mouseid", SqlDbType.VarChar, 50).Value = mouseid.Text.ToString();
            cmd.Parameters.Add("@speakerid", SqlDbType.VarChar, 50).Value = speakerid.Text.ToString();
            cmd.Parameters.Add("@webcamid", SqlDbType.VarChar, 50).Value = webcamid.Text.ToString();
            



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

        protected void company_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}