const showMenu = (flag) => {
    if (flag) {

        const div = flag.nextElementSibling;
        div.classList.toggle("hidden");
        flag.querySelector("svg").classList.toggle("rotate-180");
    }
}



const showNav = (flag) => {
    if (flag) {

        flag.querySelector("p").classList.toggle("nav-show");
        let sibling = flag.nextElementSibling;
        while (sibling) {
            sibling.classList.toggle("nav-show");
            sibling = sibling.nextElementSibling;
        }
        flag.parentNode.classList.toggle("sm:w-20")
        flag.parentNode.classList.toggle("sm:w-72")
        console.log(flag.parentNode);
    }
};