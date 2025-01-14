<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tổng Quan</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/admin/asset/Css/Base.css'/>">
<link rel="stylesheet" href="<c:url value='/admin/asset/Css/grid.css'/>">
<link rel="stylesheet"
	href="<c:url value='/admin/asset/Font/fontawesome-free-6.0.0-web/css/all.min.css'/>">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.header {
	width: 100%;
	height: 50px;
	position: sticky;
	top: 0;
	z-index: 1;
	background-color: var(--primary-color);
}

.box-login {
	cursor: pointer;
	padding: 17px 10px;
	color: var(--white-color);
	border-left: 1px solid #fff;
	font-size: 1.4rem;
}

.box-login:hover .box-login-sub {
	display: flex;
}

.box-login-sub {
	position: absolute;
	top: 100%;
	right: 0;
	display: flex;
	flex-direction: column;
	width: 180px;
	display: none;
}

.box-login-sub button {
	border: none;
	padding: 10px;
	cursor: pointer;
	background-color: rgb(5, 163, 5);
	color: var(--white-color);
	font-size: 1.2rem;
	text-align: left;
	opacity: 1.5;
}

.box-login-sub button:hover {
	background-color: rgb(48, 189, 55);
}

.box-login-sub i {
	margin-right: 10px;
}

.container-nav {
	width: 235px;
	margin-top: 50px;
	display: flex;
	flex-direction: column;
	height: 100vh;
	background-color: rgb(216, 216, 216);
	position: fixed;
	top: 0;
	left: 0;
}

.container-nav button {
	display: block;
	background-color: #f3f3f3;
	color: black;
	padding: 20px;
	border: none;
	outline: none;
	text-align: left;
	cursor: pointer;
	font-size: 1.6rem;
}

.container-nav i {
	margin-right: 15px;
}

.container-tilte {
	font-size: 1.8rem;
	color: var(--primary-color);
	border-bottom: 2px solid var(--primary-color);
	padding-bottom: 10px;
}

.container-tilte i {
	margin-right: 5px;
}

.container-general {
	margin-top: 30px;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	background-color: #9abc32;
	border-radius: 5px;
	color: var(--white-color);
	padding: 0 20px;
}

.container-general i {
	font-size: 2rem;
	padding-right: 20px;
}

.container-general-right h3 {
	font-size: 1.5rem;
}

.container-detail {
	margin-top: 20px;
	border-radius: 5px;
	padding: 5px 10px;
}

.container-detail h3 i {
	font-size: 1.5rem;
	padding-right: 10px;
}

.container-detail h3 {
	font-size: 1.5rem;
}

.container-detail-row {
	padding-top: 10px;
	display: flex;
	justify-content: space-between;
	font-size: 1.4rem;
}

.container-detail-row-quantity {
	text-decoration: underline;
}
/* menu mobile */
.header-mobile__icon {
	display: none;
	position: absolute;
	top: 5px;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #fafafa;
}

.header-mobile__icon-link {
	font-size: 2.5rem;
	color: var(--primary-color);
	position: absolute;
	top: 8px;
	left: 8px;
}

#nav-mobile-input {
	display: none;
}

.header-mobile__menu {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	width: 170px;
	max-width: 100%;
	background-color: #fff;
	transform: translateX(-100%);
	transition: transform linear 0.2s, opacity linear 0.2s;
}

.header-mobile__control {
	padding: 15px;
	position: absolute;
	top: 0;
	right: 0;
}

.header-mobile__control-icon {
	font-size: 3rem;
	color: rgba(0, 0, 0, 0.4);
}

.header-mobile__list {
	padding: 30px 0;
	list-style: none;
}

.header-mobile__item-listsub {
	animation: FadeIn linear 0.2s;
	transition: all ease-in-out 0.2s;
	transform: translateY(-100%);
	display: none;
}

.header-mobile__item:hover .header-mobile__item-listsub {
	display: block;
	transform: translateY(0);
}

.header-mobile__item-link {
	text-decoration: none;
	color: rgba(0, 0, 0, 0.4);
	font-size: 1.6rem;
	font-weight: 500;
	display: block;
	padding: 12px 15px;
}

#nav-mobile-input:checked ~.over__lay {
	display: block;
}

#nav-mobile-input:checked ~.header-mobile__menu {
	z-index: 2;
	transform: translateX(0);
}
/* responsive */
/* Mobile & Tablet */
@media ( max-width : 1023px) {
	.hide-on-mobile-tablet {
		display: none;
	}
	.wide {
		width: 100%;
	}
	.header-mobile__icon {
		display: block;
	}
	.container-tabledata-search input, .container-tabledata-search button {
		width: 100%;
	}
	.header-mobile__item button {
		width: 100%;
		height: 45px;
		outline: none;
		border: none;
		margin-top: 10px;
		font-size: 1.5rem;
		background-color: var(--white-color);
		text-align: left;
	}
	.header-mobile__item button i {
		margin-right: 5px;
	}
	.container-tabledata-table table {
		font-size: 1rem;
	}
	.row {
		margin-left: 0;
		margin-right: 0;
	}
	.container-tabledata-table {
		overflow: scroll;
	}
	.container-data-input label {
		margin-bottom: 15px;
	}
}
/* Tablet */
@media ( min-width : 740px) and (max-width: 1023px) {
	.hide-on-tablet {
		display: none;
	}
}
/* Mobile */
@media ( max-width : 739px) {
	.hide-on-mobile {
		display: none;
	}
}
.wide-form {
        width: 150px; /* Set the width to your preferred value */
    }
</style>
</head>

<body>
	<div class="main">
		<div class="header">
			<div class="box-login fl-r">
				<span class="box-login-infor"> Xin Chào, <i
					class="fas fa-sort-down"></i>
				</span>
				<div class="box-login-sub">
					<button>
						<i class="fas fa-user-alt"></i>Tài Khoản
					</button>
					<button onclick="LogOut()">
						<i class="fas fa-sign-out-alt"></i>Đăng Xuất
					</button>
				</div>
			</div>
			<!-- mobile navbar -->
			<label for="nav-mobile-input" class="header-mobile__icon"> <i
				class="header-mobile__icon-link fa-solid fa-list"></i>
			</label> <input type="checkbox" name="" id="nav-mobile-input"
				autocomplete="off"> <label for="nav-mobile-input"
				class="over__lay"></label>
			<div class="header-mobile__menu">
				<label for="nav-mobile-input" class="header-mobile__control">
					<i
					class="header-mobile__control-icon fa-solid
                        fa-xmark"></i>
				</label>
				<ul class="header-mobile__list">
					<li class="header-mobile__item">
						<button onclick="TongQuan()">
							<i class="fa-brands
                            fa-bitcoin"></i>Tổng
							quan
						</button>
					</li>
					<li class="header-mobile__item">
						<button onclick="LoaiCv()">
							<i class="fa-solid
                            fa-layer-group"></i>Loại
							CV
						</button>
					</li>
					<li class="header-mobile__item">
						<button onclick="Cv()">
							<i class="fa-solid
                        fa-id-badge"></i>CV
						</button>
					</li>
					<li class="header-mobile__item">
						<button onclick="Ntd()">
							<i class="fa-solid fa-building"></i>Nhà Tuyển Dụng
						</button>
					</li>
					<li class="header-mobile__item">
						<button onclick="Uv()">
							<i class="fa-solid fa-user-pen"></i>Ứng Viên
						</button>
					</li>
					<li class="header-mobile__item">
						<button onclick="Nv()">
							<i class="fa-solid fa-user-check"></i>Nhân Viên
						</button>
					</li>
					<li class="header-mobile__item">
						<button>
							<i class="fa-solid fa-newspaper"></i>Tin Tức
						</button>
					</li>
					<li class="header-mobile__item">
						<button>
							<i class="fa-solid fa-gears"></i>Thiết Lập
						</button>
					</li>
				</ul>
			</div>
			<!-- * -->
		</div>
		<div class="container">
			<div class="row" style="margin-right: -5px;">
				<div class="col l-2">
					<div class="container-nav hide-on-mobile-tablet">
					<form action="/admin/indexadmin" method="get">
						<button style="border-right: 3px solid var(--primary-color);">
							<i class="fa-brands fa-bitcoin"></i>Tổng quan
						</button>
						</form>
						<form action="/loaicv" method="get">
						<button onclick="LoaiCv()">
							<i class="fa-solid fa-layer-group"></i>Loại CV
						</button>
						</form>
						<form action="/cv" method="get">
							<button type="submit">
								<i class="fa-solid fa-id-badge"></i>CV
							</button>
						</form>
						<form action="/nhatuyendung" method="get">
						<button onclick="Ntd()">
							<i class="fa-solid fa-building"></i>Nhà Tuyển Dụng
						</button>
						</form>
						<form action="/ungvien" method="get">
						<button onclick="Uv()">
							<i class="fa-solid fa-user-pen"></i>Ứng Viên
						</button>
						</form>
						<form action="/nhanvien" method="get">
						<button onclick="Nv()">
							<i class="fa-solid fa-user-check"></i>Nhân Viên
						</button>
						</form>						
						<button>
							<i class="fa-solid fa-newspaper"></i>Tin Tức
						</button>
						<button>
							<i class="fa-solid fa-gears"></i>Thiết Lập
						</button>
					</div>
				</div>
				<div class="col l-3 m-12 c-12 ">
					<h2 class="container-tilte">
						<i class="fa-solid fa-signal"></i> Hoạt Động Hôm Nay
					</h2>

					<div class="container-general">
						<i class="fa-solid fa-signal"></i>
						<div class="container-general-right">
							<h3>Số Lượng Tin Tuyển Dụng</h3>
							<h3>0</h3>
						</div>
					</div>

					<div class="container-detail" style="border: 1px solid #9abc32;">
						<h3>
							<i class="fa-solid fa-signal"></i> Hoạt Động
						</h3>
						<div class="container-detail-row"
							style="border-top: 1px solid #9abc32;">
							<span class="container-detail-row-money">Số tin tuyển dụng</span>
							<span class="container-detail-row-quantity">0</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Số tin tuyển dụng
								đã có ứng viên</span> <span class="container-detail-row-quantity">0</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Số ứng viên</span> <span
								class="container-detail-row-quantity">0</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Số lượng khách
								đánh giá</span> <span class="container-detail-row-quantity">0</span>
						</div>
					</div>
				</div>
				<div class="col l-4 m-12 c-12" style="margin-top: 45px;">
					<div class="container-general" style="background-color: #6FB3D0;">
						<i class="fa-solid fa-cloud"></i>
						<div class="container-general-right">
							<h3>Số ứng viên: 0</h3>
							<h3>Số lượng tin tuyển dụng: 0</h3>
						</div>
					</div>

					<div class="container-detail" style="border: 1px solid #6fb3d0;">
						<h3>
							<i class="fa-solid fa-signal"></i> Thông tin cơ sở dữ liệu<u></u>
						</h3>
						<div class="container-detail-row"
							style="border-top: 1px solid #6FB3D0;">
							<span class="container-detail-row-money">Tin tuyển dụng
								quá hạn</span> <span class="container-detail-row-quantity">0đ</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Tin tuyển dụng
								sắp hết hạn</span> <span class="container-detail-row-quantity">0</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Tin tuyển dụng ít
								người xem </span> <span class="container-detail-row-quantity">0</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Tin tuyển dụng
								quá định mức ứng viên</span> <span
								class="container-detail-row-quantity">0</span>
						</div>
					</div>
				</div>
				<div class="col l-3 m-12 c-12" style="margin-top: 45px;">
					<div class="container-general" style="background-color: #dd5533;">
						<i class="fa-solid fa-rotate-left"></i>
						<div class="container-general-right">
							<h3>Đánh giá khách hàng</h3>
							<h3>0</h3>
						</div>
					</div>

					<div class="container-detail" style="border: 1px solid #dd5533;">
						<h3>
							<i class="fa-solid fa-rotate-left"></i> Hoạt Động

						</h3>
						<div class="container-detail-row"
							style="border-top: 1px solid #dd5533;">
							<span class="container-detail-row-money">Lượng khách hàng
								hài lòng về dịch vụ</span> <span class="container-detail-row-quantity">0đ</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Số ưng viên hủy
								bỏ ứng tuyển</span> <span class="container-detail-row-quantity">0</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Số tin tuyển dụng
								không tiếp cận khách hàng</span> <span
								class="container-detail-row-quantity">0</span>
						</div>
						<div class="container-detail-row">
							<span class="container-detail-row-money">Khách hàng đánh
								giá </span> <span class="container-detail-row-quantity">0</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>