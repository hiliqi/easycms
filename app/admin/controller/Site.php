<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use fast\Tree;

/**
 * 
 *
 * @icon fa fa-circle-o
 */
class Site extends Backend
{
    
    /**
     * Site模型对象
     * @var \app\admin\model\Site
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\Site;
        $this->view->assign('cateList',
            build_select('row[category_id]', \app\common\model\Category::column('name', 'id'),
                null,
                ['class' => 'form-control selectpicker']));
    }
    
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个基础方法、destroy/restore/recyclebin三个回收站方法
     * 因此在当前控制器中可不用编写增删改查的代码,除非需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    

    /**
     * 查看
     */
    public function index()
    {
        //当前是否为关联查询
        $this->relationSearch = true;
        //设置过滤方法
        $this->request->filter(['strip_tags', 'trim']);
        if ($this->request->isAjax())
        {
            //如果发送的来源是Selectpage，则转发到Selectpage
            if ($this->request->request('keyField'))
            {
                return $this->selectpage();
            }
            list($where, $sort, $order, $offset, $limit) = $this->buildparams('site_name');
            $total = $this->model
                    ->withJoin(['category'])
                    ->where($where)
                    ->order($sort, $order)
                    ->count();

            $list = $this->model
                    ->withJoin(['category'])
                    ->where($where)
                    ->order($sort, $order)
                    ->limit($offset, $limit)
                    ->select();

            foreach ($list as $row) {
                
                
            }
            $result = array("total" => $total, "rows" => $list);

            return json($result);
        }
        return $this->view->fetch();
    }

    public function edit($ids = null)
    {
        if ($this->request->isPost()) {
            $this->token();
        }
        $row = $this->model->get($ids);
        $this->modelValidate = true;
        if (!$row) {
            $this->error(__('No Results were found'));
        }
        $this->view->assign('cateList',
            build_select('row[category_id]', \app\admin\model\Category::column('name', 'id'), $row['category_id'],
                ['class' => 'form-control selectpicker']));

        return parent::edit($ids);
    }
}
