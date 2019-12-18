import $ from 'jquery'

const changePillClass = () => {
  $(document).ready(function(){
    $(".category-choice").click(function(){
      $(this).toggleClass("active");
    });
  });
}

export { changePillClass };
