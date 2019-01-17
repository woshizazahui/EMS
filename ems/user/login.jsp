<%@page import="java.text.SimpleDateFormat"%>
<%-- <%@taglib prefix="s" uri="/struts-tags" %> --%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>login</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/ems/css/style.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/time.js"></script>
		<script type="text/javascript">
			$(function(){
			
				$("#img").click(function(){
					$(this).attr("src","<s:url value='/user/imageCode'/>?name="+new Date().getTime());
				});
			
			});
		</script>
		<script type="text/javascript">
			//刷新验证码
			function changeImg(){
				document.getElementById("validateCodeImg").src="${pageContext.request.contextPath}/servlet/DrawImage?"+Math.random();
			}
			$(document).ready(function(){
			$('#checkcode').blur(function(){
			var user_code=$('#checkcode').val();
			$.ajax({
				url:"/EMS/servlet/RandomCodeIdentifyServlet",
				data:"user_code="+user_code,
				type:"post",
				dataType:"text",
				success: function(data){
					data=parseInt(data,10);
					if(data==1)
					{
						$('#span').html("<font color='#339933'>验证码正确</font>");
					}
					else if(data==0){
						$('#span').html("<font color='red'>验证码有误</font>");
					}
				}
			
			});
			});
			});
		</script>
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53058",secure:"53063"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-20" data-genuitec-path="/EMS/WebRoot/ems/user/login.jsp">
		<div id="wrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-20" data-genuitec-path="/EMS/WebRoot/ems/user/login.jsp">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								<span id="time"></span>
								<script type="text/javascript">
									showtime();
								</script>
								<br />
							</p>
						</div>
						<div id="topheader">
							<h1 id="title">
								<a href="javascript:;">EMS员工管理系统</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						管理员登录
					</h1>
					<form id="inputForm" action="${pageContext.request.contextPath }/servlet/LoginServlet"  method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									用户名:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="user.username" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="user.password" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									验证码:
								</td>
								<td valign="middle" align="left">
									<input id="checkcode" type="text" class="inputgri" name="validateCode" /><img id="validateCodeImg" style="text-align: center;" alt="验证码" src="<%=request.getContextPath() %>/servlet/DrawImage" onclick="changeImg()" />
									<a href="javascript:void(0)" onclick="changeImg()"><lable>换一张</lable></a><span id="span"></span>
								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="Submit &raquo;" onclick="javascript:verificationcode()"/>
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					联系我们:xxx@163.com<s:property value="actionContext"/>
				</div>
			</div>
		</div>
	</body>
</html>
