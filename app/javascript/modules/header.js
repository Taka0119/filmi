$(document).on('turbolinks:load', function() {
  $(function() {
    $('.shares_header__box__menu__movie, .shares_header__box__menu__tv').hover(
      function() {
        $('.pulldown:not(:animated)', this).slideDown();
      },
      function() {
        $('.pulldown', this).slideUp();
      }
    );
  });
})