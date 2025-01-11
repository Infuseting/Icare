
function deleteRole(element, roleId) {
    const loadingToast = newLoadingToast("Creation d'un role en cours...");
    fetch('/api/role/delete.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'ROL_ID': roleId
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
                element.parentNode.parentNode.remove();
                loadingToast.hideToast()
                newSuccessToast("Role supprimé avec succès");

            } else {
                loadingToast.hideToast();
                newErrorToast("Erreur lors de la suppression du Role");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToast.hideToast();
            newErrorToast("Erreur lors de la suppression du Role");
        });
}
function createRole(element) {
    const loadingToast = newLoadingToast("Creation d'un role en cours...");
    const name = element.parentNode.parentNode.querySelector('input[type="text"]').value;
    if (name.length === 0) {
        loadingToast.hideToast();
        newErrorToast("Le nom du role ne peut pas etre vide");
        return;
    }
    const checkboxes = element.parentNode.parentNode.querySelectorAll('input[type="checkbox"]');
    const permissions = [];
    checkboxes.forEach(checkbox => {
        if (checkbox.checked) {
            permissions.push(checkbox.id);
        }
    });
    fetch('/api/role/add.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'name': name,
            'permissions[]': permissions
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
                window.location.reload();

            } else {
                loadingToast.hideToast();
                newErrorToast("Erreur lors de la creation du Role");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToast.hideToast();
            newErrorToast("Erreur lors de la creation du Role");
        });
}
function modifyRole(button, roleId) {
    const loadingToast = newLoadingToast("Mise a jour des permissions lié a un role en cours...");
    const checkboxes = button.parentNode.parentNode.querySelectorAll('input[type="checkbox"]');
    const permissions = [];
    checkboxes.forEach(checkbox => {
        if (checkbox.checked) {
            permissions.push(checkbox.id);
        }
    });
    fetch('/api/role/modify.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'ROL_ID': roleId,
            'permissions[]': permissions
        })
    })
        .then(response => {
            console.log(response.status);
            console.log(response.statusText);
            if (!response.ok) {
                response.text().then(text => { throw new Error('Network response was not ok: ' + text); });
            }

            return response.json();
        })
        .then(data => {
            if (data.status === 'success') {
                loadingToast.hideToast();
                newSuccessToast("Role mis a jour avec succès");
            } else {
                loadingToast.hideToast();
                newErrorToast("Erreur lors de la mise a jour des Roles");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToast.hideToast();
            newErrorToast("Erreur lors de la mise a jour des Roles");
        });
}


function updateUser(button, UUID) {
    modifyUserPerm(button, UUID).then(() => {
        modifyUserRole(button, UUID);
    }).catch(error => {
        console.error('Error:', error);
    });
}
function modifyUserRole(button, UUID) {
    const loadingToastRole = newLoadingToast("Mise a jour des roles utilisateurs en cours...");
    const HSStore = button.parentNode.parentNode.querySelectorAll('#hs-tags-input')[0].parentNode;
    const roles = [];
    const elements = HSStore.querySelectorAll('[data-tag-value]');
    elements.forEach(element => {
        roles.push(element.getAttribute('data-tag-value'));
    });
    fetch('/api/user/role/update.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'USE_UUID': UUID,
            'roles[]': roles
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
                loadingToastRole.hideToast();
                newSuccessToast("Roles mis a jour avec succès");
            } else {
                loadingToastRole.hideToast();
                newErrorToast("Erreur lors de la mise a jour des roles");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            loadingToastRole.hideToast();
            newErrorToast("Erreur lors de la mise a jour des roles");
        });
}

function modifyUserPerm(button, UUID) {
    const loadingToastPerm = newLoadingToast("Mise a jour des permissions utilisateurs en cours...");
    const HSStore = button.parentNode.parentNode.querySelectorAll('#hs-tags-input')[1].parentNode;
    const roles = [];
    const elements = HSStore.querySelectorAll('[data-tag-value]');
    elements.forEach(element => {
        roles.push(element.getAttribute('data-tag-value'));
    });
    fetch('/api/user/permission/update.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'USE_UUID': UUID,
            'permissions[]': roles
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
                newSuccessToast("Permissions mis a jour avec succès");

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



