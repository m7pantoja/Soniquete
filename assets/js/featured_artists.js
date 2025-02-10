function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

document.addEventListener("DOMContentLoaded", function () {
fetch('includes/get_artists.php')
    .then(response => response.json())
    .then(artists => {
        if (artists.length > 0) {

            let randomArtists = shuffleArray(artists).slice(0, 3);
            let grid = document.getElementById('artistsGrid');

            randomArtists.forEach(artist => {
                let cardLink = document.createElement('a');
                cardLink.href = 'artist.php?id=' + artist.id;
                cardLink.classList.add('artist-card');

                let img = document.createElement('img');
                img.src = artist.image; 
                img.alt = artist.name;

                let title = document.createElement('h2');
                title.innerText = artist.name;

                cardLink.appendChild(img);
                cardLink.appendChild(title);
                grid.appendChild(cardLink);
            });
        }
    })
    .catch(error => console.error('Error fetching artists:', error));
});