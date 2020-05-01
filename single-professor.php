<?php

get_header();

pageBanner();
if (have_posts()) {
    the_post();
    ?>
<div class="container container--narrow page-section">
    <div class="metabox metabox--position-up metabox--with-home-link">
        <p>
            <a class="metabox__blog-home-link" href="<?php
if ($_SERVER['HTTP_REFERER']) {
        echo $_SERVER['HTTP_REFERER'];
    } else {
        echo site_url('/professors/');
    }
    ?> ">
                <i class="fa fa-home" aria-hidden="true"></i> <?php
if ($_SESSION['page_title'] != "Page not found" && $_SESSION['page_title'] != "") {
        echo $_SESSION['page_title'];
    } else {
        echo 'Professors';
    }
    ?>
            </a>
            <span class="metabox__main"><?php the_title()?></span>
        </p>
    </div>
    <div class="container container--narrow page-section">

        <div class="generic-content">
            <div class="row group">
                <div class="one-third">
                    <img src="<?php echo get_the_post_thumbnail_url() ?>" alt="">
                </div>
                <?php
$like_exits = 'no';
    $exits_query = new WP_Query(array(
        "author" => get_current_user_id(),
        'post_type' => 'like',
        'meta_query' => array(
            array(
                'key' => 'liked_professor_id',
                'compare' => '=',
                'value' => get_the_ID(),
            ),
        ),
    ));
    // echo "<script>alert(" . get_current_user_id() . ")</script>";
    if ($exits_query->found_posts > 0) {
        if (is_user_logged_in()) {
            $like_exits = "yes";
        }
    }

    ?>
            <span data-like-id = "<?php echo $exits_query->posts[0]->ID ?>"
                data-user-id="<?php echo get_current_user_id() ?>"
                data-professor-id="<?php echo get_the_ID() ?>"
                class="like-box" data-exists="<?php echo $like_exits ?>">
                <i class="fa fa-heart-o"></i>
                <i class="fa fa-heart"></i>
                <?php
$like_count = new WP_Query(array(
        'post_type' => 'like',
        'meta_query' => array(
            array(
                'key' => 'liked_professor_id',
                'compare' => '=',
                'value' => get_the_ID(),
            ),
        ),
    ));

    ?>
                    <span class="like-count">
                        <?php
if ($like_count->have_posts()) {
        echo $like_count->found_posts;
    } else {
        echo "0";
    }
    ?>
                    </span>
                </span>
                <?php the_content();?>
            </div>
        </div>
    </div>
    <?php
$relatedPrograms = get_field("related_programs");

    if ($relatedPrograms) {
        echo '<hr class="section-break">';
        echo '<h2 class="headline headline--medium">Subject(s) Taught</h2>';
        echo '<ul class="link-list min-list">';
        foreach ($relatedPrograms as $program) {
            ?>
    <li>
        <a href="<?php echo get_the_permalink($program); ?>"><?php echo get_the_title($program); ?></a>
    </li>
    <?php
}
        echo '</ul>';
    }
    ?>
</div>
</div>
<?php }
?>
<?php
get_footer();
?>