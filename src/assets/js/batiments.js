function updateDistance(element, BAT_ID1, BAT_ID2) {
    const DIS_Temps = parseInt(element.value, 10);
    const loadingToastPerm = newLoadingToast("Modification d'une distance entre deux batiments en cours..");
    fetch('/api/distance/edit.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'BAT_ID1': BAT_ID1,
            'BAT_ID2': BAT_ID2,
            'DIS_Temps': DIS_Temps
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
                newSuccessToast("Distance modifiée avec succes");

            } else {
                loadingToastPerm.hideToast();
                newErrorToast("Erreur lors de la modification d'une distance entre deux batiments");
            }
        })
        .catch(error => {
            console.error('Error:', error.message);
            loadingToastPerm.hideToast();
            newErrorToast("Erreur lors de la modification d'une distance entre deux batiments");
        });
}

function focusInput(element) {
    const input = element.parentNode.parentNode.parentNode.querySelector('input');
    input.focus();
}