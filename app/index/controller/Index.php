<?php

namespace app\index\controller;

use app\common\model\App;
use app\common\model\Category;
use app\common\model\Site;
use GuzzleHttp\Client;
use think\facade\Config;

class Index extends Base
{
    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';

    public function index()
    {
        return $this->view->fetch($this->tpl);
    }

    public function shoulu()
    {
        $flink = config('site.friendship');
        if (request()->isPost()) {
            if (Config::get('fastadmin.login_captcha')) {
                $rule['captcha|' . __('Captcha')] = 'require|captcha';
                $data['captcha'] = $this->request->post('captcha');
            }
            $validate = validate($rule, [], false, false);
            $result = $validate->check($data);
            if (!$result) {
                return json(['code' => 1, 'msg' => '验证码错误']);
            }
            $site_name = replaceSpecialChar(request()->param('site_name'));
            $site_url = replaceSpecialChar(request()->param('site_url'));
            if (substr($site_url, 0, 4) !== "http") {
                return json(['code' => 1, 'msg' => '网址格式不对']);
            }
            $client = new Client();
            $res = $client->request('GET', $site_url); //读取版本号
            if ((int)($res->getStatusCode()) != 200) {
                return json(['code' => 1, 'msg' => '网址请求失败']);
            }
            $html = $res->getBody()->getContents();
            if (!str_contains($html, $flink)) { //未检测到友链代码
                return json(['code' => 1, 'msg' => '未在网站首页检测到友链代码']);
            }
            $site = new Site();
            $site->site_name = $site_name;
            $site->url = $site_url;
            $site->category_id = request()->param('cate');
            $site->status = 'normal';
            $site->site_order = 1;
            $site->save();
            return json(['code' => 0, 'msg' => '提交收录成功']);
        }
        $cates = Category::all();
        return $this->view->fetch($this->tpl, [
            'cates' => $cates,
            'flink' => $flink
        ]);
    }

    public function sitedetail($id)
    {
        $site = cache('site:' . $id);
        if (!$site) {
            $site = Site::findOrFail($id);
            cache('site:' . $id, $site);
        }
        $ip = request()->ip();
        if (empty(cookie('click:' . $ip))) {
            $site->clicks = $site->clicks + 1;
            $site->dclicks = $site->dclicks + 1;
            $site->save();
            cookie('click:' . $ip, $ip);
        }
        return redirect($site->url);
    }

    public function appdetail($id)
    {
        $app = cache('appinfo:' . $id);
        if (!$app) {
            $app = App::findOrFail($id);
            cache('appinfo:' . $id, $app);
        }

        $ip = request()->ip();
        if (empty(cookie('click:' . $ip))) {
            $app->clicks = $app->clicks + 1;
            $app->dclicks = $app->dclicks + 1;
            $app->save();
            cookie('click:' . $ip, $ip);
        }
        return view($this->tpl, [
            'app' => $app
        ]);
    }
}