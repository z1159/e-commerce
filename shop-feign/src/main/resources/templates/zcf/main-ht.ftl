<html>
<head>
    <title>会员管理</title>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <script src="/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">会员后台管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">管理系统</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    呃呃
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退下</a></li>
        </ul>
    </div>

    <div class="layui-tab layui-tab-card site-demo-button" style="position: relative;">
        <ul class="layui-nav layui-nav-tree layui-nav-side" style="padding-top: 60px">
            <li class="layui-nav-item">
                <a href="javascript:;">首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">用户管理</a>
                <dl class="layui-nav-child">
                    <dd>
                        <#--<a href="">会员管理</a>-->
                        <a href="#" data-url="userPage" data-title="会员管理" data-id="11" class="site-demo-active" data-type="tabAdd">会员管理</a>
                    </dd>
                    <dd>
                        <#--<a href="">收货地址</a>-->
                        <a href="#" data-url="addressPage" data-title="收货地址" data-id="12" class="site-demo-active" data-type="tabAdd">收货地址</a>
                    </dd>
                    <dd>
                       <#-- <a href="">会员收藏</a>-->
                        <a href="#" data-url="collectionPage" data-title="会员收藏" data-id="13" class="site-demo-active" data-type="tabAdd">会员收藏</a>
                    </dd>
                    <dd>
                        <#--<a href="">会员足迹</a>-->
                        <a href="#" data-url="footPage" data-title="会员足迹" data-id="14" class="site-demo-active" data-type="tabAdd">会员足迹</a>
                    </dd>
                    <dd>
                        <#--<a href="">搜索历史</a>-->
                        <a href="#" data-url="nullPage" data-title="搜索历史" data-id="15" class="site-demo-active" data-type="tabAdd">搜索历史</a>
                    </dd>
                    <dd>
                        <#--<a href="">意见反馈</a>-->
                        <a href="#" data-url="nullPage" data-title="意见反馈" data-id="16" class="site-demo-active" data-type="tabAdd">意见反馈</a>
                    </dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">商场管理</a>
                <dl class="layui-nav-child">
                    <dd>
                        <#--<a href="">行政区域</a>-->
                        <a href="#" data-url="nullPage" data-title="行政区域" data-id="21" class="site-demo-active" data-type="tabAdd">行政区域</a>
                    </dd>
                    <dd>
                        <#--<a href="">品牌制造商</a>-->
                        <a href="#" data-url="nullPage" data-title="品牌制造商" data-id="22" class="site-demo-active" data-type="tabAdd">品牌制造商</a>
                    </dd>
                    <dd>
                       <#-- <a href="">商品类目</a>-->
                        <a href="#" data-url="nullPage" data-title="商品类目" data-id="23" class="site-demo-active" data-type="tabAdd">商品类目</a>
                    </dd>
                    <dd>
                        <#--<a href="">订单管理</a>-->
                        <a href="#" data-url="orderPage" data-title="订单管理" data-id="24" class="site-demo-active" data-type="tabAdd">订单管理</a>
                    </dd>
                    <dd>
                        <#--<a href="">通用问题</a>-->
                        <a href="#" data-url="nullPage" data-title="通用问题" data-id="25" class="site-demo-active" data-type="tabAdd">通用问题</a>
                    </dd>
                    <dd>
                        <#--<a href="">关键词</a>-->
                        <a href="#" data-url="nullPage" data-title="关键词" data-id="26" class="site-demo-active" data-type="tabAdd">关键词</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">商品管理</a>
                <dl class="layui-nav-child">
                    <dd>
                        <#--<a href="">商品列表</a>-->
                        <a href="#" data-url="/commd/openCommnList" data-title="商品列表" data-id="31" class="site-demo-active" data-type="tabAdd">商品列表</a>
                    </dd>
                    <dd>
                        <#--<a href="">商品上架 </a>-->
                        <a href="#" data-url="/commd/openCommnAdd" data-title="商品上架" data-id="32" class="site-demo-active" data-type="tabAdd">商品上架</a>
                    </dd>
                    <dd>
                        <#--<a href="">商品评论</a>-->
                        <a href="#" data-url="evaluatePage" data-title="商品评论" data-id="33" class="site-demo-active" data-type="tabAdd">商品评论</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">推广管理</a>
                <dl class="layui-nav-child">
                    <dd>
                        <#--<a href="">广告管理</a>-->
                        <a href="#" data-url="nullPage" data-title="广告管理" data-id="41" class="site-demo-active" data-type="tabAdd">广告管理</a>
                    </dd>
                    <dd>
                        <#--<a href="">优惠券管理</a>-->
                        <a href="#" data-url="/coupon/openCouponList" data-title="优惠券管理" data-id="42" class="site-demo-active" data-type="tabAdd">优惠券管理</a>
                    </dd>
                    <dd>
                        <#--<a href="">专题管理</a>-->
                        <a href="#" data-url="nullPage" data-title="专题管理" data-id="43" class="site-demo-active" data-type="tabAdd">专题管理</a>
                    </dd>
                    <dd>
                        <#--<a href="">团购规则</a>-->
                        <a href="#" data-url="nullPage" data-title="团购规则" data-id="44" class="site-demo-active" data-type="tabAdd">团购规则</a>
                    </dd>
                    <dd>
                        <#--<a href="">团购活动</a>-->
                        <a href="#" data-url="nullPage" data-title="团购活动" data-id="45" class="site-demo-active" data-type="tabAdd">团购活动</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">系统管理</a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">管理员</a>
                    </dd>
                    <dd>
                        <a href="">操作日志</a>
                    </dd>
                    <dd>
                        <a href="">角色管理</a>
                    </dd>
                    <dd>
                        <a href="">对象存储</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">配置管理</a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">商场配置</a>
                    </dd>
                    <dd>
                        <a href="">运费配置</a>
                    </dd>
                    <dd>
                        <a href="">订单配置</a>
                    </dd>
                    <dd>
                        <a href="">小程序配置</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">统计报表</a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">用户统计</a>
                    </dd>
                    <dd>
                        <a href="">订单统计</a>
                    </dd>
                    <dd>
                        <a href="">商品统计</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">外链</a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">腾讯云存储</a>
                    </dd>
                    <dd>
                        <a href="">腾讯云短信</a>
                    </dd>
                    <dd>
                        <a href="">微信支付</a>
                    </dd>
                    <dd>
                        <a href="">小程序客服阿里云存储</a>
                    </dd>
                    <dd>
                        <a href="">团购活动</a>
                    </dd>
                </dl>
            </li>
        </ul>

        <div class="layui-tab" lay-filter="demo" lay-allowclose="true" style="margin-left: 200px;">
            <ul class="layui-tab-title">
            </ul>
            <ul class="rightmenu" style="display: none;position: absolute;">
                <li data-type="closethis">关闭当前</li>
                <li data-type="closeall">关闭所有</li>
            </ul>
            <div class="layui-tab-content">
            </div>
        </div>
    </div>
    <div class="layui-tab-content">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;" class="layui-tab-item layui-show">

            <table id="demo" lay-filter="test">
            </table>

        </div>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script>
    //JavaScript代码区域
    layui.use('element', function() {
        var $ = layui.jquery;
        var element = layui.element;


        //触发事件
        var active = {
            //在这里给active绑定几项事件，后面可通过active调用这些事件
            tabAdd: function(url,id,name) {
                //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
                //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                element.tabAdd('demo', {
                    title: name,
                    content: '<iframe data-frameid="'+id+'" scrolling="auto" frameborder="0" src="'+url+'" style="width:100%;height:99%;"></iframe>',
                    id: id //规定好的id
                })
                CustomRightClick(id); //给tab绑定右击事件
                FrameWH();  //计算ifram层的大小
            },
            tabChange: function(id) {
                //切换到指定Tab项
                element.tabChange('demo', id); //根据传入的id传入到指定的tab项
            },
            tabDelete: function (id) {
                element.tabDelete("demo", id);//删除
            }
            , tabDeleteAll: function (ids) {//删除所有
                $.each(ids, function (i,item) {
                    element.tabDelete("demo", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
                })
            }
        };


        //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
        $('.site-demo-active').on('click', function() {
            var dataid = $(this);

            //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
            if ($(".layui-tab-title li[lay-id]").length <= 0) {
                //如果比零小，则直接打开新的tab项
                active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.attr("data-title"));
            } else {
                //否则判断该tab项是否以及存在

                var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                $.each($(".layui-tab-title li[lay-id]"), function () {
                    //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                    if ($(this).attr("lay-id") == dataid.attr("data-id")) {
                        isData = true;
                    }
                })
                if (isData == false) {
                    //标志为false 新增一个tab项
                    active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.attr("data-title"));
                }
            }
            //最后不管是否新增tab，最后都转到要打开的选项页面上
            active.tabChange(dataid.attr("data-id"));
        });

        function CustomRightClick(id) {
            //取消右键  rightmenu属性开始是隐藏的 ，当右击的时候显示，左击的时候隐藏
            $('.layui-tab-title li').on('contextmenu', function () { return false; })
            $('.layui-tab-title,.layui-tab-title li').click(function () {
                $('.rightmenu').hide();
            });
            //桌面点击右击
            $('.layui-tab-title li').on('contextmenu', function (e) {
                var popupmenu = $(".rightmenu");
                popupmenu.find("li").attr("data-id",id); //在右键菜单中的标签绑定id属性

                //判断右侧菜单的位置
                l = ($(document).width() - e.clientX) < popupmenu.width() ? (e.clientX - popupmenu.width()) : e.clientX;
                t = ($(document).height() - e.clientY) < popupmenu.height() ? (e.clientY - popupmenu.height()) : e.clientY;
                popupmenu.css({ left: l, top: t }).show(); //进行绝对定位
                //alert("右键菜单")
                return false;
            });
        }

        $(".rightmenu li").click(function () {

            //右键菜单中的选项被点击之后，判断type的类型，决定关闭所有还是关闭当前。
            if ($(this).attr("data-type") == "closethis") {
                //如果关闭当前，即根据显示右键菜单时所绑定的id，执行tabDelete
                active.tabDelete($(this).attr("data-id"))
            } else if ($(this).attr("data-type") == "closeall") {
                var tabtitle = $(".layui-tab-title li");
                var ids = new Array();
                $.each(tabtitle, function (i) {
                    ids[i] = $(this).attr("lay-id");
                })
                //如果关闭所有 ，即将所有的lay-id放进数组，执行tabDeleteAll
                active.tabDeleteAll(ids);
            }

            $('.rightmenu').hide(); //最后再隐藏右键菜单
        })
        function FrameWH() {
            var h = $(window).height() -41- 10 - 60 -10-44 -10;
            $("iframe").css("height",h+"px");
        }

        $(window).resize(function () {
            FrameWH();
        })
    });


</script>
</body>
</html>
