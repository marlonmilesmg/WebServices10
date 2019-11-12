using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebServices10
{
    /// <summary>
    /// Summary description for CalculatorWebService
    /// </summary>
    [WebService(Namespace = "http://te.co.za/webservices")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CalculatorWebService : System.Web.Services.WebService
    {
        //To Enable WebMethod Overloading You Should use MessageName property. This propert is used to uniquely identify the individual XML web service methods
        [WebMethod(EnableSession = true, Description ="This method adds 2 numbers", CacheDuration = 25)]
        public int Add(int firstNumber, int secondNumber)
        {
            List<string> calculations;

            if(Session["CALCULATIONS"] == null)
            {
                calculations = new List<string>();
            }
            else
            {
                calculations = (List<string>)Session["CALCULATIONS"];
            }

            string strRecentCalculations = firstNumber.ToString() + " + " + secondNumber.ToString() +
                " = " + (firstNumber + secondNumber).ToString();
            calculations.Add(strRecentCalculations);
            Session["CALCULATIONS"] = calculations;

            return firstNumber + secondNumber;
        }

        [WebMethod(EnableSession = true)]
        public List<string> GetCalculations()
        {
            if(Session["CALCULATIONS"] == null)
            {
                List<string> calculations = new List<string>();
                calculations.Add("You have not performed any calculations");
                return calculations;
            }
            else
            {
                return (List<string>)Session["CALCULATIONS"];
            }
        }
    }
}
