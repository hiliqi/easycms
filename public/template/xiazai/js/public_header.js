// 初始化界面元素
function init() {
  var baseUrl = "//web-cli.oss-cn-hongkong.aliyuncs.com/public_header/"; // 图片的baseUrl
  var _logo = $('<img src="' + baseUrl + 'img/logo.png" />'); // logo
  var v = "123456722"; // 前端变量
  $('.public-header .logo').append(_logo); // 把logo 添加进指定元素
  $('.public-header-list:eq(0) .iconBox').css({
    'backgroundImage': 'url(' + baseUrl + 'img/sprite2.png?v=' + v + ')',
    "background-position": "-150px -21px"
  }); // 聚色阁
  $('.public-header-list:eq(1) .iconBox').css({
    'backgroundImage': 'url(' + baseUrl + 'img/sprite2.png?v=' + v + ')',
    "background-position": "-180px -21px"
  }); // 爆料
  $('.public-header-list:eq(2) .iconBox').css({
    'backgroundImage': 'url(' + baseUrl + 'img/sprite2.png?v=' + v + ')',
    "background-position": "-12px -21px"
  }); // 千禾影院
  $('.public-header-list:eq(3) .iconBox').css({
    'backgroundImage': 'url(' + baseUrl + 'img/sprite2.png?v=' + v + ')',
    "background-position": "-124px -21px"
  }); // 我爱小说
  $('.public-header-list:eq(4) .iconBox').css({
    'backgroundImage': 'url(' + baseUrl + 'img/sprite2.png?v=' + v + ')',
    "background-position": "-94px -21px"
  }); // 极乐空间
  $('.public-header-list:eq(5) .iconBox').css({
    'backgroundImage': 'url(' + baseUrl + 'img/sprite2.png?v=' + v + ')',
    "background-position": "-66px -21px"
  }); // 美女图
  $('.public-header-list:eq(6) .iconBox').css({
    'backgroundImage': 'url(' + baseUrl + 'img/sprite2.png?v=' + v + ')',
    "background-position": "-38px -21px"
  }); // 番号大全
  // 聚色阁鼠标移入样式
  $('.public-header-list:eq(0)').hover(function () {
    $(this).find(".iconBox").css("background-position", "-150px -52px");
  }, function () {
    $(this).find(".iconBox").css("background-position", "-150px -21px");
  })
  // 爆料不打烊鼠标移入样式
  $('.public-header-list:eq(1)').hover(function () {
    $(this).find(".iconBox").css("background-position", "-180px -52px");
  }, function () {
    $(this).find(".iconBox").css("background-position", "-180px -21px");
  })
  // 千禾影院鼠标移入样式
  $('.public-header-list:eq(2)').hover(function () {
    $(this).find(".iconBox").css("background-position", "-12px -52px");
  }, function () {
    $(this).find(".iconBox").css("background-position", "-12px -21px");
  })
  // 我爱小说鼠标移入样式
  $('.public-header-list:eq(3)').hover(function () {
    $(this).find(".iconBox").css("background-position", "-124px -52px");
  }, function () {
    $(this).find(".iconBox").css("background-position", "-124px -21px");
  })
  // 极乐空间鼠标移入样式
  $('.public-header-list:eq(4)').hover(function () {
    $(this).find(".iconBox").css("background-position", "-94px -52px");
  }, function () {
    $(this).find(".iconBox").css("background-position", "-94px -21px");
  })
  // 美女图鼠标移入样式
  $('.public-header-list:eq(5)').hover(function () {
    $(this).find(".iconBox").css("background-position", "-66px -52px");
  }, function () {
    $(this).find(".iconBox").css("background-position", "-66px -21px");
  })
  // 番号大全鼠标移入样式
  $('.public-header-list:eq(6)').hover(function () {
    $(this).find(".iconBox").css("background-position", "-38px -52px");
  }, function () {
    $(this).find(".iconBox").css("background-position", "-38px -21px");
  })
};
// 静态
$(function () {
  $("body").css({
    "height": "auto",
    "margin-top": "60px",
    "-webkit-overflow-scrolling": "auto",
    "background-size": "auto",
    "background-attachment": "fixed"
  });
});