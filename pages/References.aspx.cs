using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sepon;

public partial class References : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void btnFindAuthor_Click(object sender, EventArgs e)
    {
        {
            string inputAuthor;
            inputAuthor = txbFindAuthor.Text;
            GridViewReferences.Visible = false;
            using (SeponEntities dbSepon = new SeponEntities())
            {
                var selectedAuthor = from reference in dbSepon.References
                                     //join author in dbSepon.References_Authors on reference.Reference_ID equals author.Reference_ID
                                     where reference.Title.Contains(inputAuthor)
                                     //where author.Author.Contains(inputAuthor)
                                     select new { reference.Title };
                GridViewSelectedAuthours.DataSource = selectedAuthor.ToList();
                GridViewSelectedAuthours.DataBind();
            }
        }

    }
}