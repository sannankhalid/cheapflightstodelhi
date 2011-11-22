//$.validator.setDefaults({
//    submitHandler: function() {
//
//        $("#new_candidate").submit();
//        $("#user_new").submit();
//        $("#invite_user").submit();
//    }
//});
//$.validator.setDefaults({
//    submitHandler: function() {
//       $("#user_new").submit();
//    }
//});
//

$().ready(function() {
    $("#change_domain_form").validate({
        rules: {
            "account[subdomain]":
            {
                required: true,
                url: true
            }
        },
        messages: {
            "account[subdomain]": "Please enter a valid Url"
        }
    });
    $("#change_card_form").validate({
        rules:{
            "account[card_number]":
            {
                required: true,
                number: true
            },
            messages: {
                "account[card_number]": "This field is required"
            }
        }
    });

    $("#user_new").validate({
        rules:{
            "user[email]":
            {
                required: true,
                email: true
            },
            "user[password]":
            {
                required: true
            },
            messages: {
                "user[password]": "Please enter a password"
            }
        }
    });

    $("#reset_password").validate({
        rules:{
            "user[password]":
            {
                required: true,
                minlength: 6


            },
            "user[password_confirmation]":
            {
                required: true,
                minlength: 6,
                equalTo: "#user_password"

            },
            messages: {

                "user[password]":{
                    required: "Please provide a password",
                    minlength: "Your password must be at least 6 characters long"
                },
                "user[password_confirmation]":{

                    required: "Please provide a password",
                    minlength: "Your password must be at least 6 characters long",
                    equalTo: "Please enter the same password as above"

                }
            }
        }
    });


    $("#invite_user").validate({
        rules:{
            "user[email]":
            {
                required: true,
                email: true
            },
            "user[first_name]":
            {
                required: true
            },
            "user[last_name]":
            {
                required: true
            },
            messages: {
                "user[first_name]": "Please enter you first Name",
                "user[last_name]":  "Please enter you Last Name"
            }
        }
    });

    $("#candidateForm").validate({
        rules: {
            "candidate[first_name]":
            {
                required: true
            },
            "candidate[last_name]":
            {
                required: true

            },
            "candidate[home_phone]":
            {
                required: true
            },
            "candidate[email_address]":
            {
                required: true,
                email: true

            }
        },
        messages: {
            "candidate[first_name]": "Please enter your First Name",
            "candidate[last_name]": "Please enter your Last Name",
            "candidate[home_phone]": "Please enter your Phone Number",
            "candidate[email_address]": "Please enter a valid Email Address"

        }
    });

    $("#new_job").validate({
        rules:{
            "job[name]":
            {
                required: true
            },
            "job[comp_annual]":
            {
                required: true,
                number: true
            },
            "job[position_id]":
            {
                required: true
            },
            "job[employment_status_id]":
            {
                required: true
            },
            "job[work_at_home_id]":
            {
                required: true
            },
            "job[overnight_travel_id]":
            {
                required: true
            },
            "job[weekend_travel_id]":
            {
                required: true
            },
            messages: {
                "job[name]": "Please add Job Name",
                "job[comp_annual]": "Please add annual compensation"
            }
        }
    });
    $("#update_job").validate({
        rules:{
            "job[name]":
            {
                required: true
            },
            "job[comp_annual]":
            {
                required: true,
                number: true
            },
            "job[city]":
            {
                required: true
            },
            "job[position_id]":
            {
                required: true
            },
            "job[employment_status_id]":
            {
                required: true
            },
            "job[work_at_home_id]":
            {
                required: true
            },
            "job[overnight_travel_id]":
            {
                required: true
            },
            "job[weekend_travel_id]":
            {
                required: true
            },
            messages: {
                //                "job[name]": "Please add Job Name",
                //                "job[comp_annual]": "Please add annual compensation",
                //                "job[comp_commission]": "Please add annual compensation",
                //                "job[comp_bonus]": "Please add annual compensation"

            }
        }
    });

    $("#re_invite").validate({
        rules: {
            "user[email]":
            {
                required: true,
                email: true

            }
        },
        messages: {
            "user[email]": "Please enter a valid Email Address"

        }
    });

    $("#update_company_profile").validate({
        rules: {

            "organization[name]":
            {
                required: true
            },
            "organization[address1]":
            {
                required: true
            },
            "organization[city]":
            {
                required: true
            },
            "organization[state]":
            {
                required: true
            },
            "organization[website_url]":
            {

                required: true

            },
            "organization[zipcode]":
            {

                number: true,
                required: true

            },
            "organization[phone_number]":
            {
                required: true

            }
            //              "organization[company_description]":
            //            {
            //
            //
            //                required: true
            //
            //            },
            //              "organization[company_culture]":
            //            {
            //
            //
            //                required: true
            //
            //            }

        },
        messages: {
            "organization[website_url]": "This field is required",
            "organization[zipcode]": "Should be in digits only",
            "organization[phone_number]": "This field is required",
            "organization[company_name]": "This field is required",
            "organization[city]": "This field is required",
            "organization[address]": "This field is required",
            "organization[state]": "This field is required"


        }
    });

    $("#user_edit").validate({
        rules:{
            "user[username]":
            {
                required: true

            },
            "user[password]":
            {
                required: true,
                minlength: 6
            },
            "user[password_confirmation]":
            {
                required: true,
                minlength: 6,
                equalTo: "#user_password"
            },
            messages: {
                "user[username]":"Please enter your Username",
                "user[password]":{
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long"
                },
                "user[password_confirmation]":{

                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long",
                    equalTo: "Please enter the same password as above"
                }

            }
        }
    });
});
function validate_email_address(form_id, email) {
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var address = document.forms[form_id].elements[email].value;
    if (reg.test(address) == false) {
        alert('Invalid Email Address');
        return false;
    }
}