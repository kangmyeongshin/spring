$(function(){

  var topMenu = $('header > .top>div:nth-child(2)>ul>li>a')
  var subMenu = $('header > .top>div:nth-child(2) ol')

  topMenu.hover(function(){
    // 마우스 올라갔을때
    $(this).next().show();
  }, function(){
    // 마우스 빠질때
    $(this).next().hide();
  });

  subMenu.hover(function(){
    $(this).show();
  }, function(){
    $(this).hide();
  });

});
