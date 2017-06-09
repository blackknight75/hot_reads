setInterval(function(){
  checkDatabase()
}, 1000
);

function checkDatabase(){
  $.ajax({
    method: "GET",
    url: "https://boiling-woodland-88175.herokuapp.com/api/v1/links"
    // url: "/api/v1/links"
  }).then(function(links){
    var linkCount = 0
    if(links.length == linkCount){

    } else {
      linkCount = links.count
      location.reload();
    }
  })
}

$(document).ready(function(){
  $(setInterval())
})
