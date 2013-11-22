// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$( document ).ready(function() {
  var $createButton = $('#create-new-lamp');
  $createButton.on("click", function(){

    $.ajax({
      type: "post",
      url: "/lamps",
      dataType: "json",
      data: {
        lamp: {}
      }
    }).done(function(msg) {
      console.log('ajax worked');
      var img = $('<img>'),
          li = $('<li>');
          li.attr('id', msg.id);
          img.attr('src', "http://www.hdwallpapersinn.com/wp-content/uploads/2012/10/Lucinda_Lamp.jpg");
          li.html('Turn me off, for the love of god!');
          li.on("click", function(){
            $.ajax({
              type: "put",
              url: "/lamps/" + msg.id,
              dataType: "json",
              data: { lamp: { is_silent: false } }
            }).done(function(msg) {
              console.log(msg);
              $('#' + msg.id).fadeOut(400);
            });
          }); // on <li> click
      $('#container').append(img);
      $('#container').append(li);
    }); // done

  }); // on createButton "click"
}); // document.ready

