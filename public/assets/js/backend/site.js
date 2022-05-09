define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'site/index' + location.search,
                    add_url: 'site/add',
                    edit_url: 'site/edit',
                    del_url: 'site/del',
                    multi_url: 'site/multi',
                    table: 'site',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'site_name', title: __('Site_name')},
                        {field: 'clicks', title: __('Clicks')},
                        {field: 'dclicks', title: __('Dclicks')},
                        {field: 'url', title: __('Url'), formatter: Table.api.formatter.url},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status},
                        {field: 'site_order', title: __('Site_order'), operate:'BETWEEN'},
                        {field: 'category.name', title: __('Category.name')},
                        {field: 'createtime', title: __('Createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});