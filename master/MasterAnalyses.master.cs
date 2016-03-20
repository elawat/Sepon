using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sepon;

public partial class master_MasterAnalyses : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pageTitle = this.Page.Title.ToString();
        //string pageName = this.Page.ToString(); 
        using (SeponEntities dbSepon = new SeponEntities())
        {
            var selectedSamples = from sample in dbSepon.Samples
                                  where sample.Object_Type == pageTitle
                                  //where author.Author.Contains(inputAuthor)
                                  select new { sample.Object_ID, sample.Sample_Type, sample.Object_Type }; //anonymous type for multiple column selection
            if (selectedSamples.Any())
            {
                
                GridViewSamplesRight.DataSource = selectedSamples.ToList();
                GridViewSamplesRight.DataBind();
            }
            else
            {

            }
        }
    }

    
    }

