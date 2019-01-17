<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/ems/css/style.css"/> 
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/time.js"></script>
		
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53058",secure:"53063"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/EMS/WebRoot/ems/dept/deptlist.jsp">
		<div id="wrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/EMS/WebRoot/ems/dept/deptlist.jsp">
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
						Welcome !${sessionScope.empName }
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
					<c:forEach var="dept" items="${sessionScope.deptList }">
							<tr class="row1">
								<td>
								${dept.id }
								</td>
								<td>
								${dept.name }
								</td>
								<td>
									<a href="<%=request.getContextPath() %>/servlet/DelDeptServlet?id=${dept.id}">删除部门</a>&nbsp;&nbsp;
									<a href="<%=request.getContextPath() %>/servlet/UpdDeptServlet?id=${dept.id}">更新部门</a>&nbsp;&nbsp;
								</td>
							</tr>
					  </c:forEach>
					</table>
					<p>
						<input type="button" class="button" value="Add Dept" onclick="location='addDept.jsp'"/>
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
