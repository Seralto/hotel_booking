$(document).on("page:change", function() {
  $("#address").geocomplete({
    details:"form#address-form"
  });
});