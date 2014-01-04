$(document).ready(function(){
  $('#return').val($('#return').val() + '/' + $('#auth-token').attr('data-token'));
  $('#return').parent('form').attr('action','https://www.sandbox.paypal.com/cgi-bin/webscr');
})