<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- All CSS and JS Encoding Link and scripts -->
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" href="CSS/style.css" />

<title>NoteMaker : Homepage</title>
</head>
<body>
	<div>
		<%@include file="navbar.jsp"%>
	</div>
	<!-- Hero Section -->
	<!-- Hero Section -->
	<section class="hero text-white py-8 bg_img">
		<div class="container text-center">
			<h1 class="display-3">Welcome to NoteMaker</h1>
			<h3 class="lead">Your one-stop note-taking solution</h3>
			<p class="mt-4">NoteMaker is designed to help you capture,
				organize, and share your ideas effortlessly. Whether you're a
				student, a professional, or someone who loves to stay organized,
				NoteMaker offers you the perfect platform to keep your notes in
				order.</p>
			<div class="row mt-5">
				<div class="col-md-4">
					<h4>Easy to Use</h4>
					<p>Our user-friendly interface ensures that you can start
						taking notes without any hassle. Just sign up and start noting!</p>
				</div>
				<div class="col-md-4">
					<h4>Secure and Reliable</h4>
					<p>Your notes are securely stored in the cloud, ensuring you
						can access them from anywhere, at any time, with peace of mind.</p>
				</div>
				<div class="col-md-4">
					<h4>Organize Efficiently</h4>
					<p>Use tags, categories, and search functionalities to keep
						your notes organized and easy to find. Never lose track of your
						ideas again.</p>
				</div>
			</div>
			<button class="btn btn-outline-info btn-lg py-2" href="all_notes.jsp">Get
				Started</button>
		</div>
	</section>

	<!-- Features Section -->
	<section class="features py-5 bg">
		<div class="container">
			<h2 class="display-5 pb-4">What can you do with NoteMaker?</h2>
			<div class="row justify-content-center">
				<div class="col-md-4 mb-4 d-flex align-items-stretch">
					<div class="card card-hover p-5">
						<img src="https://cdn-icons-png.flaticon.com/128/889/889648.png"
							alt="Sticky Note Icon" class="img-fluid mx-auto d-block mb-3">
						<h3 class="card-title">Create Notes</h3>
						<p class="card-text">Take notes quickly and easily with our
							intuitive interface</p>
					</div>
				</div>
				<div class="col-md-4 mb-4 d-flex align-items-stretch">
					<div class="card card-hover p-5">
						<img src="https://cdn-icons-png.flaticon.com/128/1001/1001371.png"
							alt="Edit Icon" class="img-fluid mx-auto d-block mb-3">
						<h3 class="card-title">Edit and Organize</h3>
						<p class="card-text">Edit and organize your notes with ease,
							using our powerful editing tools</p>
					</div>
				</div>
				<div class="col-md-4 mb-4 d-flex align-items-stretch">
					<div class="card card-hover p-5">
						<img src="https://cdn-icons-png.flaticon.com/128/3075/3075908.png"
							alt="Search Icon" class="img-fluid mx-auto d-block mb-3">
						<h3 class="card-title">Search and Filter</h3>
						<p class="card-text">Quickly search and filter your notes
							using our advanced search functionality</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Call to Action Section -->
	<section class="cta purple py-5">
		<div class="container">
			<h2 class="display-5 text-white">Ready to get started?</h2>
			<p class="text-white">Sign up now and start taking notes like a
				pro!</p>
			<button class="btn btn-light btn-lg ">Sign Up</button>
		</div>
	</section>

	<!-- Footer -->
	<div>
		<%@include file="footer.jsp"%>
	</div>


</body>
</html>