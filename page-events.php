<?php

get_header();
pageBanner();
?>
<div class="container container--narrow page-section">
<?php
$events = new WP_Query(array(
    'post_type' => 'event',
    'posts_per_page' => 5,
    'paged' => get_query_var('paged'),
));
if ($events->have_posts()) {
    while ($events->have_posts()) {
        $events->the_post();
        get_template_part("/template/content", get_post_type());
    }
}
echo paginate_links(array(
    'prev_text' => 'Prev',
    'next_text' => 'Next',
    'total' => $events->max_num_pages,
));
?>

<hr class="section-break">

<p>Looking for a recap of past events? <a href="<?php echo site_url("/past-events"); ?>">Check out our past events archive.</a></p>

</div>

<?php
$_SESSION['page_title'] = wp_title('', false);
// $_SESSION['page_link'] = $_SERVER['REQUEST_URI'];

get_footer();

?>