document.addEventListener("DOMContentLoaded", function () {
    fetch("assets/data/quotes.json") 
        .then(response => response.json()) 
        .then(quotes => {
            let randomIndex = Math.floor(Math.random() * quotes.length);
            let randomQuote = quotes[randomIndex];

            document.getElementById("quote-text").textContent = `"${randomQuote.quote}"`;
            document.getElementById("quote-author").textContent = `${randomQuote.author}`;
        })
        .catch(error => console.error("Error loading quotes:", error));
});
