using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sepon;


public partial class pages_GeologicalSetting : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static string test(string ReferenceID)
    {
        return ReferenceID + "ggg";
    }

   

    
}