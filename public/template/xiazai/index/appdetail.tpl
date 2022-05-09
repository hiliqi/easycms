<!DOCTYPE html>
<style>
    html.pc,body.pc {
        background: url(https://p.pstatp.com/origin/pgc-image/f4d2c8cab94b4e12bc99d76c8dcdcbf2) no-repeat;
        background-size: 100% auto;
    }
</style>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$app.app_name}-{$site_name}</title>
    <meta name="description" content="{$app.app_name}详情介绍及下载地址">
    <meta data-n-head="true" data-hid="og:site_name" name="og:site_name" property="og:site_name" content="{$site_name}"/>
    <meta data-n-head="true" data-hid="og:description" name="og:description" property="og:description" content="{$app.app_name}详情介绍及下载地址"/>
    <meta data-n-head="true" data-hid="og:title" name="og:title" content="{$app.app_name}-{$site_name}"/>
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
    <script src="/template/xiazai/js/common.js"></script>
    <script src="/template/xiazai/js/jquery.min.js"></script>
    <script src="/template/xiazai/js/loading11.js"></script>
    <script src="/template/xiazai/js/swiper.min.js"></script>
    <script src="/template/xiazai/js/qrcode.min.js"></script>
</head>
<body class="" >
<style type="text/css">
    .page-detail .basic-wrap .img-wrap img{
        border-radius: 0.2rem;
        border: 1px solid #eeeeee;
    }
    .page-index .list-wrap .item-wrap .img-wrap img{
        border-radius: 0.2rem;
        border: 1px solid #eeeeee;
    }
</style>
<div class="main-wrap page-detail">
    <div class="main-body">
        <div class="header-wrap">
            <div class="header-inner">
                <div class="col-left" onclick="window.location.href='/'">
                    <img src="/template/xiazai/picture/back.png" alt="" class="img-back">
                </div>
                <div class="col-center scroll">
                    <div class="site-name">{$site_name}</div>
                </div>
                <div class="col-right scroll">
                    <div class="btn-download" data-id="{$app.id}" data-ioslink="{$app.ios}"
                         data-androidlink="{$app.android}" >
                        下载
                    </div>
                </div>
            </div>
        </div>
        <div class="main-content">
            <div class="basic-wrap">
                <div class="img-wrap">
                    <img src="{$app.logo}" alt="{$app.app_name}">
                </div>
                <div class="content">
                    <div class="col-left">
                        <div class="name">
                            {$app.app_name}
                        </div>
                        <div class="count">
                            {$app.clicks} 万次下载 &nbsp;&nbsp;{$app.size}
                        </div>
                        <div class="desc">
                            版本:{$app.version}&nbsp;&nbsp;&nbsp;日期:{$app.create_time|date='Y-m-d'}
                        </div>
                    </div>
                    <div class="btn-wrap btn-download" data-id="{$app.id}" data-ioslink="{$app.ios}"
                         data-androidlink="{$app.android}">
                        <img src="/template/xiazai/picture/download.png" alt=""> 下载
                    </div>
                </div>
            </div>
            
            <div class="desc-wrap">
                <div class="title-wrap desc">应用描述</div>
                <div class="content">
                    <div class="text line3">
                       {$app.desc}
                    </div>
                    <div class="btn-wrap">
                        <img src="/template/xiazai/picture/more-desc.png" class="btn-more">
                    </div>
                </div>
            </div>

            <!--更多应用推荐-->
            <div class="page-index">
                <div class="list-title">热门推荐</div>
                <div class="list-wrap">
                    {nav:apps name="apps" order="clicks desc" where="status='normal'" limit="10"}
                    <div class="item-wrap">
                        <div class="img-wrap" onclick="toinfo({$vo.id})">
                            <img src="{$vo.logo}" alt="{$vo.app_name}">
                        </div>
                        <div class="content">
                            <div class="row1">
                                <div class="col-left" onclick="toinfo({$vo.id})">
                                    <div class="name" onclick="toinfo({$vo.id})">
                                        {$vo.app_name}
                                        <span class="tj-wrap">推荐</span>									        </div>
                                    <div class="count">{$vo.clicks} 万次下载 &nbsp;&nbsp;</div>
                                </div>
                                <div class="btn-wrap btn-download" data-id="{$vo.id}" data-ioslink="{$vo.ios}"
                                     data-androidlink="{$vo.android}">
                                    <img src="/template/xiazai/picture/download.png" alt=""> 下载
                                </div>
                            </div>
                            <div class="desc">{$vo.desc}</div>
                        </div>
                    </div>
                    {/nav:apps}
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 弹层截图 -->
<div class="layer-screenshot ">
    <div class="swiper-container">
        <div class="swiper-wrapper">

            <div class="swiper-slide"
                 style=" background: url('https://image.hkmarket1314.com/meitulu1573887799.jpg')  no-repeat 50% 50%; background-size: cover;background-color:transparent;">
            </div>


            <div class="swiper-slide"
                 style=" background: url('http://zhainvshen.net/wp-content/uploads/2018/10/022-1.jpg')  no-repeat 50% 50%; background-size: cover;background-color:transparent;">
            </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
</div>

<div class="pc-download">
    <div class="inner-wrap">
        <div class="qrcode-wrap">
            <div class="item qrcode-ios">
                <div class="qrcode" id="qrcode-ios"></div>
                <div class="text">IOS 版</div>
            </div>
            <div class="item qrcode-android">
                <div class="qrcode" id="qrcode-android"></div>
                <div class="text">Android 版</div>
            </div>
        </div>
        <div class="close-wrap"><img src="/template/xiazai/picture/close.png" alt=""></div>
    </div>
</div>

<script>
    var mobile = '2';
    $(function ()
    {
        var swiper = new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            slidesPerView: 1,
            paginationClickable: true,
            spaceBetween: 10,
            loop: true,
        });

        $(".screenshot-wrap .img-wrap").bind("click", function () {
            $(".layer-screenshot").css("z-index", 99);
            var index = $(this).index();
            swiper.slideTo(index + 1, 0)
        });

        $(".layer-screenshot").click(function ()
        {
            $(".layer-screenshot").css("z-index", 1)
        });

        $(".page-detail").scroll(function ()
        {
            var eHight = $(".basic-wrap").outerHeight();
            var sHeight = $(".page-detail").scrollTop();
            if (sHeight > eHight) {
                $(".header-wrap").addClass("border-b");
                $(".scroll").fadeIn()
            } else {
                $(".header-wrap").removeClass("border-b");
                $(".scroll").fadeOut()
            }
        });

        $(".btn-more").click(function ()
        {
            var canUp = $(this).hasClass("up");
            if (canUp) {
                $(".desc-wrap .text").addClass("line3");
                $(this).removeClass("up")
            } else {
                $(".desc-wrap .text").removeClass("line3");
                $(this).addClass("up")
            }
        });

       new QRCode(document.getElementById("qrcode-ios"), {
            text: '{$app.ios}',
            width: 128,
            height: 128,
            colorDark : "#000000",
            colorLight : "#ffffff",
            correctLevel : QRCode.CorrectLevel.H
        });

        new QRCode(document.getElementById("qrcode-android"), {
            text: '{$app.android}',
            width: 128,
            height: 128,
            colorDark : "#000000",
            colorLight : "#ffffff",
            correctLevel : QRCode.CorrectLevel.H
        });

         $(".btn-download").click(function (e)
        {
            var ios = $(this).attr('data-ioslink');
            var android = $(this).attr('data-androidlink');
            if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
                //alert(navigator.userAgent);
                window.location.href = ios
            } else if (/(Android)/i.test(navigator.userAgent)) {
                //alert(navigator.userAgent);
                window.location.href = android
            } else {
                window.location.href = android
            };
        });

        $(".pc-download").click(function (e) {
            if (e.target.className !== 'qrcode-wrap') {
                $(".pc-download").css({ "visibility": "hidden" })
            }
        })
    });

    /*});*/
    function toinfo(id) {
        if (id > 0) {
            location.href = "/appdetail/" + id
        }
    }
</script>

</body>
</html>
