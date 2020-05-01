<?php
// Register Custom Post Type Note
function create_note_cpt()
{

    $labels = array(
        'name' => _x('Notes', 'Post Type General Name', 'university'),
        'singular_name' => _x('Note', 'Post Type Singular Name', 'university'),
        'menu_name' => _x('Notes', 'Admin Menu text', 'university'),
        'name_admin_bar' => _x('Note', 'Add New on Toolbar', 'university'),
        'archives' => __('Note Archives', 'university'),
        'attributes' => __('Note Attributes', 'university'),
        'parent_item_colon' => __('Parent Note:', 'university'),
        'all_items' => __('All Notes', 'university'),
        'add_new_item' => __('Add New Note', 'university'),
        'add_new' => __('Add New', 'university'),
        'new_item' => __('New Note', 'university'),
        'edit_item' => __('Edit Note', 'university'),
        'update_item' => __('Update Note', 'university'),
        'view_item' => __('View Note', 'university'),
        'view_items' => __('View Notes', 'university'),
        'search_items' => __('Search Note', 'university'),
        'not_found' => __('Not found', 'university'),
        'not_found_in_trash' => __('Not found in Trash', 'university'),
        'featured_image' => __('Featured Image', 'university'),
        'set_featured_image' => __('Set featured image', 'university'),
        'remove_featured_image' => __('Remove featured image', 'university'),
        'use_featured_image' => __('Use as featured image', 'university'),
        'insert_into_item' => __('Insert into Note', 'university'),
        'uploaded_to_this_item' => __('Uploaded to this Note', 'university'),
        'items_list' => __('Notes list', 'university'),
        'items_list_navigation' => __('Notes list navigation', 'university'),
        'filter_items_list' => __('Filter Notes list', 'university'),
    );
    $args = array(
        'label' => __('Note', 'university'),
        'description' => __('', 'university'),
        'labels' => $labels,
        'menu_icon' => 'dashicons-format-aside',
        'supports' => array('title', 'editor', 'excerpt', 'author'),
        'taxonomies' => array(),
        'public' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'show_in_admin_bar' => true,
        'show_in_nav_menus' => true,
        'can_export' => true,
        'has_archive' => true,
        'hierarchical' => false,
        'exclude_from_search' => false,
        'show_in_rest' => true,
        'publicly_queryable' => true,
        'capability_type' => 'note',
        'map_meta_cap' => true,
    );
    register_post_type('note', $args);

}
add_action('init', 'create_note_cpt', 0);
