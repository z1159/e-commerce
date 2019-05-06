<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>会员管理</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css" media="all">
    <style>
        body{margin: 10px;}
        .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
    </style>
</head>
<body>

<div class="demoTable">
    搜索用户名：
    <div class="layui-inline">
        <input class="layui-input" name="userName" id="demoReload" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
</div>


<table class="layui-hide" id="demo" lay-filter="test"></table>

<#--<script type="text/html" id="barDemo">-->

<#--</script>-->


<script src="<%=request.getContextPath()%>/layui/layui.js"></script>
<script>



    layui.use(['laydate', 'laypage', 'layer', 'table', 'element'], function(){
        var laydate = layui.laydate //日期
                ,laypage = layui.laypage //分页
                ,layer = layui.layer //弹层
                ,table = layui.table //表格
                ,element = layui.element //元素操作




        //监听Tab切换
        element.on('tab(demo)', function(data){
            layer.tips('切换了 '+ data.index +'：'+ this.innerHTML, this, {
                tips: 1
            });
        });

//执行一个 table 实例
        table.render({
            elem: '#demo'
            ,height: 420
            ,url: '<%=request.getContextPath()%>/login/queryUserList' //数据接口
            ,title: '用户表'
            ,page: true //开启分页
            ,toolbar: 'default' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            ,cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'userId', title: '用户编号', sort: true, fixed: 'left',align: 'center'}
                ,{field: 'userName', title: '用户名称',align: 'center'}
                ,{field: 'userSex', title: '用户性别', align: 'center', sort: true}
                ,{field: 'userBir', title: '用户生日',align: 'center', sort: true}
                ,{field: 'userPhone', title: '用户电话', align: 'center', sort: true}
                ,{field: 'userGrade', title: '用户等级',align: 'center', sort: true}
                ,{field: 'userState', title: '状态', align: 'center', sort: true}
//                ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
            ]]
        });
    });

</script>

</body>
</html>