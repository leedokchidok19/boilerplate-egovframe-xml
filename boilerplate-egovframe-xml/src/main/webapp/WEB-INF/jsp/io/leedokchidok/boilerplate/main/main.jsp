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
	<script	src="/js/main/main.js"	crossorigin="anonymous"	defer ></script>
<!-- 날씨-->
<script	src="/js/weather/weather.js" defer></script>
<link	href="/css/weather/weather.css"	rel="stylesheet"	type="text/css" >
</head>
<body>

<!--	Container	-->
<div class="container">

<!--	Header	-->
	<header>
		<div class="collapse bg-dark" id="navbarHeader">
		<div class="container">
			<div class="row">
			<div class="col-sm-8 col-md-7 py-4">
				<h4 class="text-white">Menu</h4>
				<p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
			</div>
			<div class="col-sm-4 offset-md-1 py-4">
				<h4 class="text-white">Contact</h4>
				<ul class="list-unstyled">
				<li><a href="#" class="text-white">Follow on GiHub</a></li>
				<li><a href="#" class="text-white">See repositories</a></li>
				<li><a href="#" class="text-white">Sign up</a></li>
				</ul>
			</div>
			</div>
		</div>
		</div>
		<div class="navbar navbar-dark bg-dark shadow-sm">
		<div class="container">
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><!--Menu--></span>
			</button>
			<a href="#" class="navbar-brand d-flex align-items-center">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
				<strong>Leedokchidok</strong>
			</a>
			<a class="btn btn-dark" href="/login.do" role="button">Login</a>
		</div>
		</div>
	</header>
<!--	Header	-->

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

<!--	menu	-->
	<div class="d-flex flex-column flex-nowrap">
		<div class="flex-shrink-0 p-3 bg-white m-auto">
			<a href="#" class="d-flex justify-content-center align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				<svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
				<span class="fs-5 fw-semibold">Menu</span><!--Collapsible-->
			</a>
			<ul class="d-flex justify-content-center list-unstyled ps-0">
				<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
					Home
				</button>
				<div class="collapse" id="home-collapse" style="">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="/attendaceBook.do" class="link-dark d-inline-flex text-decoration-none rounded">AttendaceBook</a></li>
						<li><a href="/admin.do" class="link-dark d-inline-flex text-decoration-none rounded">Admin</a></li>
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
<!--	menu	-->

<!--	album	collapsible	bar	-->
	<ul id="hashtag" class="nav justify-content-center border-bottom pb-3 mb-3">
		<li class="nav-item px-2" data-type="0">#All</li>
		<li class="nav-item px-2" data-type="1">#portFolio</li>
		<li class="nav-item px-2" data-type="2">#Clone</li>
		<li class="nav-item px-2" data-type="3">#Study</li>
	</ul>
<!--	album	collapsible	bar	-->

<!--	Album	-->
	<div id="album" class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

		<div class="col" data-album-display="1">
			<div class="card shadow-sm">
			<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

			<div class="card-body">
				<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
				<div class="d-flex justify-content-between align-items-center">
				<div class="btn-group">
					<button type="button" class="btn btn-sm btn-outline-secondary">protFolio</button>
					<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
				</div>
				<small class="text-muted">9 mins</small>
				</div>
			</div>
			</div>
		</div>
		<div class="col" data-album-display="1">
			<div class="card shadow-sm">
			<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

			<div class="card-body">
				<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
				<div class="d-flex justify-content-between align-items-center">
				<div class="btn-group">
					<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
					<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
				</div>
				<small class="text-muted">9 mins</small>
				</div>
			</div>
			</div>
		</div>
		<div class="col" data-album-display="2">
			<div class="card shadow-sm">
			<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

			<div class="card-body">
				<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
				<div class="d-flex justify-content-between align-items-center">
				<div class="btn-group">
					<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
					<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
				</div>
				<small class="text-muted">9 mins</small>
				</div>
			</div>
			</div>
		</div>

	</div>
<!--	Album	-->

<!--	Footer	-->
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
<!--	Footer	-->

</div>
<!--	Container	-->

</body>
</html>