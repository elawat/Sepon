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
    
    public partial class ImagesToSample_Lookup
    {
        public string Img_ID { get; set; }
        public string Sample_ID { get; set; }
    
        public virtual Samples_New Samples_New { get; set; }
    }
}
