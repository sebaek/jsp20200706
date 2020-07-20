<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="count" %>
<%@ attribute name="name" required="true"%>
<%@ attribute name="address" type="java.lang.String" %>
<%@ attribute name="member" type="chap11.Member" %>

<h3>tag 5</h3>
<h4>count: ${count }</h4>
<h4>name: ${name }</h4>
<h4>member name : ${member.name }</h4>