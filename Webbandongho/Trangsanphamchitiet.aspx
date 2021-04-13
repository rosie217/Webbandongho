<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangsanphamchitiet.aspx.cs" Inherits="Webbandongho.Trangsanphamchitiet" %>

<!DOCTYPE aspx>

<aspx xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<link rel="stylesheet" href="Style/Trangsanphamchitiet.css">
    <title>Đồng hồ Mona</title>
</head>
<body>
	<form id="form1" runat="server">
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
	<div>
	<div class="main">
		<asp:ListView ID="ListViewProductinformation" runat="server" >
			<ItemTemplate>
				<div class="anh">
					<img src="<%# Eval("Images") %>" title="ảnh đồng hồ">
				</div>

				<div class="content">
					<!----<p><a href="#">Trang chủ</a> / <a href="#">Đồng Hồ Nam</a></p>---->
					<h1 class="header-content"><%# Eval("Name") %></h1>
					<hr width="20px" />
					<p style="font-size:45px;color: #C89979;   " class="header-content"><b><%# Eval("Price") %> đồng</b></p>
					<p class="header-content"><%# Eval("Detail") %>
					</p>
					<ul class="header-content">
						<li>Sku: P006</li>
						<li>Categories: Butter & Eggs, Cultured Butter</li>
					</ul>
				</ItemTemplate>
		</asp:ListView>
		<div class="submit">
			<p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>
			<button type="submit" class="themvaogio" runat="server" ID="AddToCartButton1" onserverclick="AddToCartButton" >Thêm vào giỏ hàng</button>
		</div>
		</div>
		</div>
		<div class="footter">
			<div class="footter_top">
				<div class="Thongtinlienhe">
					<h1>Thông Tin Liên Hệ</h1>
					<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội </p>
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

		</div>
		</form>
	
</body>
</aspx>
