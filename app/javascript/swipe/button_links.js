import $ from 'jquery'

var changeLinks = (activeCardParentElement) => {

  var acceptBtn = document.getElementById("accept");
  var declineBtn = document.getElementById("decline");

  var baseUrl = window.location.href.split('/')[0] + "//" + window.location.href.split('/')[2]
  var profile_id = window.location.href.split('/')[4]

  var acceptUrl = new URL ("/matches/accept_decline?posting_id=jsChange&profile_id=jsChange&user_intention=accepted", baseUrl);
  var declineUrl = new URL ("/matches/accept_decline?posting_id=jsChange&profile_id=jsChange&user_intention=declined", baseUrl);

  var activeCard = activeCardParentElement.querySelector(".active")
  var posting_id = activeCard.querySelector(".swipe-card").dataset.posting

  acceptUrl.searchParams.set( 'posting_id', posting_id );
  declineUrl.searchParams.set( 'posting_id', posting_id );

  acceptUrl.searchParams.set(  'profile_id', profile_id );
  declineUrl.searchParams.set(  'profile_id', profile_id );

  acceptBtn.href = acceptUrl;
  declineBtn.href = declineUrl;
}

var changeButtonLinks = () => {
  $('#carouselExampleCaptions').on('slid.bs.carousel', function (event) {
    changeLinks(event.currentTarget)
  })
}

export { changeButtonLinks };
