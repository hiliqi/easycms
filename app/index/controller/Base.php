<?php

namespace app\index\controller;

use app\common\controller\Frontend;

class Base extends Frontend
{
    protected $site_name;
    protected $tpl;
    public function _initialize()
    {
        parent::_initialize();
        $this->site_name = config('site.name');
        $tpl_root = root_path() . '/public/template/' . config('site.tpl');
        if ($this->request->isMobile()) {
            $tpl_root = root_path() . '/public/template/' . config('site.mtpl');
        }

        $controller = strtolower($this->request->controller());
        $action = strtolower($this->request->action());
        $this->tpl = $tpl_root .'/'. $controller . '/' . $action . '.tpl';

        $this->view->assign([
            'site_name' => $this->site_name
        ]);
    }
}