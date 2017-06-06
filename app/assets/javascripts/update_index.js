setInterval(function(){
  checkDatabase()
}, 1000
);

function checkDatabase(){
  $.ajax({
    method: "GET",
    url: "/api/v1/links"
  }).then(function(links){
    var linkCount = 0
    if(links.length == linkCount){

    } else {
      linkCount = links.count
      
    }
    debugger;
  })
}

$(document).ready(function(){
  $(setInterval())
})
