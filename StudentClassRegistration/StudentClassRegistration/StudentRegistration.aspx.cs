using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentClassREgistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["StudentId"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else if (Request.QueryString["ClassId"] == null)
        {
            LabelMessage.Text = "Please select a class from the Class List:";
            ButtonReturn.Text = "Return to Class List";
            ButtonReturn.BackColor = System.Drawing.Color.Cornsilk;
            ButtonVerifyYourClasses.Visible = false;
            ButtonConfirm.Enabled = false;
        }
        else
        {
            LabelMessage.Text = "Please verify the information below:";
        }
    }
    protected void ButtonReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Classes.aspx");
    }
    protected void ButtonConfirm_Click(object sender, EventArgs e)
    {

        try
        {
            DBProcessingClass objDBPC = new DBProcessingClass();
            objDBPC.RegisterForClass((int)Session["StudentID"], int.Parse(Request.QueryString["ClassId"]));
            Response.Redirect("MyClasses.aspx");
        }
        catch
        {
            LabelMessage.Text = "It looks like you have already registered for this class <br/>Please Verify that you are not already in the class. <br/> If problem continues, contact support.";
            ButtonVerifyYourClasses.BackColor = System.Drawing.Color.Cornsilk;

        }
    }
    protected void ButtonVerifyYourClasses_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyClasses.aspx");
    }
}