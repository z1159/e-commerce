<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/js/jquery.js"></script>
    <style>
        body{padding: 20px; /*overflow-y: scroll;*/}
    </style>
</head>
<body>
<table class="layui-hide" id="test" lay-filter="test"></table>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
        <button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <#--<a class="layui-btn layui-btn-xs" lay-event="edit" id="pay">存款</a>-->
    <#--<a class="layui-btn layui-btn-xs" lay-event="edit" id="pay1">还款</a>-->

    <#--<!-- 这里同样支持 laytpl 语法，如： &ndash;&gt;-->
    <#--<a class="layui-btn layui-btn-xs" lay-event="check">存款</a>-->

    <#--<a class="layui-btn layui-btn-xs" lay-event="check">还款</a>-->

    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="edit">修改</a>
    <#--<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="autopay">转账</a>-->




</script>


<script src="/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>
    layui.use('table', function() {
        var table = layui.table;
        var util = layui.util;
        table.render({
            elem: '#test'
            , url: '/coupon/queryCouponList'
            ,method: 'get'
            , toolbar: '#toolbarDemo'
            , title: '用户数据表'
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'couponId', title: '优惠券id', fixed: 'left', unresize: true, sort: true, totalRowText: '合计：'}
                , {field: 'cpName', title: '优惠券名称', fixed: 'left',  sort: true}
                , {field: 'cpPresent', title: '介绍', fixed: 'left', unresize: true, sort: true, totalRowText: '合计：'}
                , {
                    field: 'cpTitle', title: '标签', edit: 'text', sort: true
                }
                , {field: 'cpMeet', title: '最低消费额',templet: function (d){
                    console.log(d);
                        return "满"+d.cpMeet+"元可用";
                    }}
                , {field: 'cpSubtract', title: '满减金额',templet: function (d){
                    console.log(d);
                    return "减免"+d.cpSubtract+"元";
                }}
                , {
                    field: 'cpAverage', title: '每人限领'
                }
                , {field: 'cpType', title: '优惠券类型', templet: function (d){
                    console.log(d);
                    if(d.cpType==0){
                        return "通用领券";
                    }else if(d.cpType==1){
                        return "注册赠券";
                    }else if(d.cpType==2){
                        return "兑换码";
                    }else{
                        return "其他";
                    }}}

                , {field: 'cpCount', title: '优惠券数量'}
                , {field: 'cpRange', title: '商品限制范围', templet: function (d){
                    if(d.cpRange==0){
                        return "全场通用";
                    }else if(d.cpRange==1){
                        return "指定分类";
                    }else if(d.cpRange==2){
                        return "指定商品";
                    }else{
                        return "其他";
                    }
                }}
                , {field: 'cpState', title: '优惠券状态', templet: function (d){
                    if(d.cpState==0){
                        return "正常";
                    }else{
                        return "过期";
                    }
                }}
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
                case 'add':
                    addFun();
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
                    console.log(data.couponId);
                    deleteFun(data.couponId);
                    obj.del();
                    layer.close(index);
                });
            } else if (obj.event === 'edit') {
                layer.open({
                    type: 2,
                    title: '修改',
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['800px', '500px'],
                    content: '/coupon/openCouponUpdate/'+data.couponId
                    ,btnAlign: 'c' //按钮居中
                    ,shade: 0 //不显示遮罩
                    ,yes: function(){
                        layer.closeAll();
                    }
                    ,
                    success: function(layero, index){
                        var body = layer.getChildFrame('body', index);
                        body.find('#form-commd ').val(data);
                        console.log(data);
//                        $('#chc_id').val(data.chc_id);   //回显的操作最重要的一步就是这个啦，其他的也是差不多的
                    }
                });
            }
        });
//        });


    })

    function deleteFun(couponId) {
        $.ajax({
            type: 'DELETE',
            url: '/coupon/deleteCoupon/'+couponId,
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
    function addFun() {

        layer.open({
            title: '修改',
            shadeClose: true,
            shade: false,
            maxmin: true, //开启最大化最小化按钮
            area: ['800px', '500px'],
            type: 2,
            content: '/coupon/openCouponAdd' //这里content是一个普通的String
            ,btnAlign: 'c' //按钮居中
            ,shade: 0 //不显示遮罩
        });

    }






</script>

</body>

</html>