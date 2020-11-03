<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="sname" required="true" %>
<%@ attribute name="bg" required="true" %>

<%-- bg속성이 empty면 yellow로 초기화 --%>
<c:if test="${empty bg}"> <%-- bg != null && bg.equals("") --%>
<c:set var="bg" value="yellow"></c:set>
</c:if>

<select name="${sname}" style="background-color: ${bg}" >
	<option>제목</option>
	<option>내용</option>
</select>