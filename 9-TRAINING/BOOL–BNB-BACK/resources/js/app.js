import './bootstrap';
import '~resources/scss/app.scss';
import * as bootstrap from 'bootstrap';
import { isEmpty } from 'lodash';
import.meta.glob([
    '../img/**'
])

document.addEventListener('DOMContentLoaded', function () {
    const passwordValue = document.getElementById("password-confirm");


    function checkPasswords() {
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("password-confirm").value;
        const submitButton = document.getElementById("submit-button");
        const passwordError = document.getElementById("password-error");

        if (password !== confirmPassword && password.length < 8) {
            passwordError.innerHTML = "Le password devono essere uguali e devono avere una lunghezza minima di 8 caratteri";
            document.getElementById("password-confirm").classList.add("is-invalid");
            submitButton.setAttribute("disabled", true);
        } else if (password !== confirmPassword) {
            passwordError.innerHTML = "Le password devono essere uguali";
            document.getElementById("password-confirm").classList.add("is-invalid");
            submitButton.setAttribute("disabled", true);
        } else if (password.length < 8) {
            passwordError.innerHTML = "Le password devono avere una lunghezza minima di 8 caratteri";
            document.getElementById("password-confirm").classList.add("is-invalid");
            submitButton.setAttribute("disabled", true);
        } else {
            passwordError.innerHTML = "";
            submitButton.removeAttribute("disabled");
            document.getElementById("password-confirm").classList.remove("is-invalid");
        }
    }

    if (passwordValue) {
        document.getElementById("password-confirm").addEventListener("keyup", checkPasswords);
    }

}); 