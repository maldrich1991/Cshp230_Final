using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Data;


namespace StudentClassRegistration
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
            protected void Button1_Click(object sender, EventArgs e)
            {
                //when Submit button on Login Request page is clicked
                //Create a new SQL connection object and SQL command object for the stored procedure
                OleDbConnection objConn = new OleDbConnection();
                OleDbCommand cmdAdd = new OleDbCommand();
                string connection = (@"Provider=SQLOLEDB;
                            Data Source=(local);
                            Integrated Security=SSPI;
                            Initial Catalog=AdvWebDevProject");


                //begin try-catch block
                try
                {
                    //Open the connection
                    objConn.ConnectionString = connection;
                    objConn.Open();

                    //Issue a command
                    cmdAdd.Connection = objConn;
                    cmdAdd.CommandText = "pInsLogins";
                    cmdAdd.CommandType = CommandType.StoredProcedure;

                    //determine account type



                    //Initialize a parameter for each piece of data we want to add
                    OleDbParameter paramName = cmdAdd.Parameters.Add("@Name", OleDbType.VarChar, 50);
                    OleDbParameter paramEmail = cmdAdd.Parameters.Add("@EmailAddress", OleDbType.VarChar, 50);
                    OleDbParameter paramLogin = cmdAdd.Parameters.Add("@LoginName", OleDbType.VarChar, 50);
                    OleDbParameter paramType = cmdAdd.Parameters.Add("@NewOrReactivate", OleDbType.VarChar, 50);
                    OleDbParameter paramReas = cmdAdd.Parameters.Add("@ReasonForAccess", OleDbType.VarChar, 50);
                    OleDbParameter paramDate = cmdAdd.Parameters.Add("@DateNeededBy", OleDbType.Date);

                    //Indicate direction for each parameter
                    paramName.Direction = ParameterDirection.Input;
                    paramEmail.Direction = ParameterDirection.Input;
                    paramLogin.Direction = ParameterDirection.Input;
                    paramType.Direction = ParameterDirection.Input;
                    paramReas.Direction = ParameterDirection.Input;
                    paramDate.Direction = ParameterDirection.Input;

                    //Set a value for each parameter via properties
                    paramName.Value = EnterName.Text;
                    paramEmail.Value = EnterEmail.Text;
                    paramLogin.Value = EnterUser.Text;
                    paramType.Value = EnterType.SelectedItem;
                    paramReas.Value = EnterReas.Text.ToString();
                    paramDate.Value = EnterDate.SelectedDate;

                    //Execute the command
                    cmdAdd.ExecuteNonQuery();
                    Response.Write("Data submitted successfully.");
                }

                //If something goes wrong, display the exception message
                catch (Exception ex)
                {
                    Response.Write(ex.Message.ToString());
                }

                //Close the connection whether it worked or not
                finally
                {
                    objConn.Close();
                }//end of try-catch block

            }//end of Button1_Click
        
    }
}