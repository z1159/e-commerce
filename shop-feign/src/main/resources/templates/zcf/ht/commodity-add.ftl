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
<form id="form-commd" class="layui-form layui-form-pane" action="/commd/addCommd" method="post" enctype="multipart/form-data">

    <div class="layui-form-item">
        <label class="layui-form-label">*商品编号</label>
        <div class="layui-input-block">
            <input type="text" name="commId" value="${(commd.commId)!""}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            <input type="hidden" name="commtId" value="${(commd.commtId)!""}" >
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">商品名称</label>
        <div class="layui-input-block">
            <input type="text" name="commtName" value="${(commd.commtName)!""}" lay-verify="required" autocomplete="off" placeholder="请商品名称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">专柜价格</label>
            <div class="layui-input-inline" >
                <input type="text" name="commMoneyy" value="${(commd.commMoneyy)!""}" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">当前价格</label>
            <div class="layui-input-inline" >
                <input type="text" name="commMoneyc" value="${(commd.commMoneyc)!""}" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">是否新品</label>
        <div class="layui-input-block">
            <input type="radio" name="commtNew"  value="0" title="新品"<#if (commd.commtNew)??> <#if (commd.commtNew)==0> checked </#if></#if>/>
            <input type="radio" name="commtNew" value="1" title="非新品" <#if (commd.commtNew)??> <#if (commd.commtNew)==1> checked </#if></#if>/>
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">是否热卖</label>
        <div class="layui-input-block">
            <input type="radio" name="commtHot" value="0" title="普通" <#if  (commd.commtHot)??><#if  (commd.commtHot)==0> checked </#if></#if>>
            <input type="radio" name="commtHot" value="1" title="热卖" <#if  (commd.commtHot)??><#if  (commd.commtHot)==1> checked </#if></#if>>
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">是否在售</label>
        <div class="layui-input-block">
            <input type="radio" name="commtShow" value="0" title="在售" <#if  (commd.commtShow)??><#if  (commd.commtShow)==0> checked </#if></#if>>
            <input type="radio" name="commtShow" value="1" title="未售" <#if  (commd.commtShow)??><#if  (commd.commtShow)==1> checked </#if></#if>>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">商品图片</label>
        <div class="layui-input-block">
            <input type="text" name=""  autocomplete="off" placeholder="请商品名称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">宣传画廊</label>
        <div class="layui-input-block">
            <input type="text" name=""  autocomplete="off" placeholder="请商品名称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">所属分类</label>
        <div class="layui-input-block">
            <select name="commtType" lay-filter="aihao">
                <option value=""></option>
            <#if  (commd.commtType)??>
                <option value="0"  <#if (commd.commtType)==0> selected </#if>>其他</option>
                <option value="1" <#if  (commd.commtType)==1> selected </#if>>吃</option>
                <option value="2" <#if  (commd.commtType)==2> selected </#if>>喝</option>
                <option value="3" <#if  (commd.commtType)==3> selected </#if>>玩</option>
                <option value="4" <#if  (commd.commtType)==4> selected </#if>>用</option>
            <#else>
                <option value="0"  >其他</option>
                <option value="1" >吃</option>
                <option value="2" >喝</option>
                <option value="3" >玩</option>
                <option value="4" >用</option>
            </#if>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">所属品牌商</label>
        <div class="layui-input-block">
            <select name="commtAgent" lay-filter="aihao">
                <option value=""></option>
            <#if  (commd.commtAgent)??>
                <option value="0" <#if  (commd.commtAgent)==0> selected </#if>>其他</option>
                <option value="1" <#if  (commd.commtAgent)==1> selected </#if>>娃哈哈</option>
                <option value="2" <#if  (commd.commtAgent)==2> selected </#if>>百事</option>
                <option value="3" <#if  (commd.commtAgent)==3> selected </#if>>Timberland</option>
                <option value="4" <#if  (commd.commtAgent)==4> selected </#if>>Nike</option>
            <#else>
                <option value="0" >其他</option>
                <option value="1" >娃哈哈</option>
                <option value="2" >百事</option>
                <option value="3" >Timberland</option>
                <option value="4" >Nike</option>
            </#if>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <#if (commd.commtId)??>
            <label class="layui-form-label">商品库存</label>
            <div class="layui-input-block">
                <input type="text" name="commMany" value="${(commd.commMany)!""}"  autocomplete="off" placeholder="请输入库存数量" class="layui-input">
            </div>
        <#else>

        </#if>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">商品介绍</label>
        <div class="layui-input-block">
            <input type="text" name="commTitle" value="${(commd.commTitle)!""}" autocomplete="off" placeholder="请商品名称" class="layui-input">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">文本域</label>
        <div class="layui-input-block">
            <#--<textarea placeholder="请输入内容" class="layui-textarea"></textarea>-->
                <textarea id="textarea"   name="commdMiaoshu" style="display: none;">${(commd.commdMiaoshu)!""}</textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">提交</button>
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