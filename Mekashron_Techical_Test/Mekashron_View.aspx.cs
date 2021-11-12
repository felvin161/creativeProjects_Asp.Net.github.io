using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mekashron_Techical_Test
{
    public partial class Mekashron_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string Login(string EID, string password)
        {

            Mekashron_Service.ICUTechClient client = new Mekashron_Service.ICUTechClient("IICUTechPort");
            return client.Login(EID, password, "");
        }

        [WebMethod]

        public static string RegisterMyAccount(string Email, string Password, string FirstName, string LastName, string Mobile, int CountryID)
        {

            Mekashron_Service.ICUTechClient client = new Mekashron_Service.ICUTechClient("IICUTechPort");
            return client.RegisterNewCustomer(Email, Password, FirstName, LastName, Mobile, CountryID, 0, "");


        }

    }
}