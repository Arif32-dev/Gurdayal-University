<?php

get_header();
pageBanner();
?>

<div class="container container--narrow page-section">

<ul class="link-list min-list">

<?php
$programs = new WP_Query(array(
    'post_type' => 'program',
    'posts_per_page' => 3,
    'paged' => get_query_var('paged'),
));
while ($programs->have_posts()) {
    $programs->the_post();
    ?>
    <li>
        <a href="<?php the_permalink();?>"><?php the_title();?></a>
    </li>
<?php
}
echo paginate_links(array(
    'prev_text' => 'Prev',
    'next_text' => 'Next',
    'total' => $programs->max_num_pages,
));
?>
</ul>

</div>

<?php

get_footer();

?>