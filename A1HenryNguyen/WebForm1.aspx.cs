using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A1HenryNguyen
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class HeartRates
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public int YearOfBirth { get; set; }
            public String Gender { get; set; }
            
            public int CurrentYear = DateTime.Now.Year;

            
            public HeartRates(string firstName, string lastName, int yearOfBirth,String gender, int currentYear)
            {
                FirstName = firstName;
                LastName = lastName;
                YearOfBirth = yearOfBirth;
                Gender = gender;
                CurrentYear = currentYear;
            }

            public int PersonsAge()
            {
                return CurrentYear - YearOfBirth; 
                 
            }
            public int MaximumHeartRate()
            {
                if (Gender == "Male") { return 220 - PersonsAge(); }
                else
                { return 226 - PersonsAge(); }


            }
            public string TargetHeartRate()
            {
                
                    double minRate = MaximumHeartRate() * 0.55;
                    double maxRate = MaximumHeartRate() * 0.7;
                    return $"{minRate} - {maxRate}";

                 
            }
        }
            
        

        protected void calculatebtn_Click(object sender, EventArgs e)
        {
            String FirstName = fnametxt.Text;
            String LastName = lnametxt.Text;
            int YearOfBirth = Convert.ToInt32(yearstxt.Text);
            int CurrentYear= DateTime.Now.Year;
            String Gender = RadioButtonList1.SelectedValue;
            HeartRates calculator = new HeartRates(FirstName, LastName, YearOfBirth,Gender, CurrentYear);
            calculator.PersonsAge();
            calculator.MaximumHeartRate();
            calculator.TargetHeartRate();

            firstlbl.Text = "Firstname: " + FirstName.ToString();
            lastlbl.Text = "Lastname: " + LastName.ToString();
            agelbl.Text = "Your age: "+calculator.PersonsAge().ToString();
            maxlbl.Text = "Your max heart rate: "+calculator.MaximumHeartRate().ToString();
            targetlbl.Text= "Your target heart rate: "+calculator.TargetHeartRate().ToString();
        }
        
    }
}