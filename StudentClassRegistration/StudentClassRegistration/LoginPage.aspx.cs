using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASPDemoSites_ClassRegistrationSite_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["StudentId"] == null)
        {
            LabelMessage.Text = "Please Login using the textboxes below:";
            ButtonLogOut.Visible = false;
        }
        else
        {
            LabelMessage.Text = "You are already logged in.";
            ButtonLogOut.Visible = true;
            ButtonLogin.Enabled = false;
        }
    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        DBProcessingClass objDBPC = new DBProcessingClass();

        int StudentID = objDBPC.WebsiteLogin(TextBoxStudentLogin.Text, TextBoxStudentPassword.Text);
        if (StudentID == -1)
        {
            LabelMessage.Text = "Login Failed!";
            ButtonLogOut.Visible = false;
            ButtonReturn.Visible = false;
        }
        else
        {
            Session["StudentId"] = StudentID;
            LabelMessage.Text = "Thank you!  You can now register for new classes or view your current classes.";
            ButtonReturn.Visible = true;
            ButtonReturn.BackColor = System.Drawing.Color.Cornsilk;
        }
    }

    protected void ButtonReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Classes.aspx");
    }

    protected void ButtonLogOut_Click(object sender, EventArgs e)
    {
        Session["StudentId"] = null;
        Session["StudentName"] = null;
        Response.Redirect("Classes.aspx");
    }

    protected void ButtonRequestNewLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("RequestNewLogin.aspx");
    }
}

