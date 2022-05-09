<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$site_name}</title>
    <meta name="description" content="{$site_name}-做最适合用户的下载站">
    <meta data-n-head="true" data-hid="og:site_name" name="og:site_name" property="og:site_name" content="{$site_name}"/>
    <meta data-n-head="true" data-hid="og:description" name="og:description" property="og:description"
          content="{$site_name}-做最适合用户的下载站"/>
    <meta data-n-head="true" data-hid="og:title" name="og:title" content="{$site_name}"/>
    <link data-n-head="true" rel="shortcut icon"
          href="https://p.pstatp.com/origin/pgc-image/551b309b1fa14dbc9d69899b2fbfb7a2"
          type="image/x-icon"/>
    <link data-n-head="true" rel="apple-touch-icon"
          href="https://p.pstatp.com/origin/pgc-image/551b309b1fa14dbc9d69899b2fbfb7a2">
    <link data-n-head="true" rel="apple-touch-icon"
          href="https://p.pstatp.com/origin/pgc-image/551b309b1fa14dbc9d69899b2fbfb7a2" sizes="72x72">
    <link rel="stylesheet" href="/template/xiazai/css/iconfont.css">
    <link rel="stylesheet" href="/template/xiazai/css/common.css">
    <link rel="stylesheet" href="/template/xiazai/css/swiper.min.css">
    <style>
        html.pc, body.pc {
            background: url(https://cs85w6uf7rkk.hbwygdgs.com/img/yz/b55.gif) no-repeat;
            background-size: 100% auto;
        }
        body {
            height:auto;
            margin-top:60px;
            -webkit-overflow-scrolling:auto;
            background-size:auto;
            background-attachment:auto;
        }
        .public-header {background-color: #ff5a5e;position: fixed;top: 0;left: 0;width: 100%;z-index: 100;}
        .public-header-inner {max-width: 1200px;height: 60px;display: flex;margin: 0 auto;justify-content: center;}
        .public-logo-link,.public-header-link {padding: 0;margin: 0;text-decoration: none;}
        .public-header-logo {padding: 5px 10px;width: auto;height: 50px;overflow: hidden;}
        .public-header-logo img {width: auto;height: 100%;}
        .public-header-list {display: flex;align-items: center;padding: 0 10px;color: #fff;cursor: pointer;height: 100%;justify-content:center;}
        .public-header-list:hover {color: #000;background-color: #fff;}
        .public-header-list .iconBox {background-repeat: no-repeat;width: 0px;height: 25px;}
        .public-header-list .text {margin-left: 5px;}@media (max-width: 767px)
        .public-header-inner{flex-wrap: wrap;justify-content:flex-start;}
        .public-visible-xs {display: block;}
        .public-hidden-xs {display: none;}
        .public-header {font-size: 15px;}
        .public-header-link {width:20%;}
        .public-header-list {padding: 0;display: flex;justify-content: center;}
        .public-header-list .text {margin-left: 0;}}
    </style>
    <script src="/template/xiazai/js/common.js"></script>
    <script src="/template/xiazai/js/jquery.min.js"></script>
    <script src="/template/xiazai/js/loading11.js"></script>
    <script src="/template/xiazai/js/swiper.min.js"></script>
</head>
<body class="">
<div class="public-header">
    <div class="public-header-inner">
        <a class="public-header-link" target="_blank" href="/">
            <div class="public-header-list">
                <div class="iconBox home public-hidden-xs"></div>
                <div class="text">{$site_name}</div>
            </div>
        </a>
        <a class="public-header-link" target="_blank" href="/">
            <div class="public-header-list">
                <div class="iconBox home public-hidden-xs"></div>
                <div class="text">永久</div>
            </div>
        </a>
        <a class="public-header-link" target="_blank" href="/">
            <div class="public-header-list">
                <div class="iconBox home public-hidden-xs"></div>
                <div class="text">地址</div>
            </div>
        </a>
        <a class="public-header-link" target="_blank" href="/">
            <div class="public-header-list">
                <div class="iconBox home public-hidden-xs"></div>
                <div class="text">发布</div>
            </div>
        </a>
    </div>
</div>
<style>
    a {
        color: #333;
    }

    a:hover, a:active, a:focus {
        color: #333;
    }

    .my-pagination {
    }

    .my-pagination .swiper-pagination-bullet {
        text-align: center;
        border-radius: 0;
        opacity: 1;
    }

    .my-pagination ul {
        display: -webkit-box;
    }

    .my-pagination li {
        display: block;
        background: #fff;
        overflow: hidden;
        box-flex: 1;
        -moz-box-flex: 1;
        -webkit-box-flex: 1;
        height: 40px;
        line-height: 40px;
        position: relative;
        font-size: 15px;
    }

    .my-pagination li:after {
        position: absolute;
        top: auto;
        right: auto;
        bottom: 0;
        left: 0;
        z-index: 1;
        display: block;
        width: 100%;
        height: 1px;
        content: '';
        background-color: #dcdcdc;
        -webkit-transform-origin: 50% 100%;
        transform-origin: 50% 100%;
        -webkit-transform: scaleY(.5)
    }

    .my-pagination .swiper-pagination-bullet-active {
        color: #FE3336;
    }

    .my-pagination .swiper-pagination-bullet-active:after {
        opacity: 1;
        background-color: #FE3336;
        height: 4px;
    }

    .my-pagination {
        width: 100%;
        overflow-x: auto;
    }

    .my-pagination ul {
        /*width:200%;*/
    }

    .my-pagination ul li {
        min-width: 63px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        padding: 0 5px;
    }

    .swiper-slide {
        padding-top: 15px;
    }

    .swiper-slide ul {
        width: 100%;
        display: flex;
        flex-wrap: wrap;

    }

    .swiper-slide ul li {
        width: 25%;
        display: flex;
        justify-content: center;
        margin-bottom: 15px;
    }

    .swiper-slide ul li a {
        width: 80%;
    }

    .swiper-slide ul li .img-wrap {
        width: 100%;
    }

    .swiper-slide ul li .img-wrap img {
        width: 100%;
        border-radius: 0.2rem;
        border: 1px solid #eeeeee;
    }

    .page-index .list-wrap .item-wrap .img-wrap img {
        border-radius: 0.2rem;
        border: 1px solid #eeeeee;
    }

    .swiper-slide ul li .name {
        width: 100%;
        text-align: center;
        font-size: 12px;
        margin-top: 6px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .swiper-containers ul li .btn-wrap {
        flex-shrink: 0;
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: center;
        background: #fe6233;
        color: white;
        font-size: .24rem;
        width: 1.5rem;
        height: .6rem;
        border-radius: .7rem;
        margin: .1rem auto 0;
    }
</style>
<style>
    ul, li {
        list-style-type: none;
    }

    .fulilayer {
        padding: 20px;
        background-color: #ff5a5e;
        color: #FFF;
        font-family: microsoft yahei;
        font-weight: 300;
    }

    .fulilayer h1 {
        font-size: 16px;
        font-weight: normal;
        text-align: center;
        padding-bottom: 15px;
    }

    .fulilayer p {
        text-indent: 2em;
        font-size: 13px;
        color: #FFF;
    }

    .fulilayer li {
        font-size: 13px;
        color: #FFF;
        padding: 3px 0;
    }

    .fulilayer li a {
        color: #ffd121;
        font-family: simsun;
        text-decoration: underline;
    }

    .layui-layer .layui-layer-btn .layui-layer-btn0 {
        border-color: #d75544;
        background-color: #d75544;
        font-size: 14px;
        font-family: microsoft yahei;
        height: 32px;
        line-height: 32px;
        padding: 0px 20px;
    }
</style>

<div class="main-wrap page-index">
    <div class="main-body">
        <!-- banner -->
        <div class="banner-wrap">
            <div class="swiper-container ad-top" style="height:2.5rem;width: 100%;">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"
                         onclick="clickAd('72','https://qq66d.com');"
                         style=" background: url(https://cs85w6uf7rkk.hbwygdgs.com/img/yz/b36.gif)  no-repeat #f2f2f2; background-size: 100%, 100%;"></div>
                    <div class="swiper-slide"
                         onclick="clickAd('58','https://ty85e.com/');"
                         style=" background: url(https://cs85w6uf7rkk.hbwygdgs.com/img/yz/b55.gif)  no-repeat #f2f2f2; background-size: 100%, 100%;"></div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </div>

        <div class="main-content" style="padding-top:0;overflow:hidden;">

            <!-- 公告 -->
            <div class="warn-wrap">
                <marquee direction="left" class="warn-inner">
                    公告：{$site_name}欢迎您，永久地址：zdaohang.xyz 近期广告位调整，欢迎前来咨询，商务TG：@sansejiu 所有APP均无毒可用，免费下载。
                </marquee>
            </div>

            <div class="my-pagination">
                <ul class="my-pagination-ul swiper-pagination-clickable swiper-pagination-bullets">
                   {nav:cates name="cates" order="id desc" limit="5"}
                  <li class="swiper-pagination-bullet">{$vo.name}</li>
                   {/nav:cates}
                </ul>
            </div>
            <div class="swiper-containers" style="">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <ul>
                            {nav:apps name="apps" order="app_order asc" where="status='normal'" limit="40"}
                            <li>
                                <a href="javascript:void(0);" class="item-wrap">
                                    <div class="img-wrap" onclick="toinfo({$vo.id})">
                                        <img src="{$vo.logo}" alt="{$vo.app_name}">
                                    </div>
                                    <div class="name"
                                         onclick="toinfo({$vo.id})">{$vo.app_name}
                                    </div>
                                    <div class="btn-wrap btn-download" onclick="toinfo({$vo.id})">
                                        下载
                                    </div>
                                </a>
                            </li>
                            {/nav:apps}
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <ul>
                            {nav:apps name="apps" order="clicks desc" where="status='normal'" limit="40"}
                            <li>
                                <a href="javascript:void(0);" class="item-wrap">
                                    <div class="img-wrap" onclick="toinfo({$vo.id})">
                                        <img src="{$vo.logo}" alt="{$vo.app_name}">
                                    </div>
                                    <div class="name"
                                         onclick="toinfo({$vo.id})">{$vo.app_name}
                                    </div>
                                    <div class="btn-wrap btn-download" onclick="toinfo({$vo.id})">
                                        下载
                                    </div>
                                </a>
                            </li>
                            {/nav:apps}
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <ul>
                            {nav:apps name="apps" order="id desc" where="category_id=1 and status='normal'" limit="40"}
                            <li>
                                <a href="javascript:void(0);" class="item-wrap">
                                    <div class="img-wrap" onclick="toinfo({$vo.id})">
                                        <img src="{$vo.logo}" alt="{$vo.app_name}">
                                    </div>
                                    <div class="name"
                                         onclick="toinfo({$vo.id})">{$vo.app_name}
                                    </div>
                                    <div class="btn-wrap btn-download" onclick="toinfo({$vo.id})">
                                        下载
                                    </div>
                                </a>
                            </li>
                            {/nav:apps}
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <ul>
                            {nav:apps name="apps" order="id desc" where="category_id=2 and status='normal'" limit="40"}
                            <li>
                                <a href="javascript:void(0);" class="item-wrap">
                                    <div class="img-wrap" onclick="toinfo({$vo.id})">
                                        <img src="{$vo.logo}" alt="{$vo.app_name}">
                                    </div>
                                    <div class="name"
                                         onclick="toinfo({$vo.id})">{$vo.app_name}
                                    </div>
                                    <div class="btn-wrap btn-download" onclick="toinfo({$vo.id})">
                                        下载
                                    </div>
                                </a>
                            </li>
                            {/nav:apps}
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <ul>
                            {nav:apps name="apps" order="id desc" where="category_id=3 and status='normal'" limit="40"}
                            <li>
                                <a href="javascript:void(0);" class="item-wrap">
                                    <div class="img-wrap" onclick="toinfo({$vo.id})">
                                        <img src="{$vo.logo}" alt="{$vo.app_name}">
                                    </div>
                                    <div class="name"
                                         onclick="toinfo({$vo.id})">{$vo.app_name}
                                    </div>
                                    <div class="btn-wrap btn-download" onclick="toinfo({$vo.id})">
                                        下载
                                    </div>
                                </a>
                            </li>
                            {/nav:apps}
                        </ul>
                    </div>
                </div>
            </div>

            <!-- banner -->
            <div class="banner-wrap">
                <div class="swiper-container" style="height:2.5rem;">
                    <div class="swiper-wrapper">
                    <div class="swiper-slide"
                         onclick="clickAd('72','https://qq66d.com');"
                         style=" background: url(https://p.pstatp.com/origin/pgc-image/7301cc8ec68542f4a4c069884eb68a23)  no-repeat #f2f2f2; background-size: 100%, 100%;"></div>
                    <div class="swiper-slide"
                         onclick="clickAd('58','https://ty85e.com/');"
                         style=" background: url(https://p.pstatp.com/origin/pgc-image/8ccb4773763d44d9b5ea52e94134a076)  no-repeat #f2f2f2; background-size: 100%, 100%;"></div>
                </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div style="padding-bottom:1.4rem;">
                <!-- 分类 -->
                <div class="list-title">热门推荐</div>
                <!-- 分类app -->
                <div class="list-wrap" style="padding-bottom: 30px;">
                    {nav:apps name="apps" order="clicks desc" where="status='normal'" limit="10"}
                    <div class="item-wrap">
                        <div class="img-wrap" onclick="toinfo({$vo.id})">
                            <img src="{$vo.logo}" alt="{$vo.app_name}" >
                        </div>
                        <div class="content">
                            <div class="row1">
                                <div class="col-left" onclick="toinfo({$vo.id})">
                                    <div class="name">
                                        {$vo.app_name} <span class="tj-wrap">推荐</span></div>
                                    <div class="count">{$vo.clicks} 万次下载
                                        &nbsp;&nbsp;
                                    </div>
                                </div>
                                <div class="btn-wrap btn-download" onclick="toinfo({$vo.id})">
                                    <img src="/template/xiazai/picture/download.png"
                                         alt=""> 下载
                                </div>
                            </div>
                            <div class="desc">{$vo.desc}</div>
                        </div>
                    </div>
                    {/nav:apps}
                </div>
            </div>
            <div class="appendTemplate" style="position: fixed;bottom: 0;left: 0;max-width:750px;width: 100%;">

            </div>
        </div>
    </div>
</div>
<div class="screen-help">
    <div class="help-inner">
        <img src="/template/xiazai/picture/screen-help-close.png"
             class="img-close">
        <img src="/template/xiazai/picture/screen-help.png"
             class="screenshot">
    </div>
</div>

<div class="pc-download">
    <div class="inner-wrap">
        <div class="qrcode-wrap">
            <div class="item qrcode-ios">
                <div class="qrcode"></div>
                <div class="text">IOS 版</div>
            </div>
            <div class="item qrcode-android">
                <div class="qrcode"></div>
                <div class="text">Android 版</div>
            </div>
        </div>
        <div class="close-wrap"><img
                src="/template/xiazai/picture/close.png"
                alt="close"></div>
    </div>
</div>

<script src="/template/xiazai/js/loading11.js"></script>
<script src="/template/xiazai/js/layer.js"></script>
<script>
    var mobile = '2';
    var windowWidth = $(window).width();
    var mySwiper = new Swiper('.swiper-containers', {
        pagination: '.my-pagination-ul',
        paginationClickable: true,
        paginationBulletRender: function (mySwiper, index, className) {
            switch (index) {
                case 0:
                    name = '精品应用';
                    break;
                case 1:
                    name = '热门';
                    break;
                case 2:
                    name = '视频';
                    break;
                case 3:
                    name = '游戏';
                    break;
                case 4:
                    name = '直播专区';
                    break;
                default:
                    name = '';
            }
            return '<li class="' + className + '">' + name + '</li>';
        },
        onInit: function (obj) {
            var itemHeight = 0;
            if (windowWidth <= 360) {
                itemHeight = 150;
            } else if (windowWidth <= 375 && windowWidth > 360) {
                itemHeight = 153;
            } else if (windowWidth <= 414 && windowWidth > 375) {
                itemHeight = 165;
            } else if (windowWidth > 414) {
                itemHeight = 263;
            }
            ;
            var _num = $(".swiper-containers .swiper-slide").eq(obj.activeIndex).find('li').length;
            $(".swiper-containers .swiper-wrapper").height(Math.ceil(_num / 4) * itemHeight);
        },
        onSlideChangeEnd: function (obj) {
            var _height = $(".swiper-containers .swiper-slide").eq(obj.activeIndex).find('ul').height();
            $(".swiper-containers").height(_height);
        }
    });

    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        autoplay: 4000,
        slidesPerView: 1,
        paginationClickable: true,
        spaceBetween: 10,
        loop: true
    });
    new Swiper('.swiper-container.ad-top', {
        pagination: '.swiper-pagination',
        autoplay: 4000,
        slidesPerView: 1,
        paginationClickable: true,
        spaceBetween: 10,
        loop: true
    });

    if (mobile !== '0') {
        $(".add-screen").css({"left": "0.8%", 'padding-right': '0'});
    }

    $(".add-screen .close-wrap").click(function () {
        $(".add-screen").css({"visibility": "hidden"})
    });

    $(".add-screen .add-btn").click(function () {
        $(".screen-help").css({"visibility": "visible"})
    });

    $(".screen-help").click(function (e) {
        if (e.target.className !== 'screenshot') {
            $(".screen-help").css({"visibility": "hidden"})
        }
    });


    $(".pc-download").click(function (e) {
        if (e.target.className !== 'qrcode-wrap') {
            $(".pc-download").css({"visibility": "hidden"})
        }
    });

    function toinfo(id) {
        if (id > 0) {
           location.href = "/appdetail/" + id
        }
    }
</script>
</body>
</html>
