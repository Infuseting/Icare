function addClass(element) {

    const tr = element.parentNode.parentNode;
    const ETU_ID = tr.querySelector('.etude').querySelector('.selected').getAttribute('data-value');
    const SEM_ID = tr.querySelector('.niveau').querySelector('.selected').getAttribute('data-value');
    const TYPC_ID = tr.querySelector('.type_classe').querySelector('.selected').getAttribute('data-value');
    const CLA_Libelle = tr.querySelector('.cla_libelle').querySelector('input').value;
    const heritage = [];
    const elements = tr.querySelectorAll('.heritage > div > div[data-tag-value]');
    elements.forEach(element => {
        console.log(element);
        heritage.push(element.getAttribute('data-tag-value'));
    });
    const loadingToastPerm = newLoadingToast("Creation d'une nouvelle classe en cours...");
    console.log(heritage)
    fetch('/api/class/add.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'ETU_ID': ETU_ID,
            'NIV_ID': SEM_ID,
            'TYPC_ID': TYPC_ID,
            'CLA_Libelle': CLA_Libelle,
            'heritage[]': heritage
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
                newSuccessToast("Classe ajoutée avec succès");
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de l'ajout de classe");
            }
        })
        .catch(error => {
            console.error('Error:', error.message);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de l'ajout de classe");
        });

}
function deleteClass(element, CLA_ID) {
    const loadingToastPerm = newLoadingToast("Suppression d'une classe en cours...");

    fetch('/api/class/remove.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'CLA_ID': CLA_ID,
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
                newSuccessToast("Classe supprimée avec succès");
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la suppression de classe");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la suppression de classe");
        });
}
function editClass(element, CLA_ID) {
    const tr = element.parentNode.parentNode;
    const heritage = [];
    const elements = tr.querySelectorAll('.heritage > div > div[data-tag-value]');
    elements.forEach(element => {
        heritage.push(element.getAttribute('data-tag-value'));
    });
    const loadingToastPerm = newLoadingToast("Modification d'une classe en cours...");
    console.log(heritage)

    fetch('/api/class/edit.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'CLA_ID': CLA_ID,
            'heritage[]': heritage
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
                newSuccessToast("Classe ajoutée avec succès");
                location.reload();

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de l'ajout de classe");
            }
        })
        .catch(error => {
            console.error('Error:', error.message);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de l'ajout de classe");
        });



}

function openGraph() {
    const modal = document.querySelector("#hs-heritage");
    new HSOverlay(modal).open();
}