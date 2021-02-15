function onBlurEvnt () {
    var email = $("#emailAddress").val();
    var passwd = $("#passwd").val();

    if (email == null || email == "") {
        //alert("공백");
        $("#emailEmpty").show();  
    } else {
        $("#emailEmpty").hide();
    }

    if (passwd < 8 || passwd > 30) {
        $("#passwdWrong").show();
    } else {
        $("#passwdWrong").hide();
    }
};