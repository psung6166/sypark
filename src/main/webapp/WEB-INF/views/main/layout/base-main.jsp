<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
  <tiles:insertAttribute name="header"/> <!--  /WEB-INF/views/common/layout/header.jsp -->
  <body>
	<tiles:insertAttribute name="body"/> <!-- body -->
	<tiles:insertAttribute name="footer"/> <!-- /WEB-INF/views/common/layout/footer.jsp -->
  </body>
</html>