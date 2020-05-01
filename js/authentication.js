const signIn = document.querySelector('.signin')
const title = document.querySelector('title')
signIn.addEventListener('click', () => {
    const card = document.querySelector('.card')
    card.classList.remove('flip-back')
    card.classList.add('flip')
    title.innerText = 'Sign up'
})
const signUp = document.querySelector('.signup')
signUp.addEventListener('click', () => {
    const card = document.querySelector('.card')
    const login_btn = document.querySelector('.login')
    card.classList.remove('flip')
    card.classList.add('flip-back')
    title.innerText = 'Log In'
    login_btn.style.pointerEvents = "auto";
    login_btn.style.display = "block";
})
// console.log(university)
// adding flip class for sign up request
var href_param = window.location.search
var res = href_param.slice(8);
if (res === 'true') {
    const login_btn = document.querySelector('.login')
    const card = document.querySelector('.card');
    card.classList.add('flip');
    login_btn.style.pointerEvents = "none";
    login_btn.style.display = "none";
    title.innerText = 'Sign up'
}

// Animation for page
const tl = new TimelineMax()
tl.from('.container', 2, {
    y: '-1000px',
    ease: Bounce.easeOut
})