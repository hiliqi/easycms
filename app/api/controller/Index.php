<?php

namespace app\api\controller;

use app\common\controller\Api;
use app\common\model\App;
use app\common\model\Site;

/**
 * 首页接口.
 */
class Index extends Api
{
    protected $noNeedLogin = ['*'];
    protected $noNeedRight = ['*'];

    /**
     * 首页.
     */
    public function index()
    {
        $this->success('请求成功');
    }

    public function siteclear()
    {
        if (config('site.apikey') == request()->param('key')) {
            $sites = Site::all();
            foreach ($sites as $site) {
                $site['dclicks'] = 0;
                $site->save();
            }
            $this->success('清除站点日点击数完成');
        } else {
            $this->error('密钥无效');
        }

    }

    public function appclear()
    {
        if (config('site.apikey') == request()->param('key')) {
            $apps = App::all();
            foreach ($apps as $app) {
                $app['dclicks'] = 0;
                $app->save();
            }
            $this->success('清除app日点击数完成');
        } else {
            $this->error('密钥无效');
        }

    }
}
