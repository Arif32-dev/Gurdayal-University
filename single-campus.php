<?php

get_header();
pageBanner();
?>

<div class="container container--narrow page-section">
    <div class="metabox metabox--position-up metabox--with-home-link">
        <p>
            <a class="metabox__blog-home-link" href="<?php echo $_SERVER['HTTP_REFERER']; ?>">
                <i class="fa fa-home" aria-hidden="true"></i> <?php echo $_SESSION['page_title']; ?>
            </a>
            <span class="metabox__main"><?php the_title()?></span>
        </p>
    </div>
    <!-- /*
=================================
Campus Location details
=================================
 */ -->

    <div class="address-container">
        <?php
while (have_posts()) {
    the_post();
    ?>
        <div class="map_address">
            <h1><?php the_title()?></h1>
            <p class='content'><?php echo get_the_content() ?></p>
            <div>
                <h2>Address : </h2>
                <p class='address'><?php echo get_field('address') ?></p>
                <p class='phone'><span class='phn-title'>Phone Number :
                    </span><span><?php echo get_field('phone_number') ?></span></p>
            </div>
        </div>

    </div>

    <!-- /*
=================================
Campus Location Map
=================================
 */ -->
    <div class="mapouter">
        <div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas"
                src="<?php echo get_field('google_url') ?>" frameborder="0" scrolling="no" marginheight="0"
                marginwidth="0"></iframe><a
                href="https://www.embedgooglemap.net/blog/private-internet-access-coupon/">pia deals</a></div>
        <style>
            .mapouter {
                position: relative;
                text-align: right;
                height: 500px;
                width: 100%;
                position: relative !important;
                padding-top: 40px;
            }

            .gmap_canvas {
                overflow: hidden;
                background: none !important;
                height: 500px;
            }
        </style>
    </div>
    <?php
}
?>
    <?php
$relatedPrograms = new WP_Query(array(
    "posts_per_page" => -1,
    "post_type" => "program",
    "orderby" => "title",
    "order" => "ASC",
    "meta_query" => array(
        array(
            "key" => "related_campus",
            "compare" => "LIKE",
            "value" => '"' . get_the_ID() . '"',
        ),
    ),
));

if ($relatedPrograms->have_posts()) {
    echo '<hr class="section-break">';
    echo '<h2 class="headline headline--medium">Programs Availale At This Campus</h2>';
    echo '<ul class="min-list link-list">';
    while ($relatedPrograms->have_posts()) {
        $relatedPrograms->the_post();
        ?>
    <li>
        <a href="<?php the_permalink();?>">
            <?php the_title();?>
        </a>
    </li>
    <?php
}
    echo '</ul>';
}
wp_reset_postdata();
?>
</div>
<?php
get_footer();

?>