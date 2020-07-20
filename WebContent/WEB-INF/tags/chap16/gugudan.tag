<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="dan" %>

<div>
<c:forEach var="c" begin="1" end="9">
 ${dan } * ${c } = ${dan * c } <br />
</c:forEach>

</div>
