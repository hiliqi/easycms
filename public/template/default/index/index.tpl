<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="referrer" content="always">
    <title>{$site_name}-努力做一个好看好玩好用的福利导航！</title>
    <meta name="description" content="{$site_name}-努力做一个好看好玩好用的福利导航！">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="MobileOptimized" content="width">
    <meta name="HandheldFriendly" content="true">
    <meta name="author" content="BuLiangYanJiuSuo">
    <link rel="stylesheet" href="/template/default/css/main.css">
    <link rel="shortcut icon" href="https://buliangdh11.xyz/favicon.ico">
    <link href="/template/default/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/template/default/css/waifu.css">
    <style>
        body {
            background: url(https://shop.io.mi-img.com/app/shop/img?id=shop_2881a36bd55e009d225f83c8df6d8c77.jpeg) center top no-repeat;
            background-color: #422f31;
            overflow: hidden;
        }

        @media screen and (max-width: 960px) {
            body {
                background-size: 150%;
            }
        }
    </style>
    <script src="/template/default/js/live2d.min.js"></script>
    <script src="/template/default/js/waifu-tips.js"></script>
</head>
<body>
<div id="container">
    {include file="./template/default/pub/head.tpl"}
    <div class="cate" id="app">
        <div class="app">
            <div class="cate_name">
                <p>
                    <i class="fa fa-mobile" aria-hidden="true"></i> &nbsp;福利APP：手机党的必备神器
                </p>
            </div>
            <div class="navi">
                {nav:apps name="apps" order="app_order asc" limit="12"}
                <div class="appico">
                    <a href="/appdetail/{$vo.id}" target="_blank">
                        <div class="naicon btn btn-raised" title="{$vo.app_name}">
                            <img src="{$vo.logo}">
                        </div>
                    </a>
                    <p>{$vo.app_name}</p>
                </div>
                {/nav:apps}
            </div>
        </div>
    </div>
    {nav:cates name="cates" order="id desc" limit="10"}
    <div class="cate" id="{$vo.nickname}">
        <div class="cate_name orange">
            <p><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> {$vo.name}</p>
        </div>
        {nav:sites name="sites" order="site_order asc" limit="12" id="site"
            where="category_id=($vo->id)"}
        <a rel="external nofollow" href="/sitedetail/{$site.id}" target="_blank" title="{$site.site_name}"
           style="color:red;font-weight:bold">
            <li>{$site.site_name}</li>
        </a>
        {/nav:sites}
        <br class="clear">
    </div>
    {/nav:cates}
    <div class="cate footer" id="shoulu">
        <p> ©{$site_name}丨<a href="/shoulu" target="_blank">收录合作</a>
            丨<a href="/" target="_blank">网址发布</a>
            丨模板:<a href="/" target="_blank">秘密入口</a>
        </p>
        <p>警告：若访客所在地区法律不允许，请自觉离开！</p></div>
</div>
<div class="side">
    <a href="/" target="_blank">
        <div class="side_div guestbook">永久网址</div>
    </a>
    <a href="/shoulu" target="_blank">
        <div class="side_div guestbook">广告刊登</div>
    </a>
    <a href="/shoulu" target="_blank">
        <div class="side_div guestbook">收录提交</div>
    </a>
    <a href="#" target="_self">
        <div class="side_div" id="top"></div>
    </a>
</div>
<script src="/template/default/js/jquery.min.js"></script>
<script src="/template/default/js/autoload.js"></script>
<script>
    var img = [];
    img[0] = "https://shop.io.mi-img.com/app/shop/img?id=shop_2881a36bd55e009d225f83c8df6d8c77.jpeg";
    img[1] = "https://shop.io.mi-img.com/app/shop/img?id=shop_d287355b578b7478254da9698c7d1380.jpeg";
    var color = [];
    color[0] = "#422f31";
    color[1] = "#ffeceb";
    var rand = Math.round(Math.random() * 1);
    document.write("<style>body{background:url(" + img[rand] + ") center top no-repeat;background-color:" + color[rand] + ";overflow: hidden;}@media screen and (max-width:960px){body{  background-size:150%;}}</style>")
</script>

<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments)
    }

    gtag('js', new Date());
    gtag('config', 'UA-159895294-1');
</script>


<div id="waifu-toggle">
    <span>看板娘</span>
</div>
<div id="waifu" style="bottom: 0px;">
    <div id="waifu-tips" class="">中午了，工作了一个上午，现在是午餐时间！</div>
    <canvas id="live2d" width="800" height="800"></canvas>
    <div id="waifu-tool">
        <span class="fa fa-lg fa-comment"></span>
        <span class="fa fa-lg fa-paper-plane"></span>
        <span class="fa fa-lg fa-user-circle"></span>
        <span class="fa fa-lg fa-street-view"></span>
        <span class="fa fa-lg fa-camera-retro"></span>
        <span class="fa fa-lg fa-info-circle"></span>
        <span class="fa fa-lg fa-times"></span>
    </div>
</div>
</body>
</html>