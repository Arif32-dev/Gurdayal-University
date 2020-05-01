<?php
// Register Custom Post Type Event
function create_event_cpt()
{

    $labels = array(
        'name' => _x('Events', 'Post Type General Name', 'university'),
        'singular_name' => _x('Event', 'Post Type Singular Name', 'university'),
        'menu_name' => _x('Events', 'Admin Menu text', 'university'),
        'name_admin_bar' => _x('Event', 'Add New on Toolbar', 'university'),
        'archives' => __('Event Archives', 'university'),
        'attributes' => __('Event Attributes', 'university'),
        'parent_item_colon' => __('Parent Event:', 'university'),
        'all_items' => __('All Events', 'university'),
        'add_new_item' => __('Add New Event', 'university'),
        'add_new' => __('Add New', 'university'),
        'new_item' => __('New Event', 'university'),
        'edit_item' => __('Edit Event', 'university'),
        'update_item' => __('Update Event', 'university'),
        'view_item' => __('View Event', 'university'),
        'view_items' => __('View Events', 'university'),
        'search_items' => __('Search Event', 'university'),
        'not_found' => __('Not found', 'university'),
        'not_found_in_trash' => __('Not found in Trash', 'university'),
        'featured_image' => __('Featured Image', 'university'),
        'set_featured_image' => __('Set featured image', 'university'),
        'remove_featured_image' => __('Remove featured image', 'university'),
        'use_featured_image' => __('Use as featured image', 'university'),
        'insert_into_item' => __('Insert into Event', 'university'),
        'uploaded_to_this_item' => __('Uploaded to this Event', 'university'),
        'items_list' => __('Events list', 'university'),
        'items_list_navigation' => __('Events list navigation', 'university'),
        'filter_items_list' => __('Filter Events list', 'university'),
    );
    $args = array(
        'label' => __('Event', 'university'),
        'description' => __('', 'university'),
        'labels' => $labels,
        'menu_icon' => 'dashicons-calendar',
        'supports' => array('title', 'editor', 'excerpt', 'thumbnail', 'custom-fields'),
        'taxonomies' => array(),
        'public' => true,
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
        'capability_type' => 'post',
    );
    register_post_type('event', $args);

}
add_action('init', 'create_event_cpt', 0);
