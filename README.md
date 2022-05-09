# 基础说明
easycms是一套可以用做导航站或者下载站的cms。本程序是基于yfcmf-tp6开发的，可以使用yfcmf-tp6的插件

# 程序安装
- 环境要求：php版本>=7.4
- 将网站目录指向public目录
- 伪静态规则：
```
location / {
    if (!-e $request_filename){
        rewrite  ^(.*)$  /index.php?s=$1  last;   break;
    }
}

location ~ \.(tpl)$ {
    deny all;
}
```
- 访问域名即可安装

# 更改后台地址
config/app.php文件第22行，将yfcmf改成你自己的后台地址

# 模板
模板目录是public/template/模板目录，然后在后台填写你的模板目录名称即可。如果是自适应模板，则PC模板和手机模板使用同一套模板即可。目前自带两套模板，default是导航站模板，default2是下载站模板。

# 模板标签
- 分类标签：nav:cates
- 站点标签：nav:sites
- 站点分页标签：nav:pagedsites
- 应用标签：nav:apps
- 应用分页标签：nav:pagedapps

# 联系我们
飞机号：@ijiaozhu

