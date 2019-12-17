import "bootstrap";

// ----- swipe functionality -----
// activate the slide function by passing the class "active" to the first card
import { makeFirstCardActive } from '../swipe/activate_card';
makeFirstCardActive();
// change the links of the button so it works for the active card
import { changeButtonLinks } from '../swipe/button_links';
changeButtonLinks();

import { changePillClass } from '../pills/pill_active';
changePillClass();
