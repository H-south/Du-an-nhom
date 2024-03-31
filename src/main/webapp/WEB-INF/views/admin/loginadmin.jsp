<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
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
body {
	background-image:
		url("/admin/asset/Img/screen-shot-2021-11-26-at-14-44-04-png-20211126144425ScQHWX56fQ.png");
	background-repeat: no-repeat;
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 70vh;
}
/* login */
.auth-form-login {
	width: 500px;
	border-radius: 5px;
	overflow: hidden;
	background-color: var(--white-color);
	margin-top: auto;
}

.hide {
	display: none;
}

.auth-form__container {
	padding: 0 32px;
}

.auth-form__header {
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 0 12px;
	margin-top: 10px;
	color: var(--primary-color);
}

.auth-form__heading {
	text-align: center;
	font-size: 2.2rem;
	font-weight: 400;
}

.auth-form__switch-btn {
	font-size: 1.6rem;
	font-weight: 450;
	color: var(--primary-color);
	cursor: pointer;
}

.auth-form__group {
	position: relative;
}

.auth-form__group i#passicon {
	color: var(--primary-color);
	font-size: 1.4rem;
	position: absolute;
	top: 30px;
	right: 10px;
	left: auto;
	cursor: pointer;
}

.auth-form__group i {
	color: var(--primary-color);
	font-size: 1.4rem;
	position: absolute;
	top: 30px;
	left: 10px;
}

.auth-form__input {
	width: 100%;
	height: 40px;
	margin-top: 16px;
	padding: 0 30px;
	font-size: 1.4rem;
	border: 1px solid #999;
	border-radius: 2px;
	outline: none;
}

.auth-form__input:focus {
	border-color: #777;
}

.auth-form__aside {
	margin-top: 18px;
}

.auth-form__policy-text {
	font-size: 1.2rem;
	line-height: 1.8rem;
	text-align: center;
	padding: 0 12px;
}

.auth-form__text-link {
	color: var(--primary-color);
	text-decoration: none;
}

.auth-form__controls {
	margin-top: 80px;
	display: flex;
	justify-content: flex-end;
	margin-bottom: 22px;
}

.auth-form__controls-back {
	margin-right: 8px;
}

.auth-form__socials {
	background-color: #f5f5f5;
	padding: 16px 36px;
	display: flex;
	justify-content: space-between;
}

.auth-form__help {
	display: flex;
	justify-content: flex-end;
}

.auth-form__help-link {
	font-size: 1.4rem;
	text-decoration: none;
	color: #939393;
}

.auth-form__help-forgot {
	color: var(--primary-color);
}

.auth-form__separate {
	display: block;
	height: 22px;
	margin: -5px 16px 0;
	border-left: 1px solid #eaeaea;
}

.btn {
	min-width: 124px;
	height: 34px;
	text-decoration: none;
	border: none;
	border-radius: 2px;
	font-size: 1.5rem;
	padding: 0 12px;
	outline: none;
	color: var(--text-color);
	cursor: pointer;
	background-color: var(--white-color);
	display: inline-flex;
	justify-content: center;
	align-items: center;
	line-height: 1.6rem;
	border: 1px solid #ccc;
}

.btn--size-s {
	height: 32px;
	font-size: 12px;
	padding: 0 8px;
}

.btn.btn-nomal:hover {
	background-color: rgba(0, 0, 0, 0.05);
}

.btn.btn__primary {
	background-color: var(--primary-color);
	color: var(--white-color);
}
</style>
</head>

<body>
	<form action="/admin/login" method="post">
		<div class="auth-form-login">
			<div class="auth-form__container">
				<div class="auth-form__header">
					<h3 class="auth-form__heading">Đăng Nhập</h3>
				</div>

				<div class="auth-form__form">
					<div class="auth-form__group">
						<i class="fa-solid fa-user"></i> <input type="text"
							class="auth-form__input" id="tk" name="tk"
							placeholder="Nhập tên đăng nhập....">
					</div>
					<div class="auth-form__group">
						<i class="fa-solid fa-key"></i> <input type="password"
							class="auth-form__input" id="mk" name="mk"
							placeholder="Nhập mật khẩu...."> <i
							class="fa-solid fa-eye" id="passicon"></i>
					</div>
				</div>
			</div>
			<div class="auth-form__aside">
				<div class="auth-form__help">
					<a href=""
						class="auth-form__help-link
                        auth-form__help-forgot">Quên
						mật khẩu</a> <span class="auth-form__separate"></span> <a href=""
						class="auth-form__help-link">Cần trợ giúp?</a>
				</div>
			</div>

			<div class="auth-form__controls">
				<button
					class="btn auth-form__controls-back
                    btn-nomal">TRỞ
					LẠI</button>
				<button class="btn btn__primary" id="btn__primary" type="submit">ĐĂNG
					NHẬP</button>
			</div>
		</div>
		</div>
	</form>
</body>

</html>