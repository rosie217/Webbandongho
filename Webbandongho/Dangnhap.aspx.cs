using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webbandongho
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string usernameL = Request.Form.Get("usernameL");
                string passwordL = Request.Form.Get("passwordL");
                int dem = 0;
                if (usernameL != "" && passwordL != "")
                {
                    List<NguoiDung> users = (List<NguoiDung>)Application["Users"];

                    foreach (NguoiDung user in users)
                    {
                        if (usernameL == user.username)
                        {
                            dem = 1;
                            if (passwordL == user.password)
                            {
                                Session["username"] = usernameL;
                                Response.Redirect("Trangchu.aspx");
                                break;
                            }
                            else
                            {
                                errorL.InnerHtml = "Sai mật khẩu";
                                break;
                            }
                        }
                    }
                    if (dem == 0)
                    {
                        errorL.InnerHtml = "Không tồn tại tài khoản ";
                    }
                }
            }
        }
    }
}