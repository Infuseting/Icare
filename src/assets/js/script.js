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



function deleteRole(roleId) {
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
                location.reload();
            } else {
                alert(data.message);
            }
        })
        .catch(error => console.error('Error:', error));
}
function modifyRole(button, roleId) {
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
            if (!response.ok) {
                response.text().then(text => { throw new Error('Network response was not ok: ' + text); });
            }
            return response.json();
        })
        .then(data => {
            if (data.status === 'success') {
                //
            } else {
                alert(data.message);
            }
        })
        .catch(error => console.error('Error:', error));
}


function updateUser(button, UUID) {
    modifyUserPerm(button, UUID);
    modifyUserRole(button, UUID);
}
function modifyUserRole(button, UUID) {
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
                location.reload();
            } else {
                alert(data.message);
            }
        })
        .catch(error => console.error('Error:', error));
}

function modifyUserPerm(button, UUID) {
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
                location.reload();
            } else {
                alert(data.message);
            }
        })
        .catch(error => console.error('Error:', error));
}

function hasRegexClass(element, part ,value) {
    const regex = new RegExp(`^${part}.*${value}.*`);

    return Array.from(element.classList).some(className => regex.test(className));
}


document.getElementById('table-search-users').addEventListener('input', function() {

    const tables = document.querySelector('#User-Table');
    const value = this.value;
    const rows = tables.querySelectorAll('tr');

    rows.forEach(row => {
        if (value.length > 3 && !row.classList.contains('table-header')) {
            if (!(hasRegexClass(row, "SR-USERNAME-", value) || hasRegexClass(row, "SR-EMAIL-", value) || hasRegexClass(row, "SR-UUID-", value))) {
                row.style.display = 'none';
            } else {
                row.style.display = '';
            }
        } else {
            row.style.display = '';
        }
    });
});