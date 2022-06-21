<?php
require_once('config.php');
require_once(ROOT_PATH . '/includes/functions.php');

// Retrieve all posts from database
$posts = getPublishedPosts();

require_once(ROOT_PATH . '/includes/header.php');

?>

<title>LifeBlog | Home </title>
</head>

<body>
  <!-- container - wraps whole page -->
  <div class="container">

    <!-- navbar -->
    <?php require_once(ROOT_PATH . '/includes/navbar.php') ?>
    <!-- // navbar -->

    <!-- Hero Banner -->
    <?php require_once(ROOT_PATH . '/includes/hero-banner.php') ?>
    <!-- // Hero Banner -->

    <!-- Page content -->
    <div class="content">
      <h2 class="content-title">Recent Articles</h2>
      <hr>

      <!-- more content still to come here ... -->

      <!-- Add this ... -->
      <?php foreach ($posts as $post) : ?>
        <div class="post" style="margin-left: 0px;">
          <img src="<?php echo BASE_URL . 'static/images/' . $post['image']; ?>" class="post_image" alt="">
          <a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
            <div class="post_info">
              <h3><?php echo $post['title'] ?></h3>
              <div class="info">
                <span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
                <span class="read_more">Read more...</span>
              </div>
            </div>
          </a>
        </div>
      <?php endforeach ?>


    </div>
    <!-- // Page content -->

    <!-- footer -->
    <?php require_once(ROOT_PATH . '/includes/footer.php') ?>