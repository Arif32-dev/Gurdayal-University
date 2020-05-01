jQuery(document).ready(function ($) {
    class Search {
        // declaring all the variable inside of constructro
        constructor() {
            this.searchContainer = $('.search-overlay');
            this.searchbtn = $('.js-search-trigger');
            this.closebtn = $('.search-overlay__close');
            this.input = $('#search-term');
            this.searchIcon = $('.search-overlay__icon');
            this.resultBox = $('.search_result')
            this.searchValue = '',
                this.events();
        }
        // Events goes here
        events() {
            this.searchbtn.on('click', this.open.bind(this))
            this.closebtn.on('click', this.close.bind(this))
            $(document).on('keyup', this.keyOpen.bind(this))
            this.input.on('keyup', this.get_search_val.bind(this))
            this.searchIcon.on('click', this.get_search_val.bind(this))
        }
        // open seach overlay
        open() {
            this.searchContainer.addClass('search-overlay--active');
            $('body').addClass('body-no-scroll')
            setTimeout(() => {
                this.input.focus()
            }, 100);
        }
        // close seach overlay
        close() {
            this.searchContainer.removeClass('search-overlay--active');
            $('body').removeClass('body-no-scroll')
            this.input.val("")
        }
        // key open function
        keyOpen(e) {

            if (e.keyCode === 83 && !$('input, textarea').is(':focus')) {
                this.open();
            }
            if (e.keyCode === 27) {
                this.close();
            }
        }
        // get the search value
        get_search_val(e) {
            if (e.keyCode === 13 && e.key === "Enter" || e.type === "click") {
                if (this.input.val() != "")
                    this.searchValue = this.input.val();
                this.get_result();
            }
        }
        // get results from api
        get_result() {
            $.when($.ajax({
                url: `${university.root_url}/wp-json/university/v1/q?term=${this.searchValue}`
            })).then((data) => {
                console.log(data)
                this.resultBox.html(`
                        <div class="general-info">
                              <h1>General Info:</h1>
                                    <hr>
                                    ${
                                        data.general.length != 0 ?
                        data.general.map((title) => (
                            `
                            <a href="${title.general_link}">
                                <h2>${title.general_title}</h2>
                            </a>
                            `
                        )).join('') : `<h2> No result matched</h2>`}
                        </div>
                        <div class="program-info">
                              <h1>Programs:</h1>
                              <hr>
                            ${data.programs != 0 ? 
                                data.programs.map(program => (
                                        `
                                        <a href = "${program.program_link}" >
                                            <h2>${program.program_title}</h2> 
                                        </a>
                                        `
                                )).join('')
                                 : `<h2> No program matched</h2>` }
                        </div>
                        <div class="event-info">
                              <h1>Events:</h1>
                              <hr>
                            ${data.events != 0 ? 
                                data.events.map(event => (
                                        `
                                        <a href = "${event.event_link}" >
                                            <h2>${event.event_title}</h2> 
                                        </a>
                                        `
                                )).join('')
                                 : `<h2> No event matched</h2>` }
                        </div>
                        <div class="professor-info">
                              <h1>Professors:</h1>
                              <hr>
                            ${data.professors != 0 ? 
                                data.professors.map(professor => (
                                        `
                                        <a href = "${professor.professor_link}" >
                                            <h2>${professor.professor_title}</h2> 
                                        </a>
                                        <a class="img_con" href = "${professor.professor_link}">
                                        <img src="${professor.professor_img}" >
                                        </a>
                                        `
                                )).join('')
                                 : `<h2> No professor matched</h2>` }
                        </div>
                        <div class="event-info">
                              <h1>Campuses:</h1>
                              <hr>
                            ${data.campuses != 0 ? 
                                data.campuses.map(campus => (
                                        `
                                        <a href = "${campus.campus_link}" >
                                            <h2>${campus.campus_title}</h2> 
                                        </a>
                                        `
                                )).join('')
                                 : `<h2> No campus matched</h2>` }
                        </div>
                    `)
            }, () => {
                this.resultBox.html(`<h1 class="no_res">Unexpected Error. Try again </h1>`)
            })
        }
    }
    new Search();
})