<?php

namespace app\admin\model;

use app\common\model\BaseModel;


class App extends BaseModel
{
    // 表名
    protected $name = 'app';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = false;

    // 追加属性
    protected $append = [

    ];

    public function category()
    {
        return $this->belongsTo('Category', 'category_id', 'id')->joinType('LEFT');
    }

    //自定义标签获取列表
    public static function getApps($order, $where, $num)
    {
        if ($num == 0) {
            $models = self::where($where)
                ->order($order)->select();

        } else {
            if (strpos($num, ',') !== false) {
                $arr = explode(',', $num);
                $models = self::where($where)
                    ->limit($arr[0], $arr[1])->order($order)->select();
            } else {
                $models = self::where($where)
                    ->limit((int)$num)->order($order)->select();
            }
        }
        return $models;
    }

    //自定义标签获取分页列表
    public static function getPagedApps($order, $where, $pagesize)
    {
        $data = self::where($where)->order($order)
            ->paginate([
                'list_rows' => $pagesize,
                'query' => request()->param(),
            ]);

        $arr = $data->toArray();
        $paged = array();
        $paged['models'] = $arr['data'];
        $paged['page'] = [
            'total' => $arr['total'],
            'per_page' => $arr['per_page'],
            'current_page' => $arr['current_page'],
            'last_page' => $arr['last_page'],
            'query' => request()->param()
        ];
        return $paged;
    }
}
