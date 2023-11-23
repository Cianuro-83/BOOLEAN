const createBtn = document.getElementById("btn_create");

const editableFields = document.querySelectorAll(".editable-field");

function checkFields() {
    let isAnyFieldEmpty = false;
    editableFields.forEach(function (field) {
        if (field.value.trim() === "") {
            isAnyFieldEmpty = true;
        }
    });

    if (isAnyFieldEmpty) {
        createBtn.setAttribute("disabled", true);
    } else {
        createBtn.removeAttribute("disabled");
    }
}

editableFields.forEach(function (field) {
    field.addEventListener("input", checkFields);
});
