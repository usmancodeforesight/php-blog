<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
	<?php include(ROOT_PATH . '/admin/includes/header.php'); ?>
	<title>Admin | Dashboard</title>
</head>
<body>
	<!-- admin navbar -->
  <?php include(ROOT_PATH . '/admin/includes/navbar.php') ?>
	
	<div class="container dashboard">
		<h1>Welcome</h1>
		<div class="stats">
			<a href="users.php" class="first">
				<span>1</span> <br>
				<span>Newly registered users</span>
			</a>
			<a href="posts.php">
				<span>2</span> <br>
				<span>Published posts</span>
			</a>
			<a>
				<span>0</span> <br>
				<span>Published comments</span>
			</a>
		</div>
		<br><br><br>
		<div class="buttons">
			<a href="users.php">Add Users</a>
			<a href="posts.php">Add Posts</a>
		</div>
	</div>
</body>
</html>