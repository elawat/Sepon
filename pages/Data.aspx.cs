using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Objects.SqlClient;



namespace Sepon.pages
{
    public partial class Data : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                // On page load code
            {
                btnShowFilter.Visible = false;
                //DropDownListObjType
                DropDownListObjType.Items.Clear();
                string query = "SELECT DISTINCT [Object_Type] FROM [Objects]";
                BindDropDownList(DropDownListObjType, query, "Object_Type", "Object_Type", "Select Object Type");
                //DropDownListObjID
                DropDownListObjID.Items.Clear();
                query = "SELECT [Obj_ID] FROM [Objects]";
                BindDropDownList(DropDownListObjID, query, "Obj_ID", "Obj_ID", "Select ID");
                //DropDownListSplType
                DropDownListSplType.Items.Clear();
                query = "SELECT DISTINCT [Sample_Type] FROM [Samples_New]";
                BindDropDownList(DropDownListSplType, query, "Sample_Type", "Sample_Type", "Select Sample Type");
                //DropDownListSplID
                DropDownListSplID.Items.Clear();
                query = "SELECT [Sample_ID] FROM [Samples_New]";
                BindDropDownList(DropDownListSplID, query, "Sample_ID", "Sample_ID", "Select ID");
            }

        }

        // code of filtering
        protected void DropDownListObjType_SelectedIndexChanged(object sender, EventArgs e)
            // Code when object type selected
        {
            string sqlobjtype = "";
            string sqlobjID ="";
            string sqlsampletype="";
            string sqlAnalysed="";
            string query;
            string objtype = DropDownListObjType.SelectedItem.Value;
            if (objtype != "Select Object Type")
            {
                sqlobjtype = " AND obj.Object_Type = '" + objtype + "'";
            }
            string objID = DropDownListObjID.SelectedItem.Value;
            if (objID != "Select ID")
            {
                sqlobjID = " AND obj.Obj_ID = '" + objID + "'";
            }
            string sampletype = DropDownListSplType.SelectedItem.Value;
            if (sampletype != "Select Sample Type")
            {
                sqlsampletype = " AND samples.Sample_Type = '" + sampletype + "'";
            }
            if (CheckBoxAnalysed.Checked)
            {
                sqlAnalysed = " AND samples.Analysed = " + 1;
            }
            //DropDownListObjID
            DropDownListObjID.Items.Clear();
            query = "SELECT obj.[Obj_ID] FROM [Samples_New] as samples " +
                    "Right JOIN [SamplesToObject_Lookup] as link ON " +
                    "samples.Sample_ID = link.Sample_ID Right JOIN [Objects] " +
                    "as obj on obj.Obj_ID = link.Obj_ID WHERE 1 = 1 " + sqlobjtype + sqlobjID + sqlsampletype + sqlAnalysed;
            BindDropDownList(DropDownListObjID, query, "Obj_ID", "Obj_ID", "Select ID");
            //DropDownListSplType
            DropDownListSplType.Items.Clear();
            query = "SELECT DISTINCT samples.[Sample_Type] FROM [Samples_New] as samples " +
                    "INNER JOIN [SamplesToObject_Lookup] as link ON " +
                    "samples.Sample_ID = link.Sample_ID INNER JOIN [Objects] " +
                    "as obj on obj.Obj_ID = link.Obj_ID WHERE 1 = 1 " + sqlobjtype + sqlobjID;
            BindDropDownList(DropDownListSplType, query, "Sample_Type", "Sample_Type", "Select Sample Type");
            //DropDownListSplID
            DropDownListSplID.Items.Clear();
            query = "SELECT samples.[Sample_ID] FROM [Samples_New] as samples " +
                    "INNER JOIN [SamplesToObject_Lookup] as link ON " +
                    "samples.Sample_ID = link.Sample_ID INNER JOIN [Objects] " +
                    "as obj on obj.Obj_ID = link.Obj_ID WHERE 1 = 1 " + sqlobjtype + sqlobjID + sqlsampletype + sqlAnalysed;
            BindDropDownList(DropDownListSplID, query, "Sample_ID", "Sample_ID", "Select ID");

        }
        protected void DropDownListObjID_SelectedIndexChanged(object sender, EventArgs e)
        // Code when object id selected
        {
            string sqlobjtype = "";
            string sqlobjID = "";
            string sqlsampletype = "";
            string sqlAnalysed = "";
            string query;
            string objtype = DropDownListObjType.SelectedItem.Value;
            if (objtype != "Select Object Type")
            {
                sqlobjtype = " AND obj.Object_Type = '" + objtype + "'";
            }
            string objID = DropDownListObjID.SelectedItem.Value;
            if (objID != "Select ID")
            {
                sqlobjID = " AND obj.Obj_ID = '" + objID + "'";
            }
            string sampletype = DropDownListSplType.SelectedItem.Value;
            if (sampletype != "Select Sample Type")
            {
                sqlsampletype = " AND samples.Sample_Type = '" + sampletype + "'";
            }
            if (CheckBoxAnalysed.Checked)
            {
                sqlAnalysed = " AND samples.Analysed = " + 1;
            }
            //DropDownListSplType
            DropDownListSplType.Items.Clear();
            query = "SELECT DISTINCT samples.[Sample_Type] FROM [Samples_New] as samples " +
                    "INNER JOIN [SamplesToObject_Lookup] as link ON " +
                    "samples.Sample_ID = link.Sample_ID INNER JOIN [Objects] " +
                    "as obj on obj.Obj_ID = link.Obj_ID WHERE 1 = 1 " + sqlobjtype + sqlobjID;
            BindDropDownList(DropDownListSplType, query, "Sample_Type", "Sample_Type", "Select Sample Type");
            //DropDownListSplID
            DropDownListSplID.Items.Clear();
            query = "SELECT samples.[Sample_ID] FROM [Samples_New] as samples " +
                    "INNER JOIN [SamplesToObject_Lookup] as link ON " +
                    "samples.Sample_ID = link.Sample_ID INNER JOIN [Objects] " +
                    "as obj on obj.Obj_ID = link.Obj_ID WHERE 1 = 1 " + sqlobjtype + sqlobjID + sqlsampletype + sqlAnalysed;
            BindDropDownList(DropDownListSplID, query, "Sample_ID", "Sample_ID", "Select ID");
        }
        protected void DropDownListSplType_SelectedIndexChanged(object sender, EventArgs e)
        // Code when sample type selected
        {
            string sqlobjtype = "";
            string sqlobjID = "";
            string sqlsampletype = "";
            string sqlAnalysed = "";
            string query;
            string objtype = DropDownListObjType.SelectedItem.Value;
            if (objtype != "Select Object Type")
            {
                sqlobjtype = " AND obj.Object_Type = '" + objtype + "'";
            }
            string objID = DropDownListObjID.SelectedItem.Value;
            if (objID != "Select ID")
            {
                sqlobjID = " AND obj.Obj_ID = '" + objID + "'";
            }
            string sampletype = DropDownListSplType.SelectedItem.Value;
            if (sampletype != "Select Sample Type")
            {
                sqlsampletype = " AND samples.Sample_Type = '" + sampletype + "'";
            }
            if (CheckBoxAnalysed.Checked)
            {
                sqlAnalysed = " AND samples.Analysed = " + 1;
            }
            //DropDownListSplID
            DropDownListSplID.Items.Clear();
            query = "SELECT samples.[Sample_ID] FROM [Samples_New] as samples " +
                    "INNER JOIN [SamplesToObject_Lookup] as link ON " +
                    "samples.Sample_ID = link.Sample_ID INNER JOIN [Objects] " +
                    "as obj on obj.Obj_ID = link.Obj_ID WHERE 1 = 1 " + sqlobjtype + sqlobjID + sqlsampletype + sqlAnalysed;
            BindDropDownList(DropDownListSplID, query, "Sample_ID", "Sample_ID", "Select ID");

        }

        protected void CheckBoxAnalysed_CheckedChanged(object sender, EventArgs e)
        // Code when analysed check bo ticked
        {
            string sqlobjtype = "";
            string sqlobjID = "";
            string sqlsampletype = "";
            string sqlAnalysed = "";
            string query;
            string objtype = DropDownListObjType.SelectedItem.Value;
            if (objtype != "Select Object Type")
            {
                sqlobjtype = " AND obj.Object_Type = '" + objtype + "'";
            }
            string objID = DropDownListObjID.SelectedItem.Value;
            if (objID != "Select ID")
            {
                sqlobjID = " AND obj.Obj_ID = '" + objID + "'";
            }
            string sampletype = DropDownListSplType.SelectedItem.Value;
            if (sampletype != "Select Sample Type")
            {
                sqlsampletype = " AND samples.Sample_Type = '" + sampletype + "'";
            }
            if (CheckBoxAnalysed.Checked)
            {
                sqlAnalysed = " AND samples.Analysed = " + 1;
            }
            //DropDownListSplID
            DropDownListSplID.Items.Clear();
            query = "SELECT samples.[Sample_ID] FROM [Samples_New] as samples " +
                    "INNER JOIN [SamplesToObject_Lookup] as link ON " +
                    "samples.Sample_ID = link.Sample_ID INNER JOIN [Objects] " +
                    "as obj on obj.Obj_ID = link.Obj_ID WHERE 1 = 1 " + sqlobjtype + sqlobjID + sqlsampletype + sqlAnalysed;
            BindDropDownList(DropDownListSplID, query, "Sample_ID", "Sample_ID", "Select ID");
        }

        // code on clicking object button
        protected void btnObjectsFormObj_Click(object sender, EventArgs e)
        {

            {

                string selObject;
                string spName;
                string tblName;
                selObject = DropDownListObjID.SelectedItem.Value;
                
                using (SeponEntities dbSepon = new SeponEntities())
                {
                    string objtype = DropDownListObjType.SelectedItem.Value;
                    tblName = "Result of " + objtype + " bulk analyses";
                    if (objtype != "Select Object Type")
                    {
                        ObjectsForm.Visible = false;
                        btnShowFilter.Visible = true;
                        divInstr.Visible = false;

                        string objID = DropDownListObjID.SelectedItem.Value;
                        if (objID == "Select ID")
                        {

                            
                            {
                                var selobject = from eobject in dbSepon.Objects
                                                     where eobject.Object_Type == objtype
                                select new {ID = eobject.Obj_ID,Type = eobject.Object_Type,Description=eobject.Object_Description_Short,Discovered = eobject.Discovery_Date, eobject.Texture, eobject.Surface, eobject.Inclusions }; //anonymous type for multiple column selection
                               if (selobject.Any())
                                {
                                    
                                    GridViewListOfObjSmpl.DataSource = selobject.ToList(); 
                                    GridViewListOfObjSmpl.DataBind();
                                }
                                else
                                {

                                }
                            }


                            if (objtype != "furnace fragment")
                            {
                                objtype = objtype.Replace(" ", string.Empty);
                                spName = "pCreatev" + objtype + "BulkResultsPivot";
                                ExecuteSP(spName);
                                // only object type selected
                                GetData("select * from v" + objtype + "BulkResultsPivot", GridViewSEMResults);
                                lbltblName.Text = tblName;
                            }
                            else{
                                lbltblName.Text = "No SEM results for furnance fragments";
                                GridViewSEMResults.DataSource = null;
                                GridViewSEMResults.DataBind();
                                GridViewListOfObjSmpl.DataSource = null;
                                GridViewListOfObjSmpl.DataBind();
                            }
                            }
                    }
                    else
                    {
                        lbltblName.Text = null;
                        GridViewSEMResults.DataSource = null;
                        GridViewSEMResults.DataBind();
                    }
                        // binding images urls to ImageGallery datalist control
                        var urls = from url in dbSepon.ImageURLs
                                             join img in dbSepon.Images on url.Img_ID equals img.Img_ID
                                         where url.Img_ID.Contains(selObject) && img.Img_Type == "general"
                                         //where author.Author.Contains(inputAuthor)
                                         select new { url.URL };
                    ImageGallery.DataSource = urls.ToList();
                    ImageGallery.DataBind();
                }
            }


        }



        protected void btnShowFilter_Click(object sender, EventArgs e)
        {
            ObjectsForm.Visible = true;
            btnShowFilter.Visible = false;
        }

        
    }
}