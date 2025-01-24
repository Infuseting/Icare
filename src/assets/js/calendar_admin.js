function clipboard(link) {
    navigator.clipboard.writeText(link).then(function() {
        console.log('Link copied to clipboard');
    }).catch(function(error) {
        console.error('Error copying link to clipboard: ', error);
    });
}