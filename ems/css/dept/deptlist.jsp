<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="java.util.Date"%>
<%@page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<s:url value="/ems/css/style.css"/>" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/time.js"></script>
		
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53058",secure:"53063"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/EMS/WebRoot/ems/css/dept/deptlist.jsp">
		<div id="wrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/EMS/WebRoot/ems/css/dept/deptlist.jsp">
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
						Welcome <s:property value="#session.user.username"/>!
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								ID
							</td>
							<td>
								Name
							</td>
							<td>
								Operation
							</td>
						</tr>
						<s:iterator value="list">
							<tr class="row1">
								<td>
									<s:property value="id"/>
								</td>
								<td>
									<s:property value="name"/>
								</td>
								<td>
									<a href="<s:url value="/dept/delDept"/>?id=<s:property value="id"/>">delete dept</a>&nbsp;
									<a href="<s:url value="/dept/queryDept"/>?id=<s:property value="id"/>">update dept</a>&nbsp;
									<a href="<s:url value="/dept/queryAllEmps"/>?id=<s:property value="id"/>">show emps</a>
								</td>
							</tr>
					  </s:iterator>
					</table>
					<p>
						<input type="button" class="button" value="Add Dept" onclick="location='<s:url value="/ems/dept/addDept.jsp"/>'"/>
					</p>
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
