//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
  $("#checkout").click(function(event) {
    event.preventDefault();
    $("#catalog").load("/orders/new");
  });
  
});