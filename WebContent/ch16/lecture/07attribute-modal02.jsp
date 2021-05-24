<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2">
	Lanuch demo modal
	</button>
</div>

<my:modal02 id="exampleModal1" keyboard="true"/>
<my:modal02 id="exampleModal2" keyboard="false"/>

</body>
</html>








