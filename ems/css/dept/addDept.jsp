<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="java.util.Date"%>
<%@page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>add Dept</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<s:url value="/ems/css/style.css"/>" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/time.js"></script>
		
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53058",secure:"53063"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/EMS/WebRoot/ems/css/dept/addDept.jsp">
		<div id="wrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/EMS/WebRoot/ems/css/dept/addDept.jsp">
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
								<a href="#">Main</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						add Dept info:
					</h1>
					<form action="<s:url value="/dept/saveDept"/>" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									name:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="dept.name" />
								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="Confirm" />
						</p>
					</form>
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
