<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"	uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>login</title>
	<link	href="/util/css/fontawesome-free-6.1.2-web/css/all.min.css"	rel="stylesheet"	type="text/css" >
	<link	href="/util/css/bootstrap-5.2.1-dist/css/bootstrap.min.css"	rel="stylesheet"	crossorigin="anonymous">
	<link	href="/css/boilerplate/sign-in/signin.css" rel="stylesheet">
	<script	src="/util/css/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"	crossorigin="anonymous"	defer ></script>
	

</head>
<body>

<main class="form-signin w-100 m-auto">
	<form>
		<img class="mb-4" src="/images/boilerplate/sign-in/bootstrap-logo.svg" alt="logo" width="72" height="57">
		<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

		<div class="form-floating">
			<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
			<label for="floatingInput">Email address</label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" id="floatingPassword" placeholder="Password">
			<label for="floatingPassword">Password</label>
		</div>

		<div class="checkbox mb-3">
			<label>
				<input type="checkbox" value="remember-me"> Remember me
			</label>
		</div>
		<button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
		<p class="mt-5 mb-3 text-muted">&copy; 2022</p>
	</form>
</main>

</body>
</html>