<div class="nav" id="top">
    <a target="_blank" style="color:yellow;font-weight:bold">
        <li onclick="jump('/')">首页</li>
    </a>
    {nav:cates name="cates" order="id desc" limit="10"}
    <a target="_self" style="color:yellow;font-weight:bold">
        <li onclick="jump('#{$vo.nickname}')">{$vo.name}</li>
    </a>
    {/nav:cates}
    <a target="_self" style="color:white;font-weight:bold">
        <li onclick="jump('/shoulu')">广告刊登</li>
    </a>
    <a target="_self" style="color:white;font-weight:bold">
        <li onclick="jump('/shoulu')">网址收录</li>
    </a>
    <br class="clear">
</div>
<p style="background:#fffce7;margin:0 0 10px;padding:10px;font-size:13px;color:red;border-radius:6px;">
        <span style="display:inline-block;background:#2cbafc;color:#fff;font-weight:bold;padding:2px 8px;border-radius:5px;"> 友情提示&nbsp;
            <i class="fa fa-bullhorn" aria-hidden="true"></i>
        </span> &nbsp;&nbsp;请务必收藏【
    <a href="http://linoit.com/users/buliangvip/canvases/lalala" target="_blank">网址发布页</a> 】,防止丢失我们!&nbsp;
    <span style="display:inline-block;background:#2cbafc;color:#fff;font-weight:bold;padding:2px 8px;border-radius:5px;"> 最新地址&nbsp;
            <i class="fa fa-internet-explorer" aria-hidden="true"></i>
        </span> ✌easycms.xyz &nbsp;✌easycms.xyz
    &nbsp;✌easycms.xyz &nbsp;✌easycms.xyz &nbsp;
</p>
<p style="background:#fffce7;margin:0 0 10px;padding:10px;font-size:13px;color:red;border-radius:6px;">
        <span style="display:inline-block;background:#2cbafc;color:#fff;font-weight:bold;padding:2px 8px;border-radius:5px;"> 网站公告&nbsp;
            <i class="fa fa-bullhorn" aria-hidden="true"></i>
        </span> &nbsp;&nbsp;国内浏览器屏蔽敏感内容！拒绝夸克、UC！推荐：谷歌、火狐、Via浏览器！打不开用本站提供的VPN！
</p>
<script>
    function jump(url){
        window.location.href = url
    }
</script>