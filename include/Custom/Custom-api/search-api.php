<?php
add_action('rest_api_init', 'custom_api');
function custom_api()
{
    register_rest_route('university/v1', 'q', array(
        'methods' => WP_REST_Server::READABLE,
        'callback' => 'searchResult',
    ), true);
};

function searchResult($data)
{
    $filteredData = array(
        'events' => array(),
        'programs' => array(),
        'professors' => array(),
        'campuses' => array(),
        'general' => array(),
    );
    $programID = '';
    // pushing data to events array
    $main_query = new WP_Query(array(
        'post_type' => array('event', 'program', 'professor', 'campus', 'post', 'page'),
        'posts_per_page' => -1,
        's' => $data['term'],
    ));
    while ($main_query->have_posts()) {
        $main_query->the_post();
        // pushing data to event array
        if (get_post_type() == 'event') {
            array_push($filteredData['events'], array(
                'event_title' => get_the_title(),
                'event_link' => get_the_permalink(),
            ));
        }
        // pushing data to prgrams array
        if (get_post_type() == 'program') {
            $programID = get_the_ID();
            $relatedCampuses = get_field("related_campus");
            if ($relatedCampuses) {
                foreach ($relatedCampuses as $campus) {
                    array_push($filteredData['campuses'], array(
                        'campus_title' => get_the_title($campus),
                        'campus_link' => get_the_permalink($campus),
                    ));
                }
            }
            array_push($filteredData['programs'], array(
                'program_title' => get_the_title(),
                'program_link' => get_the_permalink(),
            ));
        }
        // pushing data to campus array
        if (get_post_type() == 'campus') {
            array_push($filteredData['campuses'], array(
                'campus_title' => get_the_title(),
                'campus_link' => get_the_permalink(),
            ));
        }
        // pushing data to professors array
        if (get_post_type() == 'professor') {
            array_push($filteredData['professors'], array(
                'professor_title' => get_the_title(),
                'professor_link' => get_the_permalink(),
                'professor_img' => get_the_post_thumbnail_url(),
            ));
        }
        // pushing data to blog  array
        if (get_post_type() == 'post' || get_post_type() == 'page') {
            array_push($filteredData['general'], array(
                'general_title' => get_the_title(),
                'general_link' => get_the_permalink(),
            ));
        }
    }
    wp_reset_postdata();
    $relatedProfessors = new WP_Query(array(
        "posts_per_page" => -1,
        "post_type" => "professor",
        "meta_query" => array(
            array(
                "key" => "related_programs",
                "compare" => "LIKE",
                "value" => '"' . $programID . '"',
            ),
        ),
    ));
    while ($relatedProfessors->have_posts()) {
        $relatedProfessors->the_post();
        array_push($filteredData['professors'], array(
            'professor_title' => get_the_title(),
            'professor_link' => get_the_permalink(),
            'professor_img' => get_the_post_thumbnail_url(),
        ));
    }
    wp_reset_postdata();
    $filteredData['professors'] = array_values(array_unique($filteredData['professors'], SORT_REGULAR));
    $filteredData['campuses'] = array_values(array_unique($filteredData['campuses'], SORT_REGULAR));
    return $filteredData;
}
