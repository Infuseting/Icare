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
                location.reload();
            } else {
                alert(data.message);
            }
        })
        .catch(error => console.error('Error:', error));
}
