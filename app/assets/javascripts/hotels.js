$(function() {
  $('.datepicker').datepicker({
    format: "dd/mm/yyyy",
    language: "pt-BR",
    autoclose: true
  });

  $('#address-form').on('submit', function(e) {
    if ($(this).find('#address').val() === '') {
      alert('Please enter the location!');
      e.preventDefault();
    }
  });
});
