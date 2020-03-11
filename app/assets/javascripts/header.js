$(function (){
  $('.leftlist__category').hover(
    function() {
      $('.categoryTree__item').show();
    }, 
    function() {
      $('.categoryTree__item').hide();
    }
  );
});