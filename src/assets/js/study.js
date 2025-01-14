const modalEtude = document.querySelector('#hs-modal-etude');
const modalMatiere = document.querySelector('#hs-modal-matiere');

function deleteStudy(element, MAT_ID, SEM_ID, ETU_ID) {
    const loadingToastPerm = newLoadingToast("Suppression de l'étude en cours...");
    fetch('/api/format/cours/delete.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'MAT_ID': MAT_ID,
            'SEM_ID': SEM_ID,
            'ETU_ID': ETU_ID
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
                newSuccessToast("Etude supprimée avec succès");
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la suppression de l'étude");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la suppression de l'étude");
        });
}

function changeMatiere(element) {
    if (element.parentNode.querySelector('.selected').getAttribute('data-value') == -1) {
        let HSOverlays = new HSOverlay(modalMatiere);
        HSOverlays.open();
    }
}
function changeEtude(element) {
    if (element.parentNode.parentNode.querySelector('.selected').getAttribute('data-value') == -1) {
        let HSOverlays = new HSOverlay(modalEtude);
        HSOverlays.open();
    }
}

function saveEtude(element) {
    let HSOverlays = new HSOverlay(modalEtude);
    HSOverlays.close();
    const libelle = element.parentNode.parentNode.querySelector('input').value;
    const loadingToastPerm = newLoadingToast("Creation d'une nouvelle etude en cours...");
    fetch('/api/format/study/add.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'ETU_Libelle': libelle
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
                newSuccessToast("Study ajouté avec succès");
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la mise a jour des permissions");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la mise a jour des permissions");
        });
}
function saveMatiere(element) {
    let HSOverlays = new HSOverlay(modalMatiere);
    HSOverlays.close();
    const libelle = element.parentNode.parentNode.querySelector('input').value;
    const loadingToastPerm = newLoadingToast("Creation d'une nouvelle matiere en cours...");
    fetch('/api/format/matiere/add.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'MAT_Libelle': libelle
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
                newSuccessToast("Matiere ajouté avec succès");
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la mise a jour des permissions");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la mise a jour des permissions");
        });
}

function createStudy(element) {
    const tr = element.parentNode.parentNode;
    const MAT_ID = tr.querySelector('.matiere').querySelector('.selected').getAttribute('data-value');
    const SEM_ID = tr.querySelector('.semestre').querySelector('.selected').getAttribute('data-value');
    const ETU_ID = tr.querySelector('.etude').querySelector('.selected').getAttribute('data-value');
    const loadingToastPerm = newLoadingToast("Creation d'une nouvelle etude en cours...");
    fetch('/api/format/cours/add.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'MAT_ID': MAT_ID,
            'SEM_ID': SEM_ID,
            'ETU_ID': ETU_ID
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
                newSuccessToast("Etude ajoutée avec succès");
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la mise a jour des permissions");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la mise a jour des permissions");
        });
}

