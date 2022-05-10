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
    <style>
        .re {
            border: solid 1px #ccc;
            padding: 15px;
            margin-top: 20px;
        }
    </style>
    <script src="/template/daohang/js/jquery.min.js"></script>
    <script src="/template/daohang/js/layer.js"></script>
</head>
<body class="" style="">
<header class="layui-bg-black">
    <nav class="layui-container">
        <div class="logo"><a href="/">{$site_name}</a></div>
        <ul class="layui-nav layui-layout-left header-menu">
          <span class="introduce"> {$site_name} 本站域名： http://easycms.xyz
          </span>
            <span class="layui-nav-bar"></span>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="/">首页</a></li>
            <li class="layui-nav-item layui-this"><a href="#">收录</a></li>
            <span class="layui-nav-bar" style="left: 88px; top: 55px; width: 0px; opacity: 0;"></span>
        </ul>
    </nav>
</header>
<div class="main layui-container">
    <div class="layui-row layui-col-space10">
        <div class="layui-col-md12 layui-mt10">
            <div class="layui-card margin-bottom-0">
                <div class="layui-card-header">
                    <h2>收录规则</h2>
                    <span class="layui-hide-xs">本站收录规则请仔细阅读，请按照提示留言，感谢您的配合</span></div>
                <div class="index-links-content layui-pd10">
                    <div class="content" style="padding:20px;margin">
                        <p>1、提交前，请在贵站首页前三位置处添加本站链接，前六位择优收录，其他位置斟酌收录</p>
                        <p> 2、弹窗多体验差、欺诈、捆绑软件等行为，请勿申请；</p>
                        <p> 3、下链、变更位置请邮件通知，无故下链永不收录；</p>
                        <p> 4、站点每日来路低于30ip直接删除不予通知；</p>
                        <p> 5、刷量别来申请，能检测到，求求你们了！</p>
                        <p> 6、联系方式：https://t.me/easy_cms</p>
                        <p>  <span style="color:#FF0000;">友链代码：</span>
                            <textarea name="textfield" cols="100" rows="1" style="outline:none; resize: auto">
                                {$flink}
                            </textarea>
                        </p>
                    </div>
                </div>

                <form id="myform" class="form">
                    <div class="form-group">
                        <input type="text" id="site_name" class="form-control" placeholder="网站名称">
                    </div>
                    <div class="form-group">
                        <input type="text" id="site_url" class="form-control" placeholder="您的网址，必须包含协议头">
                    </div>
                    <div class="form-group">
                        <select id="cate" class="form-control">
                            {volist name="cates" id="vo"}
                            <option value="{$vo.id}">{$vo.name}</option>
                            {/volist}
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" id="scode" class="form-control" placeholder="验证码" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <img src="{:request()->rootUrl()}{:captcha_src()}" alt="验证码"
                             style="vertical-align:middle;cursor:pointer;"
                             onclick="this.src = '{:request()->rootUrl()}{:captcha_src()}?r=' + Math.random();">
                    </div>
                    <div class="form-group">
                        <button type="button" id="spost" class="btn btn-success btn-block">提交收录</button>
                    </div>
                </form>
                <div id="top"></div>
                <footer style="padding:10px;text-align:center;"><p><a href="/">>>返回首页<<</a></p></footer>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#spost").click(function () {
            if ($("#site_name").val() === '') {
                layer.alert('内容不能为空', {offset: '100px', title: '提交出错'});
                return false;
            }
            if ($("#site_url").val() === '') {
                layer.alert('内容不能为空', {offset: '100px', title: '提交出错'});
                return false;
            }
            if ($("#scode").val() === '') {
                layer.alert('验证码不能为空', {offset: '100px', title: '提交出错'});
                return false;
            }
            console.log( $("#cate").val())
            $.post("index/index/shoulu", {
                    "act": "submit",
                    'site_name': $("#site_name").val(),
                    'site_url': $("#site_url").val(),
                    'captcha': $("#scode").val(),
                    'cate': $("#cate").val(),
                },
                function (data) {
                    if (data.code == '0') {
                        layer.alert(data.msg, {offset: '100px', title: '提交成功'});
                        location.reload();
                    } else {
                        layer.alert(data.msg, {offset: '100px', title: '提交出错'});
                    }
                }, "json");
        });
    });
</script>
</body>
</html>