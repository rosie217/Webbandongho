using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Webbandongho
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            //tk mac dinh
            Application["Users"] = new List<NguoiDung>();
            List<NguoiDung> Users = (List<NguoiDung>)Application["Users"];
            Users.Add(new NguoiDung("thanhnam", "thanhnam@gmail.com", "thanhnam", "thanhnam"));
            Users.Add(new NguoiDung("huyhoang", "huyhoang@gmail.com", "huyhoang", "huyhoang"));
            Users.Add(new NguoiDung("nguyenhuy", "nguyenhuy@gmail.com", "nguyenhuy", "nguyenhuy"));
            Users.Add(new NguoiDung("duyhuy", "duyhuy@gmail.com", "duyhuy", "duyhuy"));

            //sanpham
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham ban chay
            ProductList.Add(new Product() { Id = "1", Images = "../images/product-01.png", Name = "Đồng hồ nam Black", Price = "500000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "2", Images = "../images/product-16-300x300.jpg", Name = "Đồng hồ nam Silver", Price = "500000", Detail= "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "3", Images = "../images/product-09.jpg", Name = "Đồng hồ nữ Daniel Tím", Price = "1500000", Detail= "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "4", Images = "../images/product-4.jpg", Name = "Đồng hồ nữ Fossil", Price = "1000000", Detail= "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "5", Images = "../images/product-03-300x300.png", Name = "Đồng hồ nam Classico", Price = "2000000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            //san pham pho bien
            ProductList.Add(new Product() { Id = "10", Images = "../images/product-10.jpg", Name = "Đồng hồ nam Mathey", Price = "600000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "11", Images = "../images/product-11.jpg", Name = "Đồng hồ nam Nibosi", Price = "200000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "12", Images = "../images/product-02-300x300.png", Name = "Đồng hồ nam Casio", Price = "500000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "13", Images = "../images/product-13.jpg", Name = "Đồng hồ nữ Citizen", Price = "500000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "14", Images = "../images/product-14.jpg", Name = "Đồng hồ nữ Julius", Price = "1200000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            //sanpham dong ho nam
            ProductList.Add(new Product() { Id = "20", Images = "../images/Donghonam/donghonam-1.jpg", Name = "Đồng hồ nam Philippe", Price = "600000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "21", Images = "../images/Donghonam/donghonam-2.jpg", Name = "Đồng hồ nam Mini Focus", Price = "850000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "22", Images = "../images/Donghonam/donghonam-3.jpg", Name = "Đồng hồ nam Reward x2", Price = "1200000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "23", Images = "../images/Donghonam/donghonam-4.png", Name = "Đồng hồ nam Lobinni", Price = "450000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "24", Images = "../images/Donghonam/donghonam-5.jpg", Name = "Đồng hồ nam Orient", Price = "700000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "25", Images = "../images/Donghonam/donghonam-6.jpg", Name = "Đồng hồ nam Sunrise", Price = "5500000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "26", Images = "../images/Donghonam/donghonam-7.jpg", Name = "Đồng hồ nam Jacques", Price = "560000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "27", Images = "../images/Donghonam/donghonam-8.jpg", Name = "Đồng hồ nam Nektom", Price = "670000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            //sanpham dong ho nu
            ProductList.Add(new Product() { Id = "30", Images = "../images/Donghonu/donghonu-1.jpg", Name = "Đồng hồ nữ Elio-01", Price = "6500000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });
            ProductList.Add(new Product() { Id = "31", Images = "../images/Donghonu/donghonu-2.jpg", Name = "Đồng hồ nữ Elio-02", Price = "750000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });
            ProductList.Add(new Product() { Id = "32", Images = "../images/Donghonu/donghonu-3.jpg", Name = "Đồng hồ nữ Elio-03", Price = "5600000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });
            ProductList.Add(new Product() { Id = "33", Images = "../images/Donghonu/donghonu-7.jpg", Name = "Đồng hồ nữ Elio-04", Price = "6780000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });
            ProductList.Add(new Product() { Id = "34", Images = "../images/Donghonu/donghonu-5.jpg", Name = "Đồng hồ nữ Neos", Price = "5690000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });
            ProductList.Add(new Product() { Id = "35", Images = "../images/Donghonu/donghonu-6.jpg", Name = "Đồng hồ nữ Fossil", Price = "5980000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });
            ProductList.Add(new Product() { Id = "36", Images = "../images/Donghonu/donghonu-4.jpg", Name = "Đồng hồ nữ Titan", Price = "6000000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });
            ProductList.Add(new Product() { Id = "37", Images = "../images/Donghonu/donghonu-8.jpg", Name = "Đồng hồ nữ Burgi", Price = "5500000", Detail = "Đồng hồ nữ Casio LTP - V300L - 4AUDF thiết kế dành cho nữ với màu sắc nhẹ nhàng, vỏ máy bằng thép không gỉ, kim đồng hồ và vạch số với kiểu dáng thanh mảnh." });


            Application["ProductList"] = ProductList;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            /**Session["product"] = new List<Product>();**/
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}