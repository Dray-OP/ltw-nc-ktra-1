using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baitap1
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["username"] = txt_UserName.Text;
                Response.Write("Đăng Nhập thành công");
                Response.Write("Xin chào," + Session["username"]);
                Response.Redirect("Default.aspx");
            }
            else
            {

            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int length = args.Value.Length;
            if (length >= 8 && length <= 15)
            {

                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;

                lblmsg.Text = "enter your password (8 - 15)";
            }
        }
    }
}