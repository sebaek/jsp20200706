<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="attrMap" %>

<%@ attribute name="attr1" %>
<%@ attribute name="attr2" %>

<h1>tag7</h1>
${attr1 }, ${attr2} <br />
${attrMap.attr3 } <br />
${attrMap.attr1 } <br />
${attrMap.attr2 }