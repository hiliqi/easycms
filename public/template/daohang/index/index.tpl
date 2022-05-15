<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>{$site_name}-努力做一个好看好玩好用的福利导航！</title>
    <meta name="description" content="{$site_name}-努力做一个好看好玩好用的福利导航！">
    <link rel="stylesheet" href="/template/daohang/css/bootstrap.min.css" media="all">
    <link rel="stylesheet" href="/template/daohang/css/layui.css" media="all">
    <link rel="stylesheet" href="/template/daohang/css/style.css" media="all">
</head>
<body>
<header class="layui-bg-black">
    <nav class="layui-container">
        <div class="logo"><a href="/">{$site_name}</a></div>
        <ul class="layui-nav layui-layout-left header-menu">
            <span class="introduce">本站域名： http://easycms.xyz</span>
            <span class="layui-nav-bar"></span>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-this"><a href="/">首页</a></li>
            <li class="layui-nav-item"><a href="/shoulu">收录</a></li>
            <span class="layui-nav-bar" style="left: 88px; top: 55px; width: 0px; opacity: 0;"></span>
        </ul>
    </nav>
</header>
<div class="main layui-container">
    <div class="links-top" id="recommend">
        <ul>

        </ul>
    </div>

    <div class="layui-row layui-col-space10">

        <div>
            <div>
                <div>
                    <h2><font color="#000">推荐APP</font></h2>
                </div>
                <div class="index-links-content">
                    {nav:apps name="apps" order="app_order asc" limit="12"}
                    <a href="/appdetail/{$vo.id}" target="_blank">
                        <div class="lan cu">{$vo.app_name}</div>
                    </a>
                    {/nav:apps}
                </div>
            </div>
        </div>

        {nav:cates name="cates" order="id desc" limit="10"}
        <div>
            <div>
                <div>
                    <h2><font color="#000">{$vo.name} &nbsp;&nbsp;</font></h2>
                </div>
                <div class="index-links-content">
                    {nav:sites name="sites" order="site_order asc" limit="12" id="site"
                    where="category_id=($vo->id)  and status='normal'"}
                    <a href="/sitedetail/{$site.id}" target="_blank">
                        <div class="lan cu">{$site.site_name}</div>
                    </a>
                    {/nav:sites}
                </div>
            </div>
        </div>
        {/nav:cates}

    </div>
</div>
</div>
<div class="layui-footer margin-top-10" id="footer">
    <div>
        <p style="text-align:center">禁止十八周岁以下未成年访问.{$site_name}&nbsp;All Rights reserved.
        </p>
    </div>
</div>

</body>
</html>