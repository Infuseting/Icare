
function hasRegexClass(element, part ,value) {
    const regex = new RegExp(`^${part}.*${value}.*`, 'i');
    return Array.from(element.classList).some(className => regex.test(className));
}

document.getElementById('table-search-users').addEventListener('input', function() {

    const tables = document.querySelector('#User-Table');
    const value = this.value;
    const rows = tables.querySelectorAll('tr');

    rows.forEach(row => {
        if (value.length > 3 && !row.classList.contains('table-header')) {
            if (!(hasRegexClass(row, "SR-NOM-", value) || hasRegexClass(row, "SR-EMAIL-", value) || hasRegexClass(row, "SR-UUID-", value))) {
                row.style.display = 'none';
            } else {
                row.style.display = '';
            }
        } else {
            row.style.display = '';
        }
    });
});


