
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_tree .

$(function() {
  $("#notice").effect("highlight", {}, 3000);
  
  $("#checkout").click(function(event) {
    event.preventDefault();
    $("#catalog").load("/orders/new", function() {
      $("#order_email").focus(); 
    });
  });
  
});