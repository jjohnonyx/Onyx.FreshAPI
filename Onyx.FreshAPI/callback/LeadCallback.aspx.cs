using System;
using System.Web;
using System.IO;

namespace Onyx.FreshAPI.callback
{
    public partial class LeadCallback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string PostedData;
            using (var reader = new StreamReader(Request.InputStream))
            {
                PostedData = reader.ReadToEnd();

                string FilePath = HttpContext.Current.Server.MapPath($"~/temp/{Guid.NewGuid()}.txt");

                using (System.IO.StreamWriter file = new System.IO.StreamWriter(FilePath, true))
                {
                    file.WriteLine(PostedData);
                }

            }
        }
    }
}