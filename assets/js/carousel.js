document.addEventListener("DOMContentLoaded", function () {
    fetch("includes/get_articles.php") 
        .then(response => response.json())
        .then(articles => {
            if (articles.length > 0) {
                let index = 0;
                let carouselSlide = document.querySelector(".carousel-slide");

                carouselSlide.innerHTML = "";

                articles.forEach(article => {
                    let slideItem = document.createElement("a");
                    slideItem.href = "article.php?id=" + article.id;
                    slideItem.classList.add("carousel-item");

                    let img = document.createElement("img");
                    img.src = article.img;
                    img.alt = article.title;
                    img.style.width = "100%";
                    img.style.height = "400px";
                    img.style.objectFit = "cover";

                    let titleOverlay = document.createElement("div");
                    titleOverlay.classList.add("carousel-title");
                    titleOverlay.innerText = article.title;

                    slideItem.appendChild(img);
                    slideItem.appendChild(titleOverlay);

                    carouselSlide.appendChild(slideItem);
                });

                function changeSlide() {
                    index = (index + 1) % articles.length;
                    carouselSlide.style.transition = "transform 1s ease-in-out";
                    carouselSlide.style.transform = `translateX(-${index * 100}%)`;
                }

                setInterval(changeSlide, 4000);
            }
        })
        .catch(error => console.error("Error loading articles:", error));
});
