<?php
// Register Custom Post Type Program
function create_program_cpt()
{

    $labels = array(
        'name' => _x('Programs', 'Post Type General Name', 'university'),
        'singular_name' => _x('Program', 'Post Type Singular Name', 'university'),
        'menu_name' => _x('Programs', 'Admin Menu text', 'university'),
        'name_admin_bar' => _x('Program', 'Add New on Toolbar', 'university'),
        'archives' => __('Program Archives', 'university'),
        'attributes' => __('Program Attributes', 'university'),
        'parent_item_colon' => __('Parent Program:', 'university'),
        'all_items' => __('All Programs', 'university'),
        'add_new_item' => __('Add New Program', 'university'),
        'add_new' => __('Add New', 'university'),
        'new_item' => __('New Program', 'university'),
        'edit_item' => __('Edit Program', 'university'),
        'update_item' => __('Update Program', 'university'),
        'view_item' => __('View Program', 'university'),
        'view_items' => __('View Programs', 'university'),
        'search_items' => __('Search Program', 'university'),
        'not_found' => __('Not found', 'university'),
        'not_found_in_trash' => __('Not found in Trash', 'university'),
        'featured_image' => __('Featured Image', 'university'),
        'set_featured_image' => __('Set featured image', 'university'),
        'remove_featured_image' => __('Remove featured image', 'university'),
        'use_featured_image' => __('Use as featured image', 'university'),
        'insert_into_item' => __('Insert into Program', 'university'),
        'uploaded_to_this_item' => __('Uploaded to this Program', 'university'),
        'items_list' => __('Programs list', 'university'),
        'items_list_navigation' => __('Programs list navigation', 'university'),
        'filter_items_list' => __('Filter Programs list', 'university'),
    );
    $args = array(
        'label' => __('Program', 'university'),
        'description' => __('', 'university'),
        'labels' => $labels,
        'menu_icon' => 'dashicons-welcome-learn-more',
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
    register_post_type('program', $args);

}
add_action('init', 'create_program_cpt', 0);
