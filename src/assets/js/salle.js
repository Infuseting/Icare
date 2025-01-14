function editSalle(element, SAL_ID) {
    const tr = element.parentNode.parentNode;
    let select = tr.querySelector('.Type select').parentNode;
    let type = [];
    let elements = select.querySelectorAll('div[data-tag-value]');

    elements.forEach(element => {
        type.push(element.getAttribute('data-tag-value'));
    });
    select = tr.querySelector('.Utilisable select').parentNode;
    let utilisable = [];
    elements = select.querySelectorAll('div[data-tag-value]');
    elements.forEach(element => {
        utilisable.push(element.getAttribute('data-tag-value'));
    });
    let loadingToastPerm = newLoadingToast("Modification d'une salle en cours..");
    console.log(type);
    fetch('/api/salle/edit.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'SAL_ID': SAL_ID,
            'type[]': type,
            'utilisable[]': utilisable,
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
                newSuccessToast("Salle modifiée avec succès");

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la modification de salle");
            }
        })
        .catch(error => {
            console.error('Error:', error.message);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la modification de salle");
        });
}