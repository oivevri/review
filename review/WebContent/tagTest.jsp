<%@ page import="common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태그연습</title>
<style>
.pagination li {display: inline-block;}
.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border-radius: 5px;
}

.pagination a:hover:not(.active) {
  background-color: #ddd;
  border-radius: 5px;
}
</style>
</head>
<body>
<my:select sname="bearch" bg=""/>
<my:select sname="bearch" bg="lightblue"/>
<my:login></my:login>
<% Paging paging = new Paging();
	paging.setPage(1);
	paging.setTotalRecord(144);
%>
<script type="text/javascript">
	function goPage(p) { // 페이지번호 넘어가는거.. 파라미터 p이용해서 해당url로 넘어가는거
		location.href=".do?p="+p;
	}
</script>
<my:paging paging="<%=paging%>" jsfunc="goPage"></my:paging>
</body>
</html>