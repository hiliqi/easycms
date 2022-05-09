<?php

declare(strict_types=1);

namespace app\middleware;

class SetDefaultApp
{
    /**
     * 处理请求
     *
     * @param \think\Request $request
     * @param \Closure       $next
     * @return Response
     */
    public function handle($request, \Closure $next)
    {
        // 默认应用文件夹名
        $default_app = config('app.default_app');

        // 其他子应用文件夹名字
        //$child_app = config('app.child_app');

        $path_array = explode('/', $request->pathinfo());

        // 循环匹配子应用，如果匹配到了，说明访问的是子应用
//        foreach ($child_app as $val) {
//            if (preg_match('/' . $val . '/i', $path_array[0])) {
//                return $next($request);
//            }
//        }

        // 没有匹配到，则是访问的默认应用
        // 需要 hook 修改 pathinfo 信息，便于 topthink/think-multi-app 包的使用
        array_unshift($path_array, $default_app);

        // 设置为默认应用
        $request->setPathinfo(join('/', $path_array));

        return $next($request);
    }
}