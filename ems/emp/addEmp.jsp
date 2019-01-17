<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<head>
		<title>add Emp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/ems/css/style.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/datepricker/WdatePicker.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/ems/js/time.js"></script>
		<script>
			$(function (){
				
				//创建日期插件
				$(".Wdate").click(function(){
					WdatePicker();
				});
				
			});
		</script>
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"53058",secure:"53063"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/EMS/WebRoot/ems/emp/addEmp.jsp">
		<div id="wrap" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/EMS/WebRoot/ems/emp/addEmp.jsp">
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
						add Emp info:
					</h1>
					<form action="${pageContext.request.contextPath}/servlet/AddEmpServlet" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									name:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="emp.name" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									salary:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="emp.salary" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									age:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="emp.age" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									birthday:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="Wdate" name="emp.bir" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									所属部门:
								</td>
								<td valign="middle" align="left">
									
									<!-- 
										使用s:action   默认不包含执行结果
										s:action 不是发送的请求
											在jsp被翻译成servlet时,由struts2框架根据namesapce 和 actionName
											找到class 根据class的权限定名创建对象   通过对象调用方法
										页面中有多个s:action 注意   没有任何请求发送
									-->
									<select name="dept">
										<c:forEach var="dept" items="${sessionScope.deptList }">
											<option value="${dept.name }">${dept.name }</option>
										</c:forEach>
									</select>
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
