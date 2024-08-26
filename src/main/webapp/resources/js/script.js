
    $(document).ready(function() {
        $('#myForm').submit(function(event) {
          //  event.preventDefault(); // Zapobiegamy domyślnej akcji formularza (wysłanie)

            // Pobieranie wartości pól formularza
            let quantity = $('#quantity').val();
            var institution = $('#institution').val();
            var street = $('#street').val();
            var city = $('#city').val();
            var zipCode = $('#zipCode').val();
            var pickUpDate = $('#pickUpDate').val();
            var pickUpTime = $('#pickUpTime').val();
            var pickUpComment = $('#pickUpComment').val();


            // Uzupełnianie podsumowania

            // Uzupełnianie podsumowania
            var summaryHtml = `
            <div class="summary">
                <div class="form-section">
                    <h4>Oddajesz:</h4>
                    <ul>
                        <li>
                            <span class="icon icon-bag"></span>
                            <span class="summary--text">${quantity} worki ubrań w dobrym stanie dla dzieci</span>
                        </li>

                        <li>
                            <span class="icon icon-hand"></span>
                            <span class="summary--text"
                            >${institution}</span>
                        </li>
                    </ul>
                </div>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru:</h4>
                            <ul>
                                <li>${street}</li>
                                <li>${city}</li>
                                <li>${zipCode}</li>
                            </ul>
                    </div>


                    <div class="form-section--column">
                        <h4>Termin odbioru:</h4>
                            <ul>
                                <li>${pickUpDate}</li>
                                <li>${pickUpTime}</li>
                                <li>${pickUpComment}</li>
                            </ul>
                    </div>
                </div>
        `;
            $('#summary').html(summaryHtml);

        });
    });
