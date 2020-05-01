<?php
// Register Custom Post Type Like
function create_like_cpt()
{

    $labels = array(
        'name' => _x('Likes', 'Post Type General Name', 'textdomain'),
        'singular_name' => _x('Like', 'Post Type Singular Name', 'textdomain'),
        'menu_name' => _x('Likes', 'Admin Menu text', 'textdomain'),
        'name_admin_bar' => _x('Like', 'Add New on Toolbar', 'textdomain'),
        'archives' => __('Like Archives', 'textdomain'),
        'attributes' => __('Like Attributes', 'textdomain'),
        'parent_item_colon' => __('Parent Like:', 'textdomain'),
        'all_items' => __('All Likes', 'textdomain'),
        'add_new_item' => __('Add New Like', 'textdomain'),
        'add_new' => __('Add New', 'textdomain'),
        'new_item' => __('New Like', 'textdomain'),
        'edit_item' => __('Edit Like', 'textdomain'),
        'update_item' => __('Update Like', 'textdomain'),
        'view_item' => __('View Like', 'textdomain'),
        'view_items' => __('View Likes', 'textdomain'),
        'search_items' => __('Search Like', 'textdomain'),
        'not_found' => __('Not found', 'textdomain'),
        'not_found_in_trash' => __('Not found in Trash', 'textdomain'),
        'featured_image' => __('Featured Image', 'textdomain'),
        'set_featured_image' => __('Set featured image', 'textdomain'),
        'remove_featured_image' => __('Remove featured image', 'textdomain'),
        'use_featured_image' => __('Use as featured image', 'textdomain'),
        'insert_into_item' => __('Insert into Like', 'textdomain'),
        'uploaded_to_this_item' => __('Uploaded to this Like', 'textdomain'),
        'items_list' => __('Likes list', 'textdomain'),
        'items_list_navigation' => __('Likes list navigation', 'textdomain'),
        'filter_items_list' => __('Filter Likes list', 'textdomain'),
    );
    $args = array(
        'label' => __('Like', 'textdomain'),
        'description' => __('', 'textdomain'),
        'labels' => $labels,
        'menu_icon' => 'dashicons-heart',
        'supports' => array('title', 'author'),
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
    register_post_type('like', $args);

}
add_action('init', 'create_like_cpt', 0);
