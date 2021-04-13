<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="Webbandongho.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link href="Style/trangchu.css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<div class="header">
		<div class="header_top" id="header-top">
			<p>Định Công, Hoàng Mai, Hà Nội</p>
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
		<div class="header_bot" id="header-bot">
			<ul>
				<li><a href="Trangchu.aspx">Trang chủ</a></li>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
				<li><a href="donghonam.aspx">Đồng hồ nam</a></li>
				<li><a href="donghonu.aspx">Đồng hồ nữ</a></li>
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				<li><a href="Giohang.aspx">Giỏ hàng</a></li>
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>

	<div class="banner">
		<div class="noidung_banner">
				<h2>Mona Watch</h2>
				<h1>Đồng hồ Classio</h1>
				<p>Cùng với sự phát triển không ngừng của thời trang thế giới, rất nhiều thương hiệu cho ra đời những mẫu đồng hồ nam chính hãng đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ…</p>
		</div>
		<img id="img" src="images/banner-1.jpg" width="auto">
	</div>
	
	<div class="dongho">
		<div class="left">
			<div class="p_dongho">
				<h2>Xu hướng 2021</h2>
				<h1>Đồng hồ nam</h1>
			</div>
		</div>
		<div class="right">
			<div class="p_dongho">
				<h2>Xu hướng 2021</h2>
				<h1>Đồng hồ nữ</h1>
			</div>
		</div>
	</div>
	<h1 class="h1">Sản phẩm bán chạy</h1>
	<div class="sanpham">
			<asp:ListView ID="sanphambanchay" runat="server">
				<ItemTemplate>
					<div class="sanphambanchay">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh1" width="200" height="80" src="<%# Eval("Images") %>" title="Đồng Hồ">
						<div class="sanphambanchay_gia" id="sanpham1">
							<strong id="ten1"><%# Eval("Name") %></strong>
							<p id="gia1"><%# Eval("Price") %> đồng</p>
						</div>
					</a>
					</div>
				</ItemTemplate>
			</asp:ListView>
	</div>
	<div class="dongho_1">
		<div class="left_dongho1">
			<div class="p_dongho1">
				<h1>CỔ ĐIỂN</h1>
				<h3>Đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ…</h3>
			</div>
		</div>
		<div class="right_dongho1">
			<div class="p_dongho1">
				<h1>SMART WATCH</h1>
				<h3>Đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ…</h3>
			</div>
		</div>
	</div>
	<div class="luachonsanpham2">
		<ul>
			<li><a href="#"><h1>Sản phẩm phổ biến</h1></a></li>	
		</ul>
	</div>
			<div class="sanpham2">
				<asp:ListView ID="sanphamphobien" runat="server">
		<ItemTemplate>
				<div class="sanphamphobien">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh2" width="200" height="80" src="<%# Eval("Images") %>" title="Đồng Hồ">
						<div class="sanphamphobien_gia">
							<strong><%# Eval("Name") %></strong>
							<p><%# Eval("Price") %> đồng</p>
						</div>
					</a>
				</div>
			</ItemTemplate>
	</asp:ListView>
			</div>
		
	<div class="tintucdongho">
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="images/tintuc1.jpg" title="Đồng Hồ">
					<h5>Chiếc đồng hồ của những CEO quyền lực nhất thế giới</h5>
					<p>Đối với một số doanh nhân, một chiếc đồng hồ đeo tay không chỉ là ...</p>
				</a>	
			</div>
		</div>
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="images/tintuc2.jpg" title="Đồng Hồ">
					<h5>12 chiếc đồng hồ dành cho nữ giới đắt giá nhất mọi thời đại</h5>
					<p>Công nghiệp sản xuất đồng hồ sang trọng có dấu hiệu chững lại trong hai ...</p>
				</a>	
			</div>
		</div>
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="images/tintuc3.jpg" title="Đồng Hồ">
					<h5>10 thương hiệu đồng hồ cao cấp hàng đầu mọi quý ông đều quan tâm, Rolex xếp hạng số 3...</h5>
					<p>1. Audemars Piguet Được thành lập vào năm 1875 bởi Jules-Louis Audemars và Edward-Auguste Piguet, ...</p>
				</a>	
			</div>
		</div>
	</div>
	
	<div class="footter">
		<div class="footter_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội	</p>
				<p>SĐT: 1910192092</p>
				<p>Gmail: abc1234@gmail.com</p>
			</div>
			<div class="Lienket">
				<h1>Liên Kết</h1>
				<ul>
					<li><a href="gioithieu.html">Giới thiệu</a></li>
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
	</div>
	<script>
        var i = 1;
		function chuyenhinh() {
            var hinh = ["images/banner-1.jpg", "images/banner_2.jpg"];
            document.getElementById('img').src = hinh[i];
            i++;
            if (i > 1) {
                i = 0;
            }
            setTimeout(chuyenhinh, 3*1000);
		}
        chuyenhinh()
		function responsive()
		{
			var x = document.getElementById("header-bot");
			if (x.className === "header_bot"){
				x.className += "responsive";
			}
			else {
				x.className = "header_bot";
            }
		}
    </script>
</body>
</html>
