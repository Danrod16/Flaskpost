import $ from 'jquery'

const acceptBtn = document.getElementById("accept");
const declineBtn = document.getElementById("decline");

const baseUrl = window.location.href.split('/')[0] + "//" + window.location.href.split('/')[2]

const acceptUrl = new URL ("/matches/accept_decline?posting_id=jsChange&profile_id=1&user_intention=accepted", baseUrl);
const declineUrl = new URL ("/matches/accept_decline?posting_id=jsChange&profile_id=1&user_intention=declined", baseUrl);

const changeButtonLinks = () => {
  $('#carouselExampleCaptions').on('slid.bs.carousel', function (event) {
    let activeCard = event.currentTarget.querySelector(".active")
    let posting_id = activeCard.querySelector(".swipe-card").dataset.posting

    acceptUrl.searchParams.set( 'posting_id', posting_id );
    declineUrl.searchParams.set( 'posting_id', posting_id );

    acceptBtn.href = acceptUrl;
    declineBtn.href = declineUrl;
  })
}

export { changeButtonLinks };
