<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="start" required="true" %>
<%@ attribute name="end" required="true" %>
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    
    <c:forEach begin="${start }" end="${end }" var="cur">
    	<li class="page-item"><a href="#" class="page-link">${cur }</a></li>
    </c:forEach>
    
    <%--
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
     --%>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>