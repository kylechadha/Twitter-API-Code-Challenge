
// Infinite Scroll Functionality

var incrementVal = 0;
var searchVal;

function checkScroll() {
  if (nearBottomOfPage()) {
    incrementVal += 10;
    console.log("Tweets Displayed: " + (incrementVal + 10));
    $.get("/searches/", {search: searchVal, increment: incrementVal}, null, 'script');
  }
};

function nearBottomOfPage() {
  return scrollDistanceFromBottom() < 100;
};

function scrollDistanceFromBottom(argument) {
  return pageHeight() - (window.pageYOffset + self.innerHeight);
};

function pageHeight() {
  return Math.max(document.body.scrollHeight, document.body.offsetHeight);
};

//END

// Ready & Page:Load Function

var ready;
ready = function() {
  searchVal = $("#search").val();
  setInterval("checkScroll()", 1000);
};

$(document).ready(ready);
$(document).on('page:load', ready);