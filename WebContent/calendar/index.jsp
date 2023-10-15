<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Calendar"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="main-block">
			<strapi:calendars ID="1">
				<h1><strapi:calendarsHeader/></h1>
			</strapi:calendars>
			<p><iframe frameborder="0" height="800" scrolling="no" src=" https://calendar.google.com/calendar/embed?src=6l35k1j2vrhj4q167vchh1qvv8%40group.calendar.google.com&amp;ctz=America%2FLos_Angeles" style="border: 0" width="100%"></iframe></p>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>