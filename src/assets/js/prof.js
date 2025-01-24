function addProf    (element) {
    const loadingToastPerm = newLoadingToast("Creation d'un nouveau prof en cours ...");
    const select = element.parentNode.parentNode.parentNode.parentNode;
    const users_select = document.querySelector('.users-select');
    const titularisation_select = document.querySelector('.titularisation-select');


    if (users_select.querySelector('.selected') === null) {
        loadingToastPerm.hideToast();
        newErrorToast("Veuillez selectionner un utilisateur");
        return;
    }

    if (titularisation_select.querySelector('.selected') === null) {
        loadingToastPerm.hideToast();
        newErrorToast("Veuillez selectionner un statut valide");
        return;
    }
    console.log(matieres);
    HSElement = new HSOverlay(select);
    HSElement.close(true);
    fetch('/api/prof/create.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'USE_UUID': users_select.querySelector('.selected').getAttribute('data-value'),
            'STA_ID': titularisation_select.querySelector('.selected').getAttribute('data-value'),
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
                location.reload();
            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la creation d'un nouveau prof");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la creation d'un nouveau prof");
        });
}

function deleteProf(element, uuid) {
    const loadingToastPerm = newLoadingToast("Suppression d'un prof en cours ...");
    fetch('/api/prof/delete.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'USE_UUID': uuid
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
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la suppression d'un prof");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la suppression d'un prof");
        });
}

function modifyProf(element, uuid) {
    const loadingToastPerm = newLoadingToast("Modification d'un prof en cours ...");
    const select = element.parentNode.parentNode.parentNode;
    const titularisation_select = select.querySelector('#titularisation-select').parentNode.querySelector('.selected');
    fetch('/api/prof/edit.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'USE_UUID': uuid,
            'STA_ID': titularisation_select.getAttribute('data-value')

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
                location.reload();
            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la modification d'un prof");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la modification d'un prof");
        });
}

function openModalProf() {
    const modal = document.querySelector('#hs-modal-add');
    new HSOverlay(modal).open();
}