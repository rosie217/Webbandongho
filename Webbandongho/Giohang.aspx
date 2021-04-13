<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="Webbandongho.Giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<link rel="stylesheet" href="Style/giohang.css">
    <title>Giỏ hang</title>
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

	<div class="main">
		<p class="sogiohang" id="sogiohang" runat="server"></p>
		<div class="cart_product">
			<table class="bang">
						<tr>
							<th>Ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th>Tác vụ</th>
						</tr>
			<asp:ListView ID="ListViewCart" runat="server">
				<ItemTemplate>
						<tr>
							<td class="td1"><img src= "<%# Eval("Images") %>" class="anh" /></td>
							<td><p><%# Eval("Name") %></p></td>
							<td><p><%# Eval("Price") %> đồng</p></td>
							<td><a href="Xoagiohang.aspx?id=<%#Eval("Id")%>" class="xoa"><button class="xoa">Xóa</button></a></td>
						</tr>
				</ItemTemplate>
			</asp:ListView>
			</table>
		</div>
		<div class="cart_price">
			<div class="cart--right">
                    <h2 class="cart__title--right">Đơn hàng<br></h2>
                    <div class="cart__products-total-price">
                        <p>Tổng tiền sản phẩm</p>
                        <p runat="server" id="products_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <!--<div class="cart__delivery-price">
                        <p>Tổng phí giao hàng</p>
                        <p runat="server" id="delivery_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <hr>--->
                    <div class="cart__order-total">
                        <p>Tổng cộng: </p>
                        <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <!-----<hr>--->
                    <div class="cart__buttons--right">
                        <button class="purchase-button" type="button">Thanh toán</button>
                    </div>
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
						<li><a href="#">Giới thiệu</a></li>
						<li><a href="#">Đồng hồ nam</a></li>
						<li><a href="#">Đồng hồ nữ</a></li>
						<li><a href="#">Blogs</a></li>
						<li><a href="#">Liên hệ</a></li>
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
</body>

</html>

