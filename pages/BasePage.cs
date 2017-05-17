using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



namespace Sepon
{
    public class BasePage : System.Web.UI.Page
    {
        [System.Web.Services.WebMethod]
        public static Reference GetReferenceByID(string ReferenceID)
        {

            Reference selref = new Reference();
            //GridViewReferences.Visible = false;
            using (SeponEntities dbSepon = new SeponEntities())
            {
                var selectedReference = (from reference in dbSepon.References
                                         //join author in dbSepon.References_Authors on reference.Reference_ID equals author.Reference_ID
                                         where reference.Reference_ID.Contains(ReferenceID)
                                         //where author.Author.Contains(inputAuthor)
                                         select reference.Title).FirstOrDefault();
                if (selectedReference != null)
                {
                    selref.Title = selectedReference;
                    selref.Reference_ID = ReferenceID;
                    return selref;
                }
                else
                {
                    selref.Title = "Reference not found";
                    selref.Reference_ID = ReferenceID;
                    return selref;
                }


            }


        }

        public void BindDropDownList(DropDownList ddl, string query, string text, string value, string defaultText)
        {
            string conString = ConfigurationManager.ConnectionStrings["SeponConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    con.Open();
                    ddl.DataSource = cmd.ExecuteReader();
                    ddl.DataTextField = text;
                    ddl.DataValueField = value;
                    ddl.DataBind();
                    con.Close();
                }
            }
            ddl.Items.Insert(0, new ListItem(defaultText));
        }


        public void GetData(string selectCommand, GridView gv)
        {
            try
            {
                // Specify a connection string
                String connectionString = ConfigurationManager.ConnectionStrings["SeponConnectionString"].ConnectionString;

                // Create a new data adapter based on the specified query
                using (SqlDataAdapter dataAdapter = new SqlDataAdapter(selectCommand, connectionString))
                {


                    // Populate a new data table and bind it to the gv
                    DataTable table = new DataTable();
                    //table.Locale = System.Globalization.CultureInfo.InvariantCulture;
                    dataAdapter.Fill(table);
                    gv.DataSource = table;
                    gv.DataBind();
                }

                //dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCellsExceptHeader);
            }
            catch (SqlException)
            {




            }
        }

        public void ExecuteSP(string SPName)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["SeponConnectionString"].ConnectionString;
            using (SqlConnection sqlConnection1 = new SqlConnection(connectionString))
                
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    Int32 rowsAffected;

                    cmd.CommandText = SPName;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = sqlConnection1;

                    sqlConnection1.Open();

                    rowsAffected = cmd.ExecuteNonQuery();

                }
            }
        }

    }
}