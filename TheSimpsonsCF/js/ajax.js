function changeImage(image, quote) { //Change the image
  $("#image").attr("src", unescape(image));
	$("#quote").html(unescape(quote));
}

function saveUrls(image) { //Send data to '.cfm's
  $.post("controller.cfm", { "url": image },
    function notification() {
      console.log("Insert Complete Successfully");
    }
  );
};

$("#slt").change(function listingQuotes() { //Create list the quotes
  const request = new XMLHttpRequest(); //Instant class XMLHttpRequest
  let val = $("#slt").val();

  //request.open("GET", "https://thesimpsonsquoteapi.glitch.me/quotes?count=" + val, true);  //Online
  request.open("GET", "js/json/result.json", true);  //Offline - Descomment this line if the API fails
	request.send(); //Send the request

  request.onreadystatechange = function evaluateStatus() {
    if (this.readyState == 4 && this.status == 200) { //Status Evaluate    
      var data = JSON.parse(this.responseText); //Parse to JSON
      for (var item of data) {
        var quote = item.image;
        saveUrls(quote);
      }
      createList(data);
    }
  };
});

function createList(data){
  var list = $("#list").html("");
  var tlist = "<select class='slt_mlt' multiple>";
    for (var item of data) {
      var image = item.image;
      var quote = item.quote;
      tlist += `<option onclick='changeImage("${escape(image)}", "${escape(quote)}");'>${item.quote}</option><hr>`;
    }
  tlist += "</select>";
  list.append(tlist);
}