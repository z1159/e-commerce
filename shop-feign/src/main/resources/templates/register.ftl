<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>

		<div class="login-boxtitle">
			<a href="home/demo.html"><img alt="" src="../images/logobig.png" /></a>
		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img src="../images/big.jpg" /></div>
				<div class="login-box">

					<div class="am-tabs" id="doc-my-tabs">
						<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">邮箱注册</a></li>
								<li><a href="">手机号注册</a></li>
						</ul>

						<div class="am-tabs-bd">
							<div class="am-tab-panel am-active">
								<form method="post">
                                    <div class="user-name">
                                        <label for="user"><i class="am-icon-envelope-o"></i></label>
                                        <input type="text" name="userName" id="name"  placeholder="请输入用户名">
									</div>
                                    <div class="user-email">
                                        	<label for="email"><i class="am-icon-envelope-o"></i></label>
                                        	<input type="email" name="userMail" id="email" placeholder="请输入邮箱账号">
                                    </div>
									<div class="user-pass">
											<label for="password"><i class="am-icon-lock"></i></label>
											<input type="password" name="userPass" id="pass" placeholder="设置密码">
									</div>
									<div class="user-pass">
											<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
											<input type="password" name="userPass1" id="passwordRepeat" placeholder="确认密码">
									</div>

								</form>
                 
										 <div class="login-links">
												<label for="reader-me">
													<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
												</label>
										</div>
										<div class="am-cf">
											<input type="button" id="zhuCe" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>

								</div>

								<div class="am-tab-panel">
									<form method="post">
										 <div class="user-phone">
															<label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
															<input type="tel" name="" id="phone" placeholder="请输入手机号">
										 </div>
										<div class="verification">
											<label for="code"><i class="am-icon-code-fork"></i></label>
											<input type="tel" name="" id="code" placeholder="请输入验证码">
											<a class="btn" href="javascript:void(0);" onClick="sendMobileCode();" id="sendMobileCode">
												<span id="dyMobileButton">获取</span></a>
										</div>
										 <div class="user-pass">
															<label for="password"><i class="am-icon-lock"></i></label>
															<input type="password" name="" id="password" placeholder="设置密码">
										 </div>
										 <div class="user-pass">
															<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
															<input type="password" name="" id="passwordRepeat" placeholder="确认密码">
										 </div>
									</form>
								<div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
							  	</div>
										<div class="am-cf">
											<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
								
									<hr>
								</div>

								<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>
							</div>
					</div>

				</div>
			</div>
			
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">恒望科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">关于恒望</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有</em>
							</p>
						</div>
					</div>
	</body>

	<script>
		//校验账号
        $('#name').blur(function(){

            var userName = $('#name').val();
            if(userName == ''){
                return ;
            }
            $.ajax({
                type:'get',
                url:'userByName',
                data:{"userName":userName},
                dataType:'json',
                success:function(data){
					if(data.code==200){
					    alert("当前用户可用，请完成注册");
					}else if (data.code ==500){
					   alert("网络错误");
					}
                }
            });
        });

		//保存方法
        $("#zhuCe").click(function () {
            //账号
            var userName = $(" input[name='userName']").val();
            //邮箱账号
            var userMail = $(" input[name='userMail'] ").val();
            //密码
            var userPass = $(" input[name='userPass'] ").val();
            //确认密码
            var userPass1 = $(" input[name='userPass1']").val();

            if(userName=='' || userMail=='' || userPass=='' ){
                return '';
            }
            //判断密码不一致
            if(userPass!=userPass1 ){
                alert("两次密码不一致，请重试");
                return '';
            }

            $.ajax({
                url:'registerUser',
                data:{"userName":userName,"userMail":userMail,"userPass":userPass},
                type:'post',
                dataType:'json',
                success:function(data){
                    if(data.code == 200){
                        alert("注册成功，跳转登录页面")
                        window.location = "toQianLogin";
                    }else if(data.code == 500){
                        alert("注册失败");
                    }
                }
            })
        })





	</script>
</html>