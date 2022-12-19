using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KumariP_2097792_Converter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlType.SelectedValue == "Length")
            {
                ddlConversions.Items.Clear();
                ddlConversions.Items.Add(new ListItem("Select Conversions"));
                ddlConversions.Items.Add(new ListItem("Kilometers to Miles"));
                ddlConversions.Items.Add(new ListItem( "Miles to Kilometers"));
                ddlConversions.Items.Add(new ListItem( "Yard to Feet"));
                ddlConversions.Items.Add(new ListItem( "Feet to Yard"));
                ddlConversions.Items.Add(new ListItem( "Inches to Centimeters"));
                ddlConversions.Items.Add(new ListItem( "Centimeters to Inches"));
            }
            else if (ddlType.SelectedValue == "Liquid")
            {
                ddlConversions.Items.Clear();
                ddlConversions.Items.Add(new ListItem("Select Conversions"));
                ddlConversions.Items.Add(new ListItem("Liters to Gallons"));
                ddlConversions.Items.Add(new ListItem("Gallons to Liters"));
                ddlConversions.Items.Add(new ListItem("Pints to Gallons"));
                ddlConversions.Items.Add(new ListItem("Gallons to Pints"));
                ddlConversions.Items.Add(new ListItem("Quarts to Gallons"));
                ddlConversions.Items.Add(new ListItem("Gallons to Quarts"));
            }
            else if (ddlType.SelectedValue == "Temperature")
            {
                ddlConversions.Items.Clear();
                ddlConversions.Items.Add(new ListItem("Select Conversions"));
                ddlConversions.Items.Add(new ListItem("Fahrenheit to Celsius"));
                ddlConversions.Items.Add(new ListItem("Celsius to Fahrenheits"));
            }
            else if (ddlType.SelectedValue == "Mass")
            {
                ddlConversions.Items.Clear();
                ddlConversions.Items.Add(new ListItem("Select Conversions"));
                ddlConversions.Items.Add(new ListItem("Kilograms to Pounds"));
                ddlConversions.Items.Add(new ListItem("Pounds to Kilograms"));
                ddlConversions.Items.Add(new ListItem("Ounce to Grams"));
                ddlConversions.Items.Add(new ListItem("Grams to Ounce"));
            }

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            if (ddlType.SelectedValue == "Length")
            {
                if (ddlConversions.SelectedValue == "Kilometers to Miles") {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.621371).ToString() + " Miles";
                }
                else if(ddlConversions.SelectedValue == "Miles to Kilometers") {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 1.60934).ToString() + " Kilometers";
                }
                else if (ddlConversions.SelectedValue == "Yard to Feet")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 3).ToString() + " Feet";
                }
                else if (ddlConversions.SelectedValue == "Feet to Yard")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.33333).ToString() + " Yards";
                }
                else if (ddlConversions.SelectedValue == "Inches to Centimeters")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 2.54).ToString() + " Centimeters ";
                }
                else if (ddlConversions.SelectedValue == "Centimeters to Inches")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.3937).ToString() + " Inches ";
                }
            }
            else if (ddlType.SelectedValue == "Liquid")
            {
                if (ddlConversions.SelectedValue == "Liters to Gallons")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.264172).ToString() + " Gallons";
                }
                else if (ddlConversions.SelectedValue == "Gallons to Liters")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 3.78541).ToString() + " Liters";
                }
                else if (ddlConversions.SelectedValue == "Pints to Gallons")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.125).ToString() + " Gallons";
                }
                else if (ddlConversions.SelectedValue == "Gallons to Pints")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 9.60762).ToString() + " Pints";
                }
                else if (ddlConversions.SelectedValue == "Quarts to Gallons")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.20817).ToString() + " Gallons ";
                }
                else if (ddlConversions.SelectedValue == "Gallons to Quarts")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 4.80381).ToString() + " Quarts ";
                }

            }
            else if (ddlType.SelectedValue == "Temperature")
            {
                if (ddlConversions.SelectedValue == "Fahrenheit to Celsius")
                {
                    lblFinalResut.Text = ((Convert.ToInt32(txtQuanity.Text) - 32) * 0.5555).ToString() + " Celsius";
                }
                else if (ddlConversions.SelectedValue == "Celsius to Fahrenheits")
                {
                    lblFinalResut.Text = ((Convert.ToInt32(txtQuanity.Text) * 1.8) + 32).ToString() + " Fahrenheit";
                }
               
            }
            else if (ddlType.SelectedValue == "Mass")
            {
                if (ddlConversions.SelectedValue == "Kilograms to Pounds")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 2.20462).ToString() + " Pounds";
                }
                else if (ddlConversions.SelectedValue == "Pounds to Kilograms")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.453592).ToString() + " Kgs";
                }
                else if (ddlConversions.SelectedValue == "Ounce to Grams")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 28.3495).ToString() + " Grams";
                }
                else if (ddlConversions.SelectedValue == "Grams to Ounce")
                {
                    lblFinalResut.Text = (Convert.ToInt32(txtQuanity.Text) * 0.035274).ToString() + " Ounces";
                }

            }
        }

        protected void btnClean_Click(object sender, EventArgs e)
        {
            lblFinalResut.Text = "";
            ddlConversions.SelectedIndex = 0;
            ddlType.SelectedIndex = 0;
        }
    }
}