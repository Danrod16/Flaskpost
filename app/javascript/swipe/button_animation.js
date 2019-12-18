var animateButton = function(e) {
  var $iconWrapper = $(".icon-wrapper");
  $iconWrapper.on('click', function() {
    var _this = $iconWrapper;
    if (_this.hasClass('anim')) _this.removeClass('anim');
    else {
      _this.addClass('anim');
      _this.css('pointer-events', 'none');
      setTimeout(function() {
        _this.css('pointer-events', '');
      }, 1200);
    }
  })

  var $iconWrapper2 = $(".icon-wrapper-2");
  $iconWrapper2.on('click', function() {
    var _this = $iconWrapper2;
    if (_this.hasClass('anim')) _this.removeClass('anim');
    else {
      _this.addClass('anim');
      _this.css('pointer-events', 'none');
      setTimeout(function() {
        _this.css('pointer-events', '');
      }, 1200);
    }
  })
}

export { buttonAnimation };
