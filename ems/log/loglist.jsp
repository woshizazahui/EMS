<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href='<s:url value="/ems/css/style.css"/>' />
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/time.js"></script>
		
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53058",secure:"53063"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/EMS/WebRoot/ems/log/loglist.jsp">
		<div id="wrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/EMS/WebRoot/ems/log/loglist.jsp">
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
							<a href="#">main</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						Welcome!
					</h1>
					
					<table class="table">
						<tr class="table_header">
							<td style="width:200px;">
								ID
							</td>
							<td>
								操作用户
							</td>
							<td>
								日志类型
							</td>
							<td>
								创建时间
							</td>
							<td>
								操作
							</td>
						</tr>
						<tr>
							<td>
								1
							</td>
							<td>
								张三
							</td>
							<td>
								操作日志
							</td>
							<td>
								2015-10-15
							</td>
							<td>
								<a href="/ems_chenyn2.0/ems/log/logdetail.jsp">查看日志详细</a>&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
