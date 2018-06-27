using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBProcessingClass
/// </summary>
public class DBProcessingClass
{


    protected System.Data.SqlClient.SqlConnection GetConnection()
    {
        string strConnection = ConfigurationManager.ConnectionStrings["AdvWebProjectConnectionString"].ConnectionString;

        //Configure my connection
        System.Data.SqlClient.SqlConnection objCon;
        objCon = new System.Data.SqlClient.SqlConnection();
        objCon.ConnectionString = strConnection;
        return objCon;
    }

    public void RegisterForClass(int StudentID, int ClassID)
    {
        //Get my configured connection
        System.Data.SqlClient.SqlConnection objCon = GetConnection();

        //Configure my command 
        System.Data.SqlClient.SqlCommand objCmd;
        objCmd = new System.Data.SqlClient.SqlCommand();
        objCmd.Connection = objCon;
        objCmd.CommandType = System.Data.CommandType.StoredProcedure;
        objCmd.CommandText = "pInsClassStudents";

        //Setup the parameters
        System.Data.SqlClient.SqlParameter objRC;
        objRC = new System.Data.SqlClient.SqlParameter();
        objRC.ParameterName = "@RC";
        objRC.SqlDbType = System.Data.SqlDbType.Int;
        objRC.Direction = System.Data.ParameterDirection.ReturnValue;
        objCmd.Parameters.Add(objRC);

        System.Data.SqlClient.SqlParameter objStudentID;
        objStudentID = new System.Data.SqlClient.SqlParameter();
        objStudentID.ParameterName = "@StudentId";
        objStudentID.SqlDbType = System.Data.SqlDbType.Int;
        objStudentID.Direction = System.Data.ParameterDirection.Input;
        objStudentID.Value = StudentID;
        objCmd.Parameters.Add(objStudentID);

        System.Data.SqlClient.SqlParameter objClassID;
        objClassID = new System.Data.SqlClient.SqlParameter();
        objClassID.ParameterName = "@ClassId";
        objClassID.SqlDbType = System.Data.SqlDbType.Int;
        objClassID.Direction = System.Data.ParameterDirection.Input;
        objClassID.Value = ClassID;
        objCmd.Parameters.Add(objClassID);

        try
        {
            objCon.Open();
            objCmd.ExecuteNonQuery();
        }
        catch
        {
            throw;
        }
        finally
        {
            objCon.Close();
        }
    }


    public int WebsiteLogin(string StudentLogin, string StudentPassword)
    {
        //Get my configured connection
        System.Data.SqlClient.SqlConnection objCon = GetConnection();

        //Configure my command 
        System.Data.SqlClient.SqlCommand objCmd;
        objCmd = new System.Data.SqlClient.SqlCommand();
        objCmd.Connection = objCon;
        objCmd.CommandType = System.Data.CommandType.StoredProcedure;
        objCmd.CommandText = "pSelLoginIdByLoginAndPassword";

        //Setup the parameters
        System.Data.SqlClient.SqlParameter objRC;
        objRC = new System.Data.SqlClient.SqlParameter();
        objRC.ParameterName = "@RC";
        objRC.SqlDbType = System.Data.SqlDbType.Int;
        objRC.Direction = System.Data.ParameterDirection.ReturnValue;
        objCmd.Parameters.Add(objRC);

        System.Data.SqlClient.SqlParameter objStudentLogin;
        objStudentLogin = new System.Data.SqlClient.SqlParameter();
        objStudentLogin.ParameterName = "@StudentLogin";
        objStudentLogin.SqlDbType = System.Data.SqlDbType.NVarChar;
        objStudentLogin.Size = 50;
        objStudentLogin.Direction = System.Data.ParameterDirection.Input;
        objStudentLogin.Value = StudentLogin;
        objCmd.Parameters.Add(objStudentLogin);

        System.Data.SqlClient.SqlParameter objStudentPassword;
        objStudentPassword = new System.Data.SqlClient.SqlParameter();
        objStudentPassword.ParameterName = "@StudentPassword";
        objStudentPassword.SqlDbType = System.Data.SqlDbType.NVarChar;
        objStudentPassword.Size = 50;
        objStudentPassword.Direction = System.Data.ParameterDirection.Input;
        objStudentPassword.Value = StudentPassword;
        objCmd.Parameters.Add(objStudentPassword);

        System.Data.SqlClient.SqlParameter objStudentID;
        objStudentID = new System.Data.SqlClient.SqlParameter();
        objStudentID.ParameterName = "@StudentID";
        objStudentID.SqlDbType = System.Data.SqlDbType.Int;
        objStudentID.Direction = System.Data.ParameterDirection.Output;
        objCmd.Parameters.Add(objStudentID);

        int intStudentID = -1;
        try
        {
            objCon.Open();
            objCmd.ExecuteNonQuery();
            if (objStudentID.Value.GetType() == typeof(Int32))//If the data is returned as DBNull then skip this
            {
                intStudentID = (int)objStudentID.Value;
            }
        }
        finally
        {
            objCon.Close();
        }
        //If login has failed, then you will receive a -1
        //If login succeeds then you will receive the Student ID
        return intStudentID;
    }

}