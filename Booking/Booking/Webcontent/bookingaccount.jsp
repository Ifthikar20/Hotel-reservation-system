<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="bk" items="${BookingDetails}">

${bk.Bkid}
${bk.Fname}
${bk.Lname}
${bk.Phoneno}
${bk.NIC} 
${bk.address}


</c:forEach>






</body>
</html>