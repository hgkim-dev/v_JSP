<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<% response.setContentType("text/html; charset=utf-8"); %>

<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Calendar" %>

<%
  
  Date today = new Date (); 
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

  int mon = today.getMonth()+1;
  Calendar cal = Calendar.getInstance(); 
  cal.set(Calendar.MONTH, mon - 1);
  cal.set(Calendar.WEEK_OF_MONTH, 4);
  cal.set(Calendar.DAY_OF_WEEK, Calendar.FRIDAY);

  String date1 = sdf.format(today);
  String date2 = sdf.format(cal.getTime());
  out.println(date1);
  out.println("<BR/>");
  out.println(date2);

  if(date2.equals(date1))
  {
    out.println("today!!!!!");
  }
  else
  {
    out.println("not today...");
  }

%>