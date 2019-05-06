<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>$Title$</title>
</head>
<body>

<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <a href="#" target="_top" class="h">亲，请登录</a>
                    <a href="#" target="_top">免费注册</a>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
            </div>
            <div class="topMessage mini-cart">
                <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
            </div>
            <div class="topMessage favorite">
                <div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
        </ul>
    </div>

    <!--悬浮搜索框-->

    <div class="nav white">
        <div class="logo"><img src="/images/logo.png" /></div>
        <div class="logoBig">
            <li><img src="/images/logobig.png" /></li>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="#"></a>
            <form>
                <input id="commTitle" name="commTitle" type="text" placeholder="搜索" autocomplete="off">
                <input type="hidden" id="page" name="page" value="1"/>
                <input type="hidden" id="size" name="size" value="100"/>
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="button" onclick="seacherfun()">
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>
<script>
    function seacherfun() {
        var commTitle=$("#commTitle").val();
        var page=$("#page").val();
        var size=$("#size").val();
        location.href="/indexController/solrQueryCommodity/"+commTitle+"/"+page+"/"+size;
    }
</script>
</body>
</html>