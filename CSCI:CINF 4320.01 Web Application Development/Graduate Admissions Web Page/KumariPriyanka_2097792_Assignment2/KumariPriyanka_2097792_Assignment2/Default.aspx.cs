using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace KumariPriyanka_2097792_Assignment2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
           

        }
  
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            cldDOB.Visible = true;

        }

        protected void Calendar_DataBinding(object sender, EventArgs e)
        {
            if (cldDOB.SelectedDate >= DateTime.Today)
            {
                MessageBox.Show("Enter a valid Date of Birth");
                return;
            }
            txtDOB.Text = cldDOB.SelectedDate.ToShortDateString();
            cldDOB.Visible = false;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFName.Text = "";
            txtLName.Text = "";
            txtDOB.Text = "";
            DDLGender.Items.Clear();
            txtMailingAdd1.Text = "";
            txtMailingAdd2.Text = "";
            txtCity.Text = "";
            DDLState.Items.Clear();
            txtZipCode.Text = "";
            txtMobile1.Text = "";
            txtMobile2.Text = "";
            txtMobile3.Text = "";
            txtOther1.Text = "";
            txtOther2.Text = "";
            txtOther3.Text = "";
            txtEmail.Text = "";
            ddlSemEnroll.Items.Clear();
            ddlCampus.Items.Clear();
            ddlProgInterest.Items.Clear();
            ddlInternational2.Items.Clear();
            ddlInterestedHousing.Items.Clear();
            ddlQusVeteran.Items.Clear();
            ddlMayText.Items.Clear();




        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // put code to process the data entered on the page
                lblMessage.Text = "SUCCESS!";
            }
        }
    }
}