//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Sepon
{
    using System;
    using System.Collections.Generic;
    
    public partial class Object
    {
        public Object()
        {
            this.Samples_New = new HashSet<Samples_New>();
        }
    
        public string Obj_ID { get; set; }
        public string Object_Type { get; set; }
        public string Object_Description_Short { get; set; }
        public Nullable<bool> Photo { get; set; }
        public string Area { get; set; }
        public string S_Pit { get; set; }
        public string T_Pit { get; set; }
        public string An { get; set; }
        public string N { get; set; }
        public Nullable<System.DateTime> Discovery_Date { get; set; }
        public string Size_cm { get; set; }
        public string Thickness_mm { get; set; }
        public string Weight_g { get; set; }
        public string Shape { get; set; }
        public string Colour { get; set; }
        public string Texture { get; set; }
        public string Surface { get; set; }
        public string Inclusions { get; set; }
    
        public virtual ICollection<Samples_New> Samples_New { get; set; }
    }
}
