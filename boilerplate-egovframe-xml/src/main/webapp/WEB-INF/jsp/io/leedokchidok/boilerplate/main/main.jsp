<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Main</title>
	<link	href="/util/css/fontawesome-free-6.1.2-web/css/all.min.css"	rel="stylesheet"	type="text/css" >
	<link	href="/util/css/bootstrap-5.2.1-dist/css/bootstrap.min.css"	rel="stylesheet"	crossorigin="anonymous">
	<link	href="/util/css/bootstrap-5.2.1-dist/icons-1.9.1/font/bootstrap-icons.css"	rel="stylesheet"	crossorigin="anonymous">
	<script	src="/util/css/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"	crossorigin="anonymous"	defer ></script>
</head>
<body>

<div class="container">
	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
		<a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
				<use xlink:href="#bootstrap"></use>
			</svg>
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
			<li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
		</ul>

		<div class="col-md-3 text-end">
			<button type="button" class="btn btn-outline-primary me-2"><a href="/login.do" class="btn">Login</a></button>
		</div>
	</header>

<!--	carousel	-->
	<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
	    <div class="carousel-indicators">
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
	    </div>
	    <div class="carousel-inner">
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>
	
	        <div class="container">
	          <div class="carousel-caption text-start">
	            <h1>Example headline.</h1>
	            <p>Some representative placeholder content for the first slide of the carousel.</p>
	            <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>
	
	        <div class="container">
	          <div class="carousel-caption">
	            <h1>Another example headline.</h1>
	            <p>Some representative placeholder content for the second slide of the carousel.</p>
	            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item active">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>
	
	        <div class="container">
	          <div class="carousel-caption text-end">
	            <h1>One more for good measure.</h1>
	            <p>Some representative placeholder content for the third slide of this carousel.</p>
	            <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
	          </div>
	        </div>
	      </div>
	    </div>
	    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Previous</span>
	    </button>
	    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Next</span>
	    </button>
	  </div>
<!--	carousel	-->

	<div class="d-flex flex-nowrap">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
			<a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				<svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
				<span class="fs-5 fw-semibold">Collapsible</span>
			</a>
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
					Home
				</button>
				<div class="collapse" id="home-collapse" style="">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="/attendaceBook.do" class="link-dark d-inline-flex text-decoration-none rounded">출석부</a></li>
						<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Updates</a></li>
						<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Reports</a></li>
					</ul>
				</div>
				</li>
				<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
					Dashboard
				</button>
				<div class="collapse" id="dashboard-collapse" style="">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
					</ul>
				</div>
				</li>
				<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
					Orders
				</button>
				<div class="collapse" id="orders-collapse" style="">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Processed</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Shipped</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Returned</a></li>
					</ul>
				</div>
				</li>
				<li class="border-top my-3"></li>
				<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
					Account
				</button>
				<div class="collapse" id="account-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New...</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Profile</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Settings</a></li>
					<li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Sign out</a></li>
					</ul>
				</div>
				</li>
			</ul>
		</div>
	</div>

	<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center">
			<a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
			<svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
			</a>
			<span class="mb-3 mb-md-0 text-muted">© 2022 Company, Inc</span>
		</div>
	
		<ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
			<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg></a></li>
			<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"></use></svg></a></li>
			<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"></use></svg></a></li>
		</ul>
	</footer>

</div>

</body>
</html>