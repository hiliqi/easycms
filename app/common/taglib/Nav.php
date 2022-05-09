<?php

namespace app\common\taglib;

use think\template\TagLib;

class Nav extends TagLib
{
    protected $tags = [
        // 标签定义： attr 属性列表 close 是否闭合（0 或者1 默认1） alias 标签别名 level 嵌套层次
        'apps' => ['attr' => 'order,limit,where', 'close' => 1],
        'pagedapps' => ['attr' => 'order,pagesize,where', 'close' => 1],
        'cates' => ['attr' => 'order,limit,where', 'close' => 1],
        'sites' => ['attr' => 'order,limit,where', 'close' => 1],
        'pagedsites' => ['attr' => 'order,pagesize,where', 'close' => 1],
    ];

    public function tagSites($tag, $content)
    {
        $order = isset($tag['order']) ? $tag['order'] : 'id desc';
        $limit = isset($tag['limit']) ? $tag['limit'] : 0;
        $where = isset($tag['where']) ? $tag['where'] : '1=1';
        $parse = '<?php ';
        $parse .= '$sites = getSites("' . $order . '","' . $where . '","' . $limit . '");';
        $parse .= ' ?>';
        $parse .= '{volist name="sites" id="vo"';
        if (!empty($tag['id'])) {
            $parse .= ' id="' . $tag['id'] . '"';
        }
        if (!empty($tag['key'])) {
            $parse .= ' key="' . $tag['key'] . '"';
        }
        if (!empty($tag['offset'])) {
            $parse .= ' offset="' . $tag['offset'] . '"';
        }
        if (!empty($tag['length'])) {
            $parse .= ' length="' . $tag['length'] . '"';
        }
        $parse .= '}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }

    public function tagPagedSites($tag, $content)
    {
        $order = isset($tag['order']) ? $tag['order'] : 'id desc';
        $pagesize = isset($tag['pagesize']) ? $tag['pagesize'] : 10;
        $where = isset($tag['where']) ? $tag['where'] : '1=1';
        $parse = '<?php ';
        $parse .= '$data = getPagedSites("' . $order . '","' . $where . '","' . $pagesize . '");';
        $parse .= '$page = $data["page"];';
        $parse .= '$param = $data["param"];';
        $parse .= '$sites = $data["models"];';
        $parse .= ' ?>';
        $parse .= '{volist name="sites" id="vo"';
        if (!empty($tag['id'])) {
            $parse .= ' id="' . $tag['id'] . '"';
        }
        if (!empty($tag['key'])) {
            $parse .= ' key="' . $tag['key'] . '"';
        }
        if (!empty($tag['offset'])) {
            $parse .= ' offset="' . $tag['offset'] . '"';
        }
        if (!empty($tag['length'])) {
            $parse .= ' length="' . $tag['length'] . '"';
        }
        $parse .= '}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }

    public function tagApps($tag, $content)
    {
        $order = isset($tag['order']) ? $tag['order'] : 'id desc';
        $limit = isset($tag['limit']) ? $tag['limit'] : 0;
        $where = isset($tag['where']) ? $tag['where'] : '1=1';
        $parse = '<?php ';
        $parse .= '$apps = getApps("' . $order . '","' . $where . '","' . $limit . '");';
        $parse .= ' ?>';
        $parse .= '{volist name="apps" id="vo"';
        if (!empty($tag['id'])) {
            $parse .= ' id="' . $tag['id'] . '"';
        }
        if (!empty($tag['key'])) {
            $parse .= ' key="' . $tag['key'] . '"';
        }
        if (!empty($tag['offset'])) {
            $parse .= ' offset="' . $tag['offset'] . '"';
        }
        if (!empty($tag['length'])) {
            $parse .= ' length="' . $tag['length'] . '"';
        }
        $parse .= '}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }

    public function tagPagedapps($tag, $content)
    {
        $order = isset($tag['order']) ? $tag['order'] : 'id desc';
        $pagesize = isset($tag['pagesize']) ? $tag['pagesize'] : 10;
        $where = isset($tag['where']) ? $tag['where'] : '1=1';
        $parse = '<?php ';
        $parse .= '$data = getPagedApps("' . $order . '","' . $where . '","' . $pagesize . '");';
        $parse .= '$page = $data["page"];';
        $parse .= '$param = $data["param"];';
        $parse .= '$apps = $data["models"];';
        $parse .= ' ?>';
        $parse .= '{volist name="apps" id="vo"';
        if (!empty($tag['id'])) {
            $parse .= ' id="' . $tag['id'] . '"';
        }
        if (!empty($tag['key'])) {
            $parse .= ' key="' . $tag['key'] . '"';
        }
        if (!empty($tag['offset'])) {
            $parse .= ' offset="' . $tag['offset'] . '"';
        }
        if (!empty($tag['length'])) {
            $parse .= ' length="' . $tag['length'] . '"';
        }
        $parse .= '}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }

    public function tagCates($tag, $content)
    {
        $order = isset($tag['order']) ? $tag['order'] : 'id desc';
        $limit = isset($tag['limit']) ? $tag['limit'] : 0;
        $where = isset($tag['where']) ? $tag['where'] : '1=1';
        $parse = '<?php ';
        $parse .= '$cates = getCates("' . $order . '","' . $where . '","' . $limit . '");';
        $parse .= ' ?>';
        $parse .= '{volist name="cates" id="vo"';
        if (!empty($tag['id'])) {
            $parse .= ' id="' . $tag['id'] . '"';
        }
        if (!empty($tag['key'])) {
            $parse .= ' key="' . $tag['key'] . '"';
        }
        if (!empty($tag['offset'])) {
            $parse .= ' offset="' . $tag['offset'] . '"';
        }
        if (!empty($tag['length'])) {
            $parse .= ' length="' . $tag['length'] . '"';
        }
        $parse .= '}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }

}