using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_Analyses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridViewSamples_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        foreach (GridViewRow row in GridViewSamples.Rows)
        {
            foreach (TableCell cell in row.Cells)
            {
                cell.Attributes.CssStyle["text-align"] = "center";
            }
        }
        if (e.Row.RowType == DataControlRowType.Header)
        {
            foreach (TableCell cell in e.Row.Cells)
            {
                cell.Attributes.CssStyle["text-align"] = "center";
            }
        }
    }

    protected void btnExportExcel_Click(object sender, EventArgs e)
    {
        // Clear all content output from the buffer stream
        Response.ClearContent();
        // Specify the default file name using "content-disposition" RESPONSE header
        Response.AppendHeader("content-disposition", "attachment; filename=Samples.xls");
        // Set excel as the HTTP MIME type
        Response.ContentType = "application/excel";
        // Create an instance of stringWriter for writing information to a string
        System.IO.StringWriter stringWriter = new System.IO.StringWriter();
        // Create an instance of HtmlTextWriter class for writing markup 
        // characters and text to an ASP.NET server control output stream
        HtmlTextWriter htw = new HtmlTextWriter(stringWriter);

        // Set white color as the background color for gridview header row
        GridViewSamples.HeaderRow.Style.Add("background-color", "transparent");


        // Set background color of each cell of each data row of GridView1
        foreach (GridViewRow gridViewRow in GridViewSamples.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "transparent";
            }
        }


        GridViewSamples.RenderControl(htw);
        Response.Write(stringWriter.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    } 

    
}
