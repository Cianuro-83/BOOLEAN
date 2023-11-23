const editBtn = document.getElementById("edit_btn");
const editableFields = document.querySelectorAll(".editable-field");

// Mappa per tenere traccia degli errori per ogni campo
const errorMap = {};

function checkFields() {
    let isAnyFieldEmpty = false;
    let isMqValid = true;
    let isStanzeValid = true;
    let isLatLonValid = true;

    editableFields.forEach(function (field) {
        const fieldValue = field.value.trim();
        const errorContainer = getErrorContainer(field);

        if (fieldValue === "") {
            isAnyFieldEmpty = true;
            displayError(field, errorContainer, "Campo obbligatorio");
        } else {
            hideError(field, errorContainer);
        }

        // Validazione specifica per il campo "mq"
        if (field.id === "mq" && !/^[\d.]+$/.test(fieldValue)) {
            isMqValid = false;
            displayError(
                field,
                errorContainer,
                "Questo campo può contenere solo numeri ed il carattere '.' per separare gli interi dai decimali"
            );
        } else if (field.id === "mq") {
            hideError(field, errorContainer);
        }

        // Validazione specifica per il campo "stanze", "beds", "bathrooms"
        if (
            (field.id === "rooms" ||
                field.id === "beds" ||
                field.id === "bathrooms") &&
            (!/^\d+$/.test(fieldValue) ||
                fieldValue < 1 ||
                fieldValue > 999999999)
        ) {
            isStanzeValid = false;
            displayError(
                field,
                errorContainer,
                "Questo campo può contenere solo numeri da 1 a 999999999"
            );
        } else if (
            field.id === "rooms" ||
            field.id === "beds" ||
            field.id === "bathrooms"
        ) {
            hideError(field, errorContainer);
        }

        // Validazione specifica per il campo "lat" e "lon"
        if ((field.id === "lat" || field.id === "lon") && fieldValue === "") {
            isAnyFieldEmpty = true;
            isLatLonValid = false;
            displayError(field, errorContainer, "Campo obbligatorio");
        } else if (
            (field.id === "lat" || field.id === "lon") &&
            !/^\d+(\.\d+)?$/.test(fieldValue)
        ) {
            isLatLonValid = false;
            displayError(
                field,
                errorContainer,
                "Questo campo può contenere solo numeri e il carattere '.' per separare gli interi dai decimali"
            );
        } else if (field.id === "lat" || field.id === "lon") {
            hideError(field, errorContainer);
        }
    });

    if (isAnyFieldEmpty || !isMqValid || !isStanzeValid || !isLatLonValid) {
        editBtn.setAttribute("disabled", true);
    } else {
        editBtn.removeAttribute("disabled");
    }
}

editableFields.forEach(function (field) {
    field.addEventListener("input", checkFields);
});

function getErrorContainer(field) {
    // Ottieni o crea un nuovo elemento di errore
    if (!errorMap[field.id]) {
        errorMap[field.id] = createErrorContainer(field);
    }
    return errorMap[field.id];
}

function createErrorContainer(field) {
    const newErrorContainer = document.createElement("div");
    newErrorContainer.id = `${field.id}-error`;
    field.parentNode.appendChild(newErrorContainer);
    return newErrorContainer;
}

function displayError(field, errorContainer, errorMessage) {
    // Mostra l'errore
    errorContainer.textContent = errorMessage;
    errorContainer.style.color = "red";
}

function hideError(field, errorContainer) {
    // Nascondi l'errore
    errorContainer.textContent = "";
}
