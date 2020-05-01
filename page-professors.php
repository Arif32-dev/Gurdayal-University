<?php

get_header();
pageBanner(array(
    'subtitle' => 'Our professor who is responsible for nation',
));
$professor = new WP_Query(array(
    'post_type' => 'professor',
    'posts_per_page' => 3,
    'paged' => get_query_var('paged'),
));
if ($professor->have_posts()) {
    while ($professor->have_posts()) {
        $professor->the_post();
        ?>
    <div class="container container--narrow page-section">
            <?php get_template_part('template/content', get_post_type())?>
    </div>
<?php }
    ?>
<div class="pagination-link">
<?php
echo paginate_links(array(
        'prev_text' => 'Prev',
        'next_text' => 'Next',
        'total' => $professor->max_num_pages,
    ));
    ?>
    </div>
    <?php
}
$_SESSION['page_title'] = wp_title('', false);
get_footer();

?>