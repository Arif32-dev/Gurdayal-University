<?php

get_header();
pageBanner();
while (have_posts()) {
    the_post();
    ?>

    <div class="container container--narrow page-section">

        <?php
$parentId = wp_get_post_parent_id(get_the_ID());
    if ($parentId) {
        ?>

        <div class="metabox metabox--position-up metabox--with-home-link">
            <p>
                <a class="metabox__blog-home-link" href="<?php echo get_permalink($parentId); ?>">
                    <i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($parentId); ?>
                </a>
                <span class="metabox__main"><?php the_title()?></span>
            </p>
        </div>

        <?php }?>

        <?php
$hasPages = get_pages(array(
        "child_of" => get_the_ID(),
    ));
    if ($parentId or $hasPages) {
        ?>

            <div class="page-links">
            <h2 class="page-links__title"><a href="<?php echo get_permalink($parentId); ?>"><?php echo get_the_title($parentId); ?></a></h2>
            <ul class="min-list">
                <?php
$childOf = get_the_ID();
        if ($parentId) {
            $childOf = $parentId;
        }
        wp_list_pages(array(
            "title_li" => null,
            "child_of" => $childOf,
            "sort_column" => "menu_order",
        ));
        ?>
            </ul>
        </div>

        <?php }?>

        <div class="generic-content">
            <p>
                <?php the_content();?>
            </p>
        </div>
    </div>
<?php }

get_footer();

?>