using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReviewerRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitReviewer();
    }

    protected void SubmitReviewer()
    {
        loginServiceReference.IbookReviewLoginServiceClient rbc =
            new loginServiceReference.IbookReviewLoginServiceClient();

        loginServiceReference.ReviewerLite rLite =
            new loginServiceReference.ReviewerLite();

        rLite.LastName = LastNameTextBox.Text;
        rLite.FirstName = FirstNameTextBox.Text;
        rLite.Email = EmailTextBox.Text;
        rLite.UserName = UserNameTextBox.Text;
        rLite.Password = ConfirmTextBox.Text;

        int result = rbc.ReviewerRegistration(rLite);

        if (result != -1)
            ResultLabel.Text = "Successfully Registered";
        else
            ResultLabel.Text = "Registration Failed";

    }
}