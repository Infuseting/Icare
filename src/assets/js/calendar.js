let actualSeleect = null;
function changeSelect(element) {

    const selectElement = element.parentNode.querySelector('span');
    const EDT_ADE = document.getElementById('EDT_ADE');
    const Google_Calendar = document.getElementById('EDT_CALENDAR');
    const lien_vcs = document.getElementById('EDT_VCS');
    EDT_ADE.classList.add('hidden');
    Google_Calendar.classList.add('hidden');
    lien_vcs.classList.add('hidden');
    if (selectElement.innerHTML === 'EDT ADE') {
        EDT_ADE.classList.remove('hidden');
        actualSeleect = EDT_ADE;
    }
    else if (selectElement.innerHTML === 'Google Calendar') {
        Google_Calendar.classList.remove('hidden');
        actualSeleect = Google_Calendar;
    }
    else if (selectElement.innerHTML === 'lien .vcs') {
        lien_vcs.classList.remove('hidden');
        actualSeleect = lien_vcs;
    }
}

function deleteEDT(element, EDT_ID, USE_UUID) {
    const loadingToastPerm = newLoadingToast("Suppression d'un nouvelle EDT");
    fetch('/api/EDT/remove.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'EDT_ID': EDT_ID,
            'USE_UUID': USE_UUID,
        })
    })
        .then(response => {
            if (!response.ok) {
                response.text().then(text => { throw new Error('Network response was not ok: ' + text); });
            }
            return response.json();
        })
        .then(data => {
            if (data.status === 'success') {
                loadingToastPerm.hideToast();
                element.remove();
                newSuccessToast("EDT supprimé");
                window.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la suppression de l'EDT");
            }
        })
        .catch(error => {
            console.error('Error:', error.message);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la suppression de l'EDT");
        });

}

function addEDT(element, USE_UUID) {
    let EDT_ID = actualSeleect.querySelector('#ADE_NUMBER');
    let EDT_NAME = actualSeleect.querySelector('#ADE_LIBELLE');
    let EDT_COLOR = actualSeleect.querySelector('[type="color"]').value.replace('#', '');
    let EDT_LINK = null;
    console.log(EDT_COLOR);
    if (actualSeleect.id === "EDT_ADE") {
        EDT_LINK = 'https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/' + EDT_ID.value + '.ics';
    }
    if (actualSeleect.id === "EDT_CALENDAR") {
        EDT_LINK = '';
    }
    if (actualSeleect.id === "EDT_VCS") {
        EDT_LINK = EDT_ID.value;
    }
    const loadingToastPerm = newLoadingToast("Ajout d'un nouvelle EDT");
    fetch('/api/EDT/add.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'USE_UUID': USE_UUID,
            'EDT_LINK': EDT_LINK,
            'EDT_LIBELLE': EDT_NAME.value,
            'EDT_COLOR': EDT_COLOR,
        })
    })
        .then(response => {
            if (!response.ok) {
                response.text().then(text => { throw new Error('Network response was not ok: ' + text); });
            }
            return response.json();
        })
        .then(data => {
            if (data.status === 'success') {
                loadingToastPerm.hideToast();
                element.remove();
                newSuccessToast("EDT supprimé");
                window.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la suppression de l'EDT");
            }
        })
        .catch(error => {
            console.error('Error:', error.message);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la suppression de l'EDT");
        });
}