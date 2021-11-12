$(document).ready(function () {
    $("#registrationForm").validate({
        rules: {
            email: { required: true, email: true },
            password: { required: true },
            firstName: { required: true },
            lastName: { required: true },
            phoneNumber: { required: true, number: true,  minlength: 10, maxlength: 10},
            countryID: { required: true, number: true,},
        },
        messages: {
            email: { required: "Email is required" },
            password: { required: "Please provide a password" },
            firstName: { required: "Please enter your firstName" },
            lastName: { required: "Please enter your lastName" },
            phoneNumber: { required: "Phone Number is required" },
            countryID: { required: "CountryID is required" },

        }
    });
});

function DisplayRegistrationForm() {
    $("#sec_Login").hide();
    $("#sec_Register").show();
}


function logintoMyAccount() {
    var obj = {};
    obj.EID = $("#txt_UserID").val();
    obj.password = $("#txt_Password").val();

    $.ajax({
        type: "POST",
        url: "Mekashron_View.aspx/Login",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify(obj),
        success: function (data) {
            var result = JSON.parse(data.d);
            if (result.ResultCode === undefined) {

                $("#tx_EntityId").val(result.EntityId);
                $("#txt_My_firstname").val(result.FirstName);
                $("#txt_My_lastname").val(result.LastName);
                $("#txt_myEmail").val(result.Email);
                $("#txt_myMobile").val(result.Mobile);
                $("#txt_CountryCode").val(result.CountryID);
                $("#txt_myAdress").val(result.Address);
                $("#txt_myCity").val(result.City);
                $("#txt_mycountry").val(result.Country);
                $("#txt_myZip").val(result.Zip);
                $("#txt_myPhone").val(result.Phone);
                $("#sec_Login").hide();
                $("#sec_Viewdetails").show();

                $('#loginSuccess').fadeIn();
                setTimeout(function () {
                    $('#loginSuccess').fadeOut(1000);
                }, 2000);
            }
            else {
                $('#CredentialsNotMatch').fadeIn();
                $("#sec_Viewdetails").hide();
                $("#sec_Login").show();

            }
        }
    });

}

function RegisterMyAccount() {

    var obj = {};
    obj.Email = $("#email").val();
    obj.Password = $("#password").val();
    obj.FirstName = $("#firstName").val();
    obj.LastName = $("#lastName").val();
    obj.Mobile = $("#phoneNumber").val();
    obj.CountryID = $("#countryID").val();

    if ($("#registrationForm").valid()) {
        $.ajax({
            type: "POST",
            url: "Mekashron_View.aspx/RegisterMyAccount",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: JSON.stringify(obj),
            success: function (data) {
                var result = JSON.parse(data.d);
                if (result.ResultCode === 1) {
                    $("#Registration_error").hide();
                    $('#registrationForm')[0].reset();
                    $('#Registration_Success').fadeIn();
                    setTimeout(function () {
                        $('#Registration_Success').fadeOut(1000);
                    }, 2000);
                }
                else {
                    $("#Registration_Success").hide();
                    $("#Registration_error").text(result.ResultMessage)
                    $("#Registration_error").show();

                }
            }
        });
    }
    else {
        $("#Registration_error").text("Please Fill all the mandatory fields.")
        $("#Registration_error").show();
    }

}