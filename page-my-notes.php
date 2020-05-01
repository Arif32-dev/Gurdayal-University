<?php
if (!is_user_logged_in()) {
    wp_redirect(site_url('/'));
    exit;
}
?>
<?php
get_header();
pageBanner();
?>
<div class="container container--narrow page-section">
    <div class="create-note">
        <h2 class="headline headline--medium">Create New Note</h2>
        <input class="new-note-title" type="text" placeholder="Enter the title here...">
        <textarea class="new-note-body" placeholder="Your note here..."></textarea>
        <span class="submit-note">Create Note</span>
        <span class="note-limit-message">Note limit reached. Delete an existing note to create new one</span>
    </div>
    <ul class="min-list link-list" id='my-notes'>
        <?php
$notes = new WP_Query(array(
    'post_type' => 'note',
    'posts_per_page' => -1,
    'author' => get_current_user_id(),
));
if ($notes->have_posts()) {
    while ($notes->have_posts()) {
        $notes->the_post();
        ?>
        <li >
            <input readonly class="note-title-field" type="text" value="<?php echo esc_attr(str_replace("Private: ", "", get_the_title())) ?>">
            <span id="<?php echo get_the_ID() ?>" class="edit-note"> <i class="fa fa-pencil"></i> Edit</span>
            <span id="<?php echo get_the_ID() ?>" class="delete-note"> <i class="fa fa-trash-o"></i> Delete</span>
            <textarea readonly class="note-body-field"><?php echo esc_attr(get_the_content()) ?></textarea>
            <span id="<?php echo get_the_ID() ?>" class="update-note btn btn--blue"> <i
                    class="fa fa-arrow-right"></i>Save</span>
        </li>
        <?php
}
}
?>
    </ul>
</div>
<?php
get_footer()
?>