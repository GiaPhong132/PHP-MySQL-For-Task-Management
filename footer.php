<script>
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");

    // When the user clicks on the password field, show the message box
    myInput.onfocus = function() {
        document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function() {
        document.getElementById("message").style.display = "none";
    }

    // When the user starts to type something inside the password field
    myInput.onkeyup = function() {
        // Validate lowercase letters
        var lowerCaseLetters = /[a-z]/g;
        if (myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-Z]/g;
        if (myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
        }

        // Validate numbers
        var numbers = /[0-9]/g;
        if (myInput.value.match(numbers)) {
            number.classList.remove("invalid");
            number.classList.add("valid");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
        }

        // Validate length
        if (myInput.value.length >= 8) {
            length.classList.remove("invalid");
            length.classList.add("valid");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
        }
    }

    function TDate() {
        var UserDate = document.getElementById("userdate").value;
        var ToDate = new Date();

        if (new Date(UserDate).getTime() > ToDate.getTime()) {
            alert("The Date must be Less or Equal to today date");
            document.getElementById("userdate").value = "";
            return false;
        }
        return true;
    }

    function checkFormat() {
        var UserDate = document.getElementById("dateButton").value;
        var ToDate = new Date();

        if (new Date(UserDate).getTime() > ToDate.getTime()) {
            alert("The Date must be Less or Equal to today date");
            document.getElementById("dateButton").value = "";
            return false;
        }
        return true;
    }

    function checkDateTarget() {
        var UserDate = document.getElementById("dateTargetIncome").value;
        var ToDate = new Date();

        if (new Date(UserDate).getFullYear() > ToDate.getFullYear()) {
            alert("The Year must be Less or Equal to Current Year");
            document.getElementById("dateTargetIncome").value = "";
            return false;
        } else if (new Date(UserDate).getMonth() > (ToDate.getMonth())) {
            alert("The Month must be Less or Equal to Current Month");
            document.getElementById("dateTargetIncome").value = "";
            return false;
        }
        return true;
    }
</script>
</body>

</html>