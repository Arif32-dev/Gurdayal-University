<?php
// Register Custom Post Type Campus
function create_campus_cpt()
{

    $labels = array(
        'name' => _x('Campuses', 'Post Type General Name', 'university'),
        'singular_name' => _x('Campus', 'Post Type Singular Name', 'university'),
        'menu_name' => _x('Campuses', 'Admin Menu text', 'university'),
        'name_admin_bar' => _x('Campus', 'Add New on Toolbar', 'university'),
        'archives' => __('Campus Archives', 'university'),
        'attributes' => __('Campus Attributes', 'university'),
        'parent_item_colon' => __('Parent Campus:', 'university'),
        'all_items' => __('All Campuses', 'university'),
        'add_new_item' => __('Add New Campus', 'university'),
        'add_new' => __('Add New', 'university'),
        'new_item' => __('New Campus', 'university'),
        'edit_item' => __('Edit Campus', 'university'),
        'update_item' => __('Update Campus', 'university'),
        'view_item' => __('View Campus', 'university'),
        'view_items' => __('View Campuses', 'university'),
        'search_items' => __('Search Campus', 'university'),
        'not_found' => __('Not found', 'university'),
        'not_found_in_trash' => __('Not found in Trash', 'university'),
        'featured_image' => __('Featured Image', 'university'),
        'set_featured_image' => __('Set featured image', 'university'),
        'remove_featured_image' => __('Remove featured image', 'university'),
        'use_featured_image' => __('Use as featured image', 'university'),
        'insert_into_item' => __('Insert into Campus', 'university'),
        'uploaded_to_this_item' => __('Uploaded to this Campus', 'university'),
        'items_list' => __('Campuses list', 'university'),
        'items_list_navigation' => __('Campuses list navigation', 'university'),
        'filter_items_list' => __('Filter Campuses list', 'university'),
    );
    $args = array(
        'label' => __('Campus', 'university'),
        'description' => __('', 'university'),
        'labels' => $labels,
        'menu_icon' => 'dashicons-location',
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
    register_post_type('campus', $args);

}
add_action('init', 'create_campus_cpt', 0);
