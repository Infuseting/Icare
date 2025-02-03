function openModalCours() {
    const modal = document.querySelector("#hs-modal-add");
    new HSOverlay(modal).open();
    document.querySelectorAll('.datepicker-dropdown').forEach((element) => {
        element.classList.remove('z-50');
        element.classList.add('z-[100]');
    });
}