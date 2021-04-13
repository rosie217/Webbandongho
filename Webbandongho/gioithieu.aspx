<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="Webbandongho.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Giới thiệu</title>
    <link href="Style/gioithieu.css" rel="stylesheet" />
</head>
<body>
    <div class="header">
        <div class="header_top">
            <p> Định Công, Hoàng Mai, Hà Nội</p>
            <div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>
        </div>
        <div class="header_mid">
            <a href="Trangchu.aspx">
                <img width="200" height="80" src="images/logo.png" title="Đồng Hồ">
            </a>
        </div>
        <div class="header_bot">
            <ul>
                <li><a href="Trangchu.aspx">Trang chủ</a></li>
                <li><a href="gioithieu.aspx">Giới thiệu</a></li>
                <li><a href="donghonam.aspx">Đồng hồ nam</a></li>
                <li><a href="donghonu.aspx">Đồng hồ nữ</a></li>
                <li><a href="Lienhe.aspx">Liên hệ</a></li>
                <li><a href="Giohang.aspx">Giỏ hàng</a></li>
            </ul>
        </div>
    </div>
    <div class="gioithieu">
        <div class="gioithieu_column_one">
            <img src="images/about-us_bg.jpg" alt="lỗi" width="100%">
        </div>
        <div class="gioithieu_column_two">
            <h2>Giới thiệu về Mona Watch</h2>
            <span>
                “Cùng với sự phát triển không ngừng của thời trang thế giới, rất nhiều thương hiệu cho ra đời những mẫu đồng hồ nam chính hãng đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ… Một chiếc đồng hồ nam cao cấp chính hãng khắc họa một giá trị đích thực khi nói đến phụ kiện xa xỉ dành cho phái mạnh.
                Hiện nay, đồng hồ là phụ kiện thời trang thiết yếu đối với những người đàn ông hiện đại ngày nay.
                Trên cổ tay của những người đàn ông thành đạt luôn dành vị trí cho một chiếc đồng hồ nam cao cấp.”
            </span>
        </div>
    </div>
    <div class="section_content">
        <div class="section_item">
            <div class="section_child">
                <h3>Hàng chính hãng</h3>
                <span>Hiện nay, đồng hồ là phụ kiện thời trang thiết yếu đối với những người đàn ông hiện đại ngày nay</span>
            </div>
            <div class="section_child">
                <h3>Sản phẩm mới 100%</h3>
                <span>Hiện nay, đồng hồ là phụ kiện thời trang thiết yếu đối với những người đàn ông hiện đại ngày nay</span>
            </div>
            <div class="section_child">
                <h3>Bảo hành 12 tháng</h3>
                <span>Hiện nay, đồng hồ là phụ kiện thời trang thiết yếu đối với những người đàn ông hiện đại ngày nay</span>
            </div>
        </div>
        <div class="section_item">
            <div class="section_child">
                <h3>Đổi trả trong vòng 7 ngày</h3>
                <span>Hiện nay, đồng hồ là phụ kiện thời trang thiết yếu đối với những người đàn ông hiện đại ngày nay</span>
            </div>
            <div class="section_child">
                <h3>Miễn phí giao hàng</h3>
                <span>
                    Hiện nay, đồng hồ là phụ kiện thời trang thiết yếu đối với những người đàn ông hiện đại ngày nay
                </span>
            </div>
            <div class="section_child">
                <h3>Giá cả hợp lý</h3>
                <span>Hiện nay, đồng hồ là phụ kiện thời trang thiết yếu đối với những người đàn ông hiện đại ngày nay</span>
            </div>
        </div>
    </div>
    <div class="section_img">
        <img src="images/section_img.jpg" alt="photo" width="100%">
    </div>

    <div class="degi">

    </div>

    <div class="footter">
        <div class="footter_top">
            <div class="Thongtinlienhe">
                <h1>Thông Tin Liên Hệ</h1>
                <p>Địa chỉ:  Định Công, Hoàng Mai, Hà Nội</p>
                <p>SĐT: 1910192092</p>
                <p>Gmail: abc1234@gmail.com</p>
            </div>
            <div class="Lienket">
                <h1>Liên Kết</h1>
                <ul>
                    <li><a href="gioithieu.aspx">Giới thiệu</a></li>
                    <li><a href="donghonam.aspx">Đồng hồ nam</a></li>
                    <li><a href="donghonu.aspx">Đồng hồ nữ</a></li>
                    <li><a href="Lienhe.aspx">Liên hệ</a></li>
                </ul>
            </div>
            <div class="Lienket">
                <h1>Hỗ Trợ</h1>
                <ul>
                    <li><a href="#">Hướng dẫn mua hàng</a></li>
                    <li><a href="#">Hướng dẫn thanh toán</a></li>
                    <li><a href="#">Chính sách bảo hành</a></li>
                    <li><a href="#">Chính sách đổi trả</a></li>
                    <li><a href="#">Tư vấn khách hàng</a></li>
                </ul>
            </div>
        </div>
        <div class="footter_bot">
            <div class="copyright">
                © Bản quyền thuộc về nhóm 5
            </div>
        </div>

</body>
</html>
