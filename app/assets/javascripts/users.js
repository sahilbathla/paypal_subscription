$(document).ready(function(){
  $('#return').val($('#return').val() + '/' + $('#auth-token').attr('data-token'));
})