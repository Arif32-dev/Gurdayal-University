<?php
add_action('rest_api_init', 'universityLike_routes');
function universityLike_routes()
{
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => WP_REST_Server::EDITABLE,
        'callback' => 'create_like',
    ));
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => WP_REST_Server::DELETABLE,
        'callback' => 'delete_like',
    ));
}
function create_like($data)
{
    $professorID = $data["professorID"];
    // Check if the user is logged in
    if (is_user_logged_in()) {
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
        // Check if user have not created any like post
        if ($exits_query->found_posts === 0) {
            // Check if the professor id is beloged to  professor post
            if (get_post_type($professorID) === "professor") {
                return wp_insert_post(array(
                    'post_type' => 'like',
                    'post_status' => 'publish',
                    'meta_input' => array(
                        'liked_professor_id' => $professorID,
                        'liked_user_id' => $data['userID'],
                    ),
                ));
            } else {
                die('Invalid Professor ID');
            }
        }
    } else {
        die('You must logged in to like');
    }
}
function delete_like($data)
{
    $likeID = $data['likeID'];
    if (get_post_type($likeID) === "like") {
        if (get_current_user_id() == get_post_field('post_author', $likeID)) {
            return wp_delete_post($likeID, true);
        } else {
            die('You do not have the right to this action');
        }
    } else {
        die('Invalid Post ID');
    }

}
