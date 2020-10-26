getQuote();

function getQuote() {
    fetch('http://api.thedragonofthe.rest/quote')
        .then((resp) => resp.json())
        .then(function (data) {
            console.log("data:", data);
            document.getElementById("quote").innerHTML = data.quote;
        });
}
