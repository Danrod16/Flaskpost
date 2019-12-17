const firstCard = document.querySelector(".carousel-item");

const makeFirstCardActive = () => {
  if(firstCard) {
    firstCard.classList.add("active");
  }
}

export { makeFirstCardActive };
