﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GafLookPaid.controles
{
    public partial class Intereses : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Attributes.CssStyle[HtmlTextWriterStyle.Display] = "none";
        }
    }
}