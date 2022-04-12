$(".bntGetChild").click(function() {
    let id = $(this).attr("codChild");

    let frmData = new FormData();

    frmData.append("id", id);

    $.ajax({
        method: "POST",
        url: "ajax/childAjax.php",
        data: frmData,
        cache: false,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function(response) {
            $("#nameChild").val(response["nombre"]);
            $("#ageChild").val(response["edad"]);
            $("#diagChild").val(response["diagnostico"]);
            $("#funFact").val(response["funfact"]);
            console.log(response);
        },
        error: function(xhr, textStatus, error) {
            console.log(xhr.statusText);
            console.log(textStatus);
            console.log(error);
        }
    });

});