import "bootstrap";
// import { Visual } from '../purple_cloud'
import { changePillClass } from '../forms/pill_active';
changePillClass();

// ----- begin swipe functionality -----
import { makeFirstCardActive } from '../swipe/activate_card';
import { changeButtonLinks } from '../swipe/button_links';

if (document.getElementById("carouselExampleCaptions")) {
  // activate the slide function by passing the class "active" to the first card
  makeFirstCardActive();

  // change the links of the button so it works for the active card
  changeButtonLinks();
}

// global.makeFirstCardActive = makeFirstCardActive

// ----- end swipe functionality -----