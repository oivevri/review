<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Thread.sleep(2000); // 2초 대기(2초간 서버 지연)
//	int a = 5/0; // 이걸로 서버쪽에서 에러를 내보자
	
	HashMap<String, String> map = new HashMap<>(); // 2. 결과값 받아서 담을 해쉬맵 만들기
	
	map.put("choi","최기자");
	map.put("park","박기자");
	map.put("kim","김기자");
	
	String userid = request.getParameter("userid"); // 1. userid 파라미터 만들기
	String name = map.get(userid); // 3. 밑에서 쓸 변수 만들어줌
%>
{"result": true, "name": "<%= name%>"} <%-- - json 파싱해주려고 불린값을 제외한 필드명이나 값에 "" 해준다 --%>

