function checkWidth() {
    if ($(window).width() > 992) {
        $('#main_row').addClass('row-eq-height');
    } else {
        $('#main_row').removeClass('row-eq-height');
    }
}

$(window).resize(checkWidth);
window.onload = checkWidth