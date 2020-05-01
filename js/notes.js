jQuery(document).ready(function ($) {
    class My_Notes {
        constructor() {
            this.cancel = false
            this.events()
        }
        // Grab the element and apply events onto them
        events() {
            $(document).on('click', '.edit-note', this.edit_note.bind(this))
            $(document).on('click', '.delete-note', this.delete_note.bind(this))
            $(document).on('click', '.update-note', this.update_note.bind(this))
            $(document).on('click', '.submit-note', this.create_note.bind(this))
        }
        // All the functionality goes down here

        // Creating notes
        create_note(e) {
            var note_data = {
                'title': $(e.target).parent().find('.new-note-title').val(),
                'content': $(e.target).parent().find('.new-note-body').val()
            }
            $.when($.ajax({
                beforeSend: function (xhr) {
                    xhr.setRequestHeader('X-WP-NONCE', university.nonce)
                },
                url: `${university.root_url}/wp-json/wp/v2/note/`,
                type: 'POST',
                data: note_data
            })).then((res) => {
                $('#my-notes').prepend(`
                 <li >
            <input readonly class="note-title-field" type="text" value="${$(e.target).parent().find('.new-note-title').val()}">
            <span id="${res.id}" class="edit-note"> <i class="fa fa-pencil"></i> Edit</span>
            <span id="${res.id}" class="delete-note"> <i class="fa fa-trash-o"></i> Delete</span>
            <textarea readonly class="note-body-field">${$(e.target).parent().find('.new-note-body').val()}</textarea>
            <span id="${res.id}" class="update-note btn btn--blue"> <i
                    class="fa fa-arrow-right"></i>Save</span>
        </li>
                `).hide().slideDown(600);
                $(e.target).parent().find('.new-note-title, .new-note-body').val("");
                console.log(res)
            }, err => {
                if (err.responseText === "You have reached your limit" && err.status === 200) {
                    $('.note-limit-message').addClass('active')
                }
                console.log(err)
                console.log('Failed to create note')
            })
        }
        // Update notes
        update_note(e) {
            if (e.toElement.localName === "span") {
                var editnote = $(e.target).siblings('.edit-note');
                var updatedPost = {
                    'title': $(e.target).siblings('input').val(),
                    'content': $(e.target).siblings('textarea').val()
                }
                $.when($.ajax({
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader('X-WP-NONCE', university.nonce)
                    },
                    url: `${university.root_url}/wp-json/wp/v2/note/` + e.currentTarget.attributes[0].value,
                    type: 'POST',
                    data: updatedPost
                })).then((res) => {
                    this.make_note_readonly(editnote)
                    $(e.target).siblings('input , textarea').removeClass('note-active-field')
                    console.log("success")
                    console.log(res)
                }, err => {
                    console.log(err)
                    console.log('error')
                })
            } else {
                return false
            }

        }
        // Edit notes
        edit_note(e) {
            var editElement = e.target
            if (e.toElement.localName === "span") {

                $.each($(e.target).siblings('input , textarea'), function (i, val) {
                    $(val).focus()
                })

                if ($(e.target).siblings('input , textarea').prop('readonly')) {
                    this.make_note_editable(editElement)
                    $(e.target).siblings('input , textarea').addClass('note-active-field')
                    $(e.target).siblings('.update-note').addClass('update-note--visible')
                    $(e.target).siblings('input , textarea').prop('readonly', false)
                } else {
                    this.make_note_readonly(editElement)
                    $(e.target).siblings('input , textarea').removeClass('note-active-field')
                    $(e.target).siblings('input , textarea').prop('readonly', true)
                }
            } else {
                return false
            }
        }

        make_note_editable(e) {

            $(e).html(`
            <i class="fa fa-times"></i>Cancel
            `)
        }

        make_note_readonly(e) {
            $(e.target).siblings('input , textarea').prop('readonly', true)
            $(e).html(`
            <i class="fa fa-pencil"></i>Edit
            `)
            $.each($(e).siblings('input, textarea'), function (i, val) {
                $(val).focusout()
                $(e).siblings('.update-note').removeClass('update-note--visible')
            })
        }
        // Delete Notes
        delete_note(e) {
            $.when($.ajax({
                beforeSend: function (xhr) {
                    xhr.setRequestHeader('X-WP-NONCE', university.nonce)
                },
                url: `${university.root_url}/wp-json/wp/v2/note/` + e.currentTarget.attributes[0].value,
                type: 'DELETE'
            })).then((res) => {
                $(e.target).parent().slideUp(600)
                $('.note-limit-message').removeClass('active')
                console.log(res)
                console.log("success")
            }, err => {
                console.log(err)
                console.log('error')
            })
        }

    }
    new My_Notes();
})