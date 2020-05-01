<?php
function pageBanner($arg = null)
{
    if (!$arg['img']) {
        if (get_field('page_hero_image')['url']) {

            $arg['img'] = get_field('page_hero_image')['url'];
        } else {
            $arg['img'] = get_theme_file_uri('/images/ocean.jpg');

        }
    }
    if (!$arg['title']) {
        $arg['title'] = get_the_title();
    }
    if (!$arg['subtitle']) {
        $arg['subtitle'] = get_field('page_subtitle');
    }
    ?>
<div class="page-banner">
    <div class="page-banner__bg-image" style='background-image: url(
                        <?php echo $arg['img'] ?>
					);
					 background-size: cover;
                     background-repeat: no-repeat;
                     background-position: center'>
    </div>
    <div class="page-banner__content container container--narrow">
        <h1 class="page-banner__title"><?php echo $arg['title'] ?></h1>
        <div class="page-banner__intro">
            <p><?php echo $arg['subtitle'] ?></p>
        </div>
    </div>
</div>
<?php
}