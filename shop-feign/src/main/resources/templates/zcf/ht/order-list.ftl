<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/js/jquery.js"></script>
    <style>
        body{padding: 20px; /*overflow-y: scroll;*/}
    </style>
    <link id="layuicss-layer" rel="stylesheet" href="http://localhost:8765/layui/css/modules/layer/default/layer.css?v=3.1.1" media="all"></head>
<body>
<table class="layui-hide" id="test" lay-filter="test"></table>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('table', function() {
        var table = layui.table;
        var util = layui.util;
        table.render({
            elem: '#test'
            , url: '/commentController/goToOrderList'
            ,method: 'get'
            , toolbar: '#toolbarDemo'
            , title: '用户数据表'
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'orderwId', title: '订单编号', fixed: 'left', unresize: true, sort: true, totalRowText: '合计：'}
                , {field: 'userId', title: '用户ID', fixed: 'left',hide:true,  sort: true}
                , {field: 'orderType', title: '订单状态', fixed: 'left', unresize: true, sort: true, totalRowText:                          '合计：', templet: function (d){
                        console.log(d);
                        if(d.orderType==1){
                            return "待支付";
                        }else if(d.orderType==2){
                            return "待发货";
                        }else if(d.orderType==3){
                            return "待收货";
                        }else if(d.orderType==4){
                            return "待评价";
                        }else{
                            return "这是一笔黑单状态不详"
                        }

                    }}
                , {
                    field: 'orderPrice', title: '订单金额', edit: 'text', sort: true
                }
                , {
                    field: 'orderPrice', title: '支付金额', edit: 'text', sort: true
                }
                , {field: 'orderTime', title: '支付时间'}
                , {field: '#', title: '物流单号'}
                , {field: '#', title: '物流渠道'}
                , {fixed: 'right',title: '操作', width: 200, align: 'center', toolbar: '#barDemo'}
            ]]
            , page: true
        });

        //头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            switch (obj.event) {
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：' + data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选' : '未全选');
                    break;
            }
            ;
        });
        //监听行工具事件
        table.on('tool(test)', function (obj) {
            var data = obj.data;
//            console.log(obj)
//            layer.confirm('真的要注销该银行卡么?', function (index) {
            if (obj.event === 'del') {
                layer.confirm('真的要删除该商品吗?', function (index) {
                    console.log(data.orderId);
                    deleteFun(data.orderId);
                    obj.del();
                    layer.close(index);
                });
            }
        });
    })
    function deleteFun(orderId) {
        $.ajax({
            type: 'DELETE',
            url: '/commentController/orderDel/'+orderId,
//            data: {"bankId": bankId,},
            dataType: 'json',
            success: function (data) {
                if (data.code == 200) {
//                    alert("进入1");
                    layer.msg(data.msg, {
                        time: 2000, //2s后自动关闭
                        btn: ['确定']
                    });
                }
            }, error: function () {

            }
        });
    }
</script>
</body>
</html>