using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NegocioGutenberg;

namespace NeoGutenberg.Controls
{
    public partial class Ctrl_Barra : System.Web.UI.UserControl
    {

        private List<Tag> tags;

        public List<Tag> Tags { get => tags; set => tags = value; }

        protected void Page_Load(object sender, EventArgs e) {

            Tags = Tag.seleccionarTags();

        }
    }
}