function pageLoad(sender, args) {
    $(document).ready(function () {

        $("#submitButton").click(function () {
            var i = 1;
            $(".error").each(function () {

                if ($(this).css("visibility") == "visible") {

                    $("#validatorList").append(
                        $('<li>').append(
                        $(this)));

                }
            })
        })
    })
}