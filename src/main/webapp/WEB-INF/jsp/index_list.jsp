<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% request.setAttribute("ctx", request.getContextPath()); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<script src="${ctx}/resources/js/jquery-1.7.2.min.js"></script>
<script src="${ctx}/resources/js/list.js"></script>
<title>宝库欢迎你</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-size: 18px
}

html, body, table, td {
	font-size: 18px;
	font-family: "Microsoft YaHei";
	color: #1575ed;
}

#img img {
	width: 220px;
	height: 200px;
}
.lin_h_36{line-height:36px;}
.p_l_40{padding-left:40px}
</style>
</head>

<body style="font-size: 18px; font-family: Microsoft YaHei; color: #1575ed;">
	<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td><img src="${ctx}/resources/images/baokuteam.jpg" width="1200" height="362" /></td>
		</tr>
		<tr>
			<td style="padding: 20px 10px 10px 10px; color: #1575ed; line-height: 24px; text-indent: 2em;">
			    <h3 class="lin_h_36">Hi All，</h3>
			    <p class="lin_h_36 p_l_40">诚挚欢迎
			    <c:forEach items="${listt }" var="list" varStatus="status">
			    <c:choose>
               		<c:when test="${not empty listt && status.index==0 }">
               			${list.userName }
               		</c:when>
               		<c:otherwise>
               			，${list.userName }
               		</c:otherwise>
               	</c:choose>
			    </c:forEach>加入宝库大家庭。</p>
				<c:forEach items="${listt }" var="list" varStatus="status">
			    <c:if test="${not empty list}">
				<p class="lin_h_36 p_l_40">${list.userName }
				<c:if test="${not empty list.school }">
					<c:if test="${not empty list.zhuanYe}">
					毕业于${list.school }
					</c:if>
					<c:if test="${empty list.zhuanYe}">
					毕业于${list.school }，
					</c:if>
				</c:if>
				<c:if test="${not empty list.zhuanYe }">--${list.zhuanYe }专业，</c:if>
          		<c:if test="${not empty list.oldCompany}">
	          		<c:if test="${not empty list.oldZhiWei}">
	          			曾在${list.oldCompany }等公司
	          		</c:if>
	          		<c:if test="${empty list.oldZhiWei}" >
	          			曾在${list.oldCompany }等公司就职。
	          		</c:if>
          		</c:if>
               	<c:if test="${not empty list.oldZhiWei }">担任&nbsp;${list.oldZhiWei }&nbsp;一职。</c:if>
				加入宝库后，将担任&nbsp;${list.zhiWei }&nbsp;一职，<c:if test="${not empty list.doWhat }">负责${list.doWhat }。</c:if>邮箱如下：${list.email }</p>
				</c:if>
				</c:forEach>
				<p class="lin_h_36 p_l_40">祝
				<c:forEach items="${listt }" var="list" varStatus="status">
			    <c:choose>
               		<c:when test="${not empty listt && status.index==0 }">
               			${list.userName }
               		</c:when>
               		<c:otherwise>
               			，${list.userName }
               		</c:otherwise>
               	</c:choose>
			    </c:forEach>在宝库工作及生活愉快！</p>
				<%-- <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎<c:forEach items="${listt }" var="list" varStatus="status"><c:if test="${!status.last}">${list.buMen }${list.zhiWei }${list.userName }，</c:if><c:if test="${status.last }">${list.buMen }${list.zhiWei }${list.userName }</c:if><input type="hidden" class="sex" value="${list.sex}"></c:forEach>加入宝库在线，希望大家给予新同事热情的欢迎和积极的帮助，让<span id="number">他</span>感受到宝库的文化氛围，尽快融入到我们这个大家庭。
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;再次欢迎<c:choose><c:when test="${fn:length(listt)>1 }">你们</c:when><c:otherwise>你</c:otherwise></c:choose>的加盟，选择与宝库并肩作战！</p> --%>
			</td>
		</tr>
		<tr>
			<td>
	<c:forEach items="${listt }" var="lis">
		<table width="496" border="0" cellspacing="0" cellpadding="0" style="background: url(http://file.baoku.com/employee/list_bg.jpg) no-repeat right bottom #f7f8fa; margin: 60px 0 0 60px; overflow: hidden; float: left; color: #1575ed;">
			<tr>
				<td width="260" height="250" rowspan="5" align="center" valign="middle" id="img">
				<img src="${lis.touXiang}" width="220" height="190" /></td>
				<td width="236" height="45" valign="bottom">姓名：${lis.userName }</td>
			</tr>
			<tr>
				<td height="55">性别：${lis.sex }</td>
			</tr>
			<tr>
				<td height="40" valign="top">部门：${lis.buMen }</td>
			</tr>
			<tr>
				<td height="40" valign="top">职位：${lis.zhiWei }</td>
			</tr>
			<tr>
				<td height="40" valign="top">直属负责人：${lis.fuZeRen }</td>
			</tr>
		</table>
	</c:forEach>
			</td>
		</tr>
		<tr>
			<td height="100"></td>
		</tr>
	</table>
</body>
</html>
