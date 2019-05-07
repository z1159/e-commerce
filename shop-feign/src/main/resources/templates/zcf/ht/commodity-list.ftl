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
            , url: '/commd/queryCommdList'
            ,method: 'get'
            , toolbar: '#toolbarDemo'
            , title: '用户数据表'
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'commId', title: '商品编号', fixed: 'left', unresize: true, sort: true, totalRowText: '合计：'}
                , {field: 'commtId', title: '商品类别编号', fixed: 'left',hide:true,  sort: true}
                , {field: 'commtName', title: '名称', fixed: 'left', unresize: true, sort: true, totalRowText: '合计：'}
                , {
                    field: 'imgUrl', title: '图片', edit: 'text', sort: true
                }
                , {
                    field: 'imgUrl', title: '分享图', edit: 'text', sort: true
                }
                , {field: '#', title: '详情'}
                , {field: 'commMoneyy', title: '专柜价格'}
                , {field: 'commMoneyc', title: '当前价格'}
                , {field: 'commtNew', title: '是否新品', templet: function (d){
                    console.log(d);
                    if(d.commtNew==0){
                        return "新品";
                    }else{
                        return "非新品";
                    }

                }}
                , {field: 'commtHot', title: '是否热品', templet: function (d){
                    if(d.commtHot==0){
                        return "非热品";
                    }else{
                        return "热品";
                    }
                }}
                , {field: 'commtShow', title: '是否在卖', templet: function (d){
                    if(d.commtShow==0){
                        return "在售";
                    }else{
                        return "下架";
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
                    console.log(data.commtId);
                    deleteFun(data.commtId);
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
                    content: '/commd/openCommnUpdate/'+data.commtId,
                    btn: '确定'
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

    function deleteFun(commtId) {
        $.ajax({
            type: 'DELETE',
            url: '/commd/deleteCommd/'+commtId,
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
    function addFun(bankId,bankMoney) {

        layer.open({
            type: 2,
            content: '<%=request.getContextPath()%>/add-money.jsp' //这里content是一个普通的String
        });

    }






</script>

</body>

</html>