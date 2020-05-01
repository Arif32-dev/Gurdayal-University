<?php
// Register Custom Post Type Professor
function create_professor_cpt()
{

    $labels = array(
        'name' => _x('Professors', 'Post Type General Name', 'universtity'),
        'singular_name' => _x('Professor', 'Post Type Singular Name', 'universtity'),
        'menu_name' => _x('Professors', 'Admin Menu text', 'universtity'),
        'name_admin_bar' => _x('Professor', 'Add New on Toolbar', 'universtity'),
        'archives' => __('Professor Archives', 'universtity'),
        'attributes' => __('Professor Attributes', 'universtity'),
        'parent_item_colon' => __('Parent Professor:', 'universtity'),
        'all_items' => __('All Professors', 'universtity'),
        'add_new_item' => __('Add New Professor', 'universtity'),
        'add_new' => __('Add New', 'universtity'),
        'new_item' => __('New Professor', 'universtity'),
        'edit_item' => __('Edit Professor', 'universtity'),
        'update_item' => __('Update Professor', 'universtity'),
        'view_item' => __('View Professor', 'universtity'),
        'view_items' => __('View Professors', 'universtity'),
        'search_items' => __('Search Professor', 'universtity'),
        'not_found' => __('Not found', 'universtity'),
        'not_found_in_trash' => __('Not found in Trash', 'universtity'),
        'featured_image' => __('Featured Image', 'universtity'),
        'set_featured_image' => __('Set featured image', 'universtity'),
        'remove_featured_image' => __('Remove featured image', 'universtity'),
        'use_featured_image' => __('Use as featured image', 'universtity'),
        'insert_into_item' => __('Insert into Professor', 'universtity'),
        'uploaded_to_this_item' => __('Uploaded to this Professor', 'universtity'),
        'items_list' => __('Professors list', 'universtity'),
        'items_list_navigation' => __('Professors list navigation', 'universtity'),
        'filter_items_list' => __('Filter Professors list', 'universtity'),
    );
    $args = array(
        'label' => __('Professor', 'universtity'),
        'description' => __('', 'universtity'),
        'labels' => $labels,
        'menu_icon' => 'dashicons-businessman',
        'supports' => array('title', 'editor', 'thumbnail', 'custom-fields'),
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'show_in_admin_bar' => true,
        'show_in_nav_menus' => true,
        'can_export' => true,
        'has_archive' => true,
        'hierarchical' => true,
        'exclude_from_search' => false,
        'show_in_rest' => true,
        'publicly_queryable' => true,
        'capability_type' => 'post',
    );
    register_post_type('professor', $args);

}
add_action('init', 'create_professor_cpt', 0);
