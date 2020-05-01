jQuery(document).ready(function ($) {
    class Like {
        constructor() {
            this.likeID = false
            this.events()
        }
        events() {
            $('.like-box').on('click', this.like_box.bind(this))
        }
        // Methods down here
        like_box(e) {
            if ($(e.currentTarget).attr('data-exists') === 'yes') {
                this.delete_like(e)
            } else {
                this.create_like(e)
            }
        }
        // Create Like function
        create_like(e) {
            $.when(
                $.ajax({
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader('X-WP-NONCE', university.nonce)
                    },
                    url: `${university.root_url}/wp-json/university/v1/manageLike/`,
                    type: "POST",
                    data: {
                        professorID: $(e.currentTarget).attr('data-professor-id'),
                        userID: $(e.currentTarget).attr('data-user-id')
                    },
                })
            ).then(
                res => {
                    $(e.currentTarget).attr('data-exists', 'yes')
                    var like_count = parseFloat($(e.currentTarget).find('.like-count').html())
                    like_count++
                    $(e.currentTarget).find('.like-count').html(like_count)
                    $(e.currentTarget).attr('data-like-id', res)
                    console.log(res)
                },
                error => {
                    console.log(error)
                }
            )
        }
        // Delete Like function
        delete_like(e) {
            $.when(
                $.ajax({
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader('X-WP-NONCE', university.nonce)
                    },
                    url: `${university.root_url}/wp-json/university/v1/manageLike/`,
                    data: {
                        likeID: $(e.currentTarget).attr('data-like-id')
                    },
                    type: "DELETE"
                })
            ).then(
                res => {
                    $(e.currentTarget).attr('data-exists', 'no')
                    var like_count = parseFloat($(e.currentTarget).find('.like-count').html())
                    like_count--
                    $(e.currentTarget).find('.like-count').html(like_count)
                    $(e.currentTarget).attr('data-like-id', "")
                    console.log(res)
                },
                error => {
                    console.log(error)
                }
            )
        }
    }
    new Like
})