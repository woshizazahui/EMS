<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/style.css"/>
		<link type="text/css" rel="stylesheet" href="../css/common.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/time.js"></script>	
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53058",secure:"53063"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-10" data-genuitec-path="/EMS/WebRoot/ems/emp/emplist.jsp">
		<div id="wrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-10" data-genuitec-path="/EMS/WebRoot/ems/emp/emplist.jsp">
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
						Welcome!${sessionScope.empName }
					</h1>
					
					<table class="table">
						<tr class="table_header">
							<td style="width:200px;">
								ID
							</td>
							<td>
								Name
							</td>
							<td>
								Salary
							</td>
							<td>
								Age
							</td>
							<td>
								Birthday
							</td>
							<td>
								Operation
							</td>
						</tr>
						<c:forEach  var="emp" items="${sessionScope.empList}">
						<tr>	
						<td style="width:200px;">
								${ emp.id }
							</td>
							<td>
								${emp.name }
							</td>
							<td>
								${emp.salary }
							</td>
							<td>
								${emp.age }
							</td>
							<td>
								${emp.birthday }
							</td>
							<td>
								<a href="<%=request.getContextPath() %>/servlet/DelEmpServlet?id=${emp.id }">删除</a>
								<a href="<%=request.getContextPath() %>/servlet/UpdEmpServlet?id=${emp.id }">更新</a>
							</td>
						</tr>
						</c:forEach>
					</table>
					<div class="pagination">
						<span class="firstPage">&nbsp;</span>
						<span class="previousPage">&nbsp;</span>
						<span class="currentPage">1</span>
						<a href="javascript:$.pageSkip(2);">2</a> 
						<a href="javascript:$.pageSkip(3);">3</a>
						<span class="pageBreak">...</span>
						<a class="nextPage" href="javascript:$.pageSkip(2);">&nbsp;</a>
						<a class="lastPage" href="javascript:$.pageSkip(6);">&nbsp;</a>
						<span class="pageSkip"> 共6页 到第
						<input id="pageNumber" name="pageNumber" value="1" maxlength="9" onpaste="return false;">页
							<button type="submit">&nbsp;</button>
						</span>
					</div>
					<p>
						<input type="button" class="button" value="Add Employee" onclick="location='addEmp.jsp'"/>
					</p>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				<a href="<%=request.getContextPath()%>/ems/dept/deptlist.jsp"><font color="red">部门管理</font></a>
				</div>
			</div>
		</div>
	</body>
</html>
