<!DOCTYPE html>
<html lang="en">
<head>
    <title>会员管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="..//layui/css/layui.css" media="all">
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

<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>


<script src="..//layui/layui.js"></script>

<script>
    layui.use('table', function(){
        var table = layui.table;

        //方法级渲染
        table.render({
            elem: '#LAY_table_user'
            ,url: '/queryUserList'
            ,cols: [[
                {checkbox: true, fixed: true}
                ,{field: 'userId', title: '用户编号', sort: true, fixed: 'left',align: 'center'}
                ,{field: 'userName', title: '用户名称',align: 'center'}
                ,{field: 'userSex', title: '用户性别', align: 'center', sort: true}
                ,{field: 'userBirStr', title: '用户生日',align: 'center', sort: true}
                ,{field: 'userPhone', title: '用户电话', align: 'center', sort: true}
                ,{field: 'userGrade', title: '用户等级',align: 'center', sort: true,templet:'#userGrade'}
                ,{field: 'userState', title: '状态', align: 'center', sort: true,templet:'#userState'}
            ]]
            ,id: 'testReload'
            ,page: true
            ,height: 315
        });

        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload');

                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        key: {
                            id: demoReload.val()
                        }
                    }
                });
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>

<script type="text/html" id="userGrade">
    {{#  if(d.userGrade == 1){ d.userGrade = '普通用户'}}
    <span style="color: #f51413;">{{ d.userGrade }}</span>
    {{#  } else {d.userGrade = '管理员' }}
    <span style="color: #2ef50b;">{{ d.userGrade }}</span>
    {{#  } }}
</script>

<script type="text/html" id="userState">
    {{#  if(d.userState == 1){ d.userState = '可用'}}
    <span style="color: #1cf517;">{{ d.userState }}</span>
    {{#  } else {d.userState = '不可用' }}
    <span style="color: #f50d12;">{{ d.userState }}</span>
    {{#  } }}
</script>
</body>
</html>