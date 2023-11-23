console.log("Lo script addressTomTom.js è stato eseguito con successo!");

document.addEventListener("DOMContentLoaded", function () {
    var timeoutId;

    var addressInput = document.getElementById("address");
    var latInput = document.getElementById("lat");
    var lonInput = document.getElementById("lon");
    var addressSuggestions = document.getElementById("address-suggestions");

    function updateCoordinates(lat, lon, address) {
        latInput.value = lat;
        lonInput.value = lon;
        addressInput.value = address;
    }

    addressInput.addEventListener("input", function () {
        var inputAddress = this.value.trim();

        // Cancella timer precedente
        clearTimeout(timeoutId);

        // Imposta un nuovo timer
        timeoutId = setTimeout(function () {
            if (inputAddress.length > 2) {
                // Chiamata al controller per ottenere i suggerimenti
                fetch("/tomtom/getGeoData/" + inputAddress)
                    .then((response) => response.json())
                    .then((data) => {
                        console.log(data);
                        var suggestions = "";
                        data.forEach(function (result) {
                            suggestions +=
                                '<div class="suggestion" data-lat="' +
                                result.position.lat +
                                '" data-lon="' +
                                result.position.lon +
                                '">' +
                                result.address.freeformAddress +
                                "</div>";
                        });
                        addressSuggestions.innerHTML = suggestions;

                        // Verifica e aggiorna le coordinate solo se corrispondono con l'indirizzo
                        if (
                            data.length > 0 &&
                            data[0].address.freeformAddress === inputAddress
                        ) {
                            updateCoordinates(
                                data[0].position.lat,
                                data[0].position.lon,
                                inputAddress
                            );
                        } else {
                            // Svuota i campi di latitudine e longitudine se non corrispondono con l'indirizzo
                            latInput.value = "";
                            lonInput.value = "";
                        }
                    })
                    .catch((error) => {
                        console.error(
                            "Errore nel recupero dei suggerimenti:",
                            error
                        );
                        // Svuota i campi di latitudine e longitudine in caso di errore
                        latInput.value = "";
                        lonInput.value = "";
                    });
            } else {
                addressSuggestions.innerHTML = "";
                // Svuota i campi di latitudine e longitudine se l'indirizzo è vuoto
                latInput.value = "";
                lonInput.value = "";
            }
        }, 500);
    });

    // Gestione dei clic sui suggerimenti
    addressSuggestions.addEventListener("click", function (event) {
        if (event.target.classList.contains("suggestion")) {
            var lat = event.target.getAttribute("data-lat");
            var lon = event.target.getAttribute("data-lon");
            updateCoordinates(lat, lon, event.target.textContent);
            addressSuggestions.innerHTML = "";
        }
    });
});
