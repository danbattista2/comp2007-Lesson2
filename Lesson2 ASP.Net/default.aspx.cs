using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lesson2_ASP.Net
{
    
    public partial class _default : System.Web.UI.Page
    {
        public int x;
        protected void Page_Load(object sender, EventArgs e)
        {
            //add code here
            //only increment x if the page in NOT being loaded
            if (!IsPostBack)
            {
                x = 0;
                x++;
                lblX.Text = x.ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //get the current count from x from the label
x = Convert.ToInt32(lblX.Text);

x++;

//increment the label value by 1 or just write x back to label
lblX.Text = x.ToString();

//copy value from textbox to label
lblFirstname.Text = txtFirstname.Text;

//also copy the value from literal
ltlFirstname.Text = txtFirstname.Text;

//remove the text from textbox
txtFirstname.Text = "";

        }

        protected void btnSelections_Click(object sender, EventArgs e)
        {
            //show selected country in the literal control
            ltlFirstname.Text = ddlCountry.SelectedValue + " " + ddlCountry.SelectedItem.Text;

            //first clear the topping literal
            ltlToppings.Text = "";
            //loop though the topping and print out the selected topping list
            foreach (ListItem item in cblToppings.Items)
            {
                if (item.Selected)
                {
                    ltlToppings.Text += item.Text + " ";
                } 
            }
        }
    }
}