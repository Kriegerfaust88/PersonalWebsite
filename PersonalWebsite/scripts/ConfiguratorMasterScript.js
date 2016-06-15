$(document).ready(function() {

    $(".dropdown").hover(
        function() {
            $(".sub-menu").slideDown(200);
        },
        function () {
            $(".sub-menu").slideUp(200);
        }
    )


})