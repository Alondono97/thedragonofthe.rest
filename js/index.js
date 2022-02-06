getQuote();

function getQuote() {
    document.getElementById("tile").className = "loading";
    fetch('https://api.thedragonofthe.rest/quote')
        .then((resp) => resp.json())
        .then(function (data) {
            console.log("data:", data);
            document.getElementById("quote").innerHTML = data.quote;
            document.getElementById("tile").className = "static";
        });
}
