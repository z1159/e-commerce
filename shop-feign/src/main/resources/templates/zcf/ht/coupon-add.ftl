<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css"  media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>商品介绍</legend>
</fieldset>
<form id="form-cp" class="layui-form layui-form-pane" action="/coupon/addCoupon" method="post" enctype="multipart/form-data">

    <div class="layui-form-item">
        <label class="layui-form-label">*优惠券名称</label>
        <div class="layui-input-block">
            <input type="text" name="cpName" value="${(cp.cpName)!""}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            <input type="hidden" name="couponId" value="${(cp.couponId)!""}" >
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">介绍</label>
        <div class="layui-input-block">
            <input type="text" name="cpPresent" value="${(cp.cpPresent)!""}" lay-verify="required" autocomplete="off" placeholder="请商品名称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">标签</label>
        <div class="layui-input-block">
            <input type="text" name="cpTitle" value="${(cp.cpTitle)!""}" lay-verify="required" autocomplete="off" placeholder="请商品名称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">最低消费额</label>
            <div class="layui-input-inline" >
                <input type="text" name="cpMeet" value="${(cp.cpMeet)!""}" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">满减金额</label>
            <div class="layui-input-inline" >
                <input type="text" name="cpSubtract" value="${(cp.cpSubtract)!""}" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">每人限领</label>
        <div class="layui-input-block">
            <input type="text" name="cpAverage"  value="${(cp.cpAverage)!""}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">商品使用范围</label>
        <div class="layui-input-block">
            <input type="radio" name="cpRange" value="0" title="全场通用" <#if  (cp.cpRange)??><#if  (cp.cpRange)==0> checked </#if></#if>>
            <input type="radio" name="cpRange" value="" title="指定分类(暂未开放)" disabled="">
            <input type="radio" name="cpRange" value="" title="指定商品(暂未开放)" disabled="">
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">优惠券数量</label>
        <div class="layui-input-block">
            <input type="text" name="cpCount"  value="${(cp.cpCount)!""}" class="layui-input"/>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">所属分类</label>
        <div class="layui-input-block">
            <select name="cpType" lay-filter="aihao">
                <option value=""></option>
            <#if  (cp.cpType)??>
                <option value="0"  <#if (cp.cpType)==0> selected </#if>>通用领券</option>
                <option value="1" <#if  (cp.cpType)==1> selected </#if>>注册赠券</option>
                <option value="2" <#if  (cp.cpType)==2> selected </#if>>兑换券</option>
            <#else>
                <option value="0"  >通用领券</option>
                <option value="1" >注册赠券</option>
                <option value="2" >兑换券</option>
            </#if>
            </select>
        </div>
    </div>



    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2" style="">提交</button>
    </div>
</form>

<script src="/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });


                layui.use('layedit', function(){
                    var layedit = layui.layedit;
                    layedit.build('textarea'); //建立编辑器
                });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

//        //表单初始赋值
//        form.val('example', {
//            "username": "贤心" // "name": "value"
//            ,"password": "123456"
//            ,"interest": 1
//            ,"like[write]": true //复选框选中状态
//            ,"close": true //开关状态
//            ,"sex": "女"
//            ,"desc": "我爱 layui"
//        })


    });
</script>

</body>
</html>