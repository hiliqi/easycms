define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'app/index' + location.search,
                    add_url: 'app/add',
                    edit_url: 'app/edit',
                    del_url: 'app/del',
                    multi_url: 'app/multi',
                    table: 'app',
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
                        {field: 'logo', title: __('Logo'), formatter: Controller.api.formatter.thumb, operate: false},
                        {field: 'app_name', title: __('App_name')},
                        {field: 'category.name', title: __('Category.name')},
                        {field: 'clicks', title: __('Clicks')},
                        {field: 'dclicks', title: __('Dclicks')},
                        {field: 'android', title: __('Android'), formatter: Table.api.formatter.url},
                        {field: 'ios', title: __('Ios'), formatter: Table.api.formatter.url},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status},
                        {field: 'app_order', title: __('App_order'), operate: 'BETWEEN'},
                        {
                            field: 'createtime',
                            title: __('Createtime'),
                            operate: 'RANGE',
                            addclass: 'datetimerange',
                            formatter: Table.api.formatter.datetime
                        },
                        {
                            field: 'operate',
                            title: __('Operate'),
                            table: table,
                            events: Table.api.events.operate,
                            formatter: Table.api.formatter.operate
                        }
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
            },
            formatter: {
                thumb: function (value, row, index) {
                    var html = '<a href="' + row.logo + '" target="_blank"><img src="' + row.logo + '" alt="" style="max-height:60px;max-width:120px"></a>';
                    // if (row.mimetype.indexOf("image") > -1) {
                    //     html = '<a href="' + row.fullurl + '" target="_blank"><img src="' + row.fullurl + row.thumb_style + '" alt="" style="max-height:60px;max-width:120px"></a>';
                    // } else {
                    //     html = '<a href="' + row.fullurl + '" target="_blank"><img src="' + Fast.api.fixurl("ajax/icon") + "?suffix=" + row.imagetype + '" alt="" style="max-height:90px;max-width:120px"></a>';
                    // }
                    return '<div style="width:120px;margin:0 auto;text-align:center;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;">' + html + '</div>';
                },
                filename: function (value, row, index) {
                    return '<div style="width:150px;margin:0 auto;text-align:center;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;">' + Table.api.formatter.search.call(this, value, row, index) + '</div>';
                },
                mimetype: function (value, row, index) {
                    return '<div style="width:80px;margin:0 auto;text-align:center;overflow:hidden;white-space: nowrap;text-overflow: ellipsis;">' + Table.api.formatter.search.call(this, value, row, index) + '</div>';
                },
            }
        }
    };
    return Controller;
});