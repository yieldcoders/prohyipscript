{include file="header.tpl"}

<!-- Alert-->
{if $alert}
<div class="{$alert_class}">
    <span>{$alert_message}</span>
</div>
{/if}
<!-- Alert-->
<form action="login.php" method="post">

    <input type="text" name="username">

    <input type="password" name="password" class="form-control form-control-lg" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">

    <label class="custom-control-label" for="customCheck1">Remember me</label>

    <a href="forget" id="to-recover" class="text-dark float-right"><i class="fa fa-lock mr-1"></i> Forgot pwd?</a>

    <!--Google Re captcha setting site key. please enter the key in admin settings -->
    <div class="g-recaptcha" data-sitekey="{$settings.gsitekey}"></div>

    <button class="btn btn-block btn-lg btn-info" type="submit" name="login">Log In</button>

</form>

    <script type="text/javascript">
        $(document).ready(function(e) {
            $("#forgot").click(function(e) {
                e.preventDefault();
                forget_pass();
            });
        });

        function forget_pass() {
            var strFP = '<legend>Forgot Password</legend>' +
                '<div class="form-group required">' +
                '   <label class="control-label " for="username">Email/Username</label>' +
                '   <input type="text" name="username" id="username" value="" class="form-control" required />' +
                '</div>' +
                '<div class="bottom-form">' +
                '   <input type="submit" name="forgetpass" id="forgetpass" value="Reset Password" class="btn btn-default pull-right" />' +
                '</div>';
            $("fieldset#login").html(strFP);
        }

        function img_file() {
            file = document.getElementById("image").files[0];
            image = document.getElementById("user_img");
            reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function() {
                image.src = reader.result;
            }
        }

        function checkUser() {
            $("#signUpFrm #username").removeClass("text-danger");
            $("#signUpFrm #user_chk").html('');
            username = $.trim($("#signUpFrm #username").val());
            if (username != '') {
                $.ajax({
                    url: 'check_user.php',
                    type: 'post',
                    data: "check_customer=username&username=" + username,
                    success: function(data) { ///alert(data);
                        if (data == '0' || data == 0) {
                            $("#signUpFrm #user_chk").html('<span class="text-success"><i class="fa fa-fw fa-check"></i>Username is available.</span>');
                        } else {
                            $("#signUpFrm #username").addClass("text-danger");
                            $("#signUpFrm #user_chk").html('<span class="text-danger"><i class="fa fa-fw fa-times"></i>Username is already taken.</span>');
                        }
                    }
                });
            }
        }

        function checkEmail() {
            $("#signUpFrm #email").removeClass("text-danger");
            $("#signUpFrm #email_chk").html('');
            email = $.trim($("#signUpFrm #email").val());
            if (email != '') {
                $.ajax({
                    url: 'check_user.php',
                    type: 'post',
                    data: "check_customer=email&email=" + email,
                    success: function(data) {
                        if (data == '0' || data == 0) {
                            $("#signUpFrm #email_chk").html('<span class="text-success"><i class="fa fa-fw fa-check"></i>Email is available.</span>');
                        } else {
                            $("#signUpFrm #email").addClass("text-danger");
                            $("#signUpFrm #email_chk").html('<span class="text-danger"><i class="fa fa-fw fa-times"></i>Email is already taken.</span>');
                        }
                    }
                });
            }
        }

        function checkPass() {
            password = $.trim($("#signUpFrm #password").val());
            if (password.length < 8) {
                $("#signUpFrm #password").addClass("text-danger");
                $("#signUpFrm #password_chk").html('<span class="text-danger"><i class="fa fa-fw fa-times"></i>Password length must be Greater or Equal to 8.</span>');
            } else {
                $("#signUpFrm #password").removeClass("text-danger");
                $("#signUpFrm #password_chk").html('<span class="text-success"><i class="fa fa-fw fa-check"></i></span>');
            }
        }

        function checkForm() {
            if ($("#signUpFrm #username").hasClass("text-danger") || $("#signUpFrm #email").hasClass("text-danger") || $("#signUpFrm #password").hasClass("text-danger")) {
                return false;
            }
            return true;
        }
        window.onload = function() {
            var $recaptcha = document.querySelector('#g-recaptcha-response');

            if ($recaptcha) {
                $recaptcha.setAttribute("required", "required");
            }
        };
    </script>
    <script src="js/jquery-3.2.1.min.js"></script>
{include file="footer.tpl"}
