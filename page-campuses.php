<?php
get_header();
pageBanner(array(
    'title' => 'Our Campuses',
    'subtitle' => 'We have several convieniently located campuses',
));
?>
<div class="container container--narrow page-section">
     <div class="related_programs">
          <h2>Our campuses:</h2>

          <?php
$campus = new WP_Query(array(
    'post_type' => 'campus',
    'posts_per_page' => -1,
));
if ($campus->have_posts()) {
    while ($campus->have_posts()) {
        $campus->the_post();
        ?>

          <a href="<?php echo get_the_permalink() ?>">
               <li><?php echo get_the_title() ?></li>
          </a>
          <?php
}
}
?>
     </div>
</div>
<?php
$_SESSION['page_title'] = wp_title('', false);
// $_SESSION['page_link'] = $_SERVER['REQUEST_URI'];
get_footer();
?>