<%@ include file="../_include.jsp"%>
<style>
.card img {
    max-width:150px;
    height:auto;
}
</style>
<div class="card col-xs-2">
	<jsp:include page="headshot.jsp">
		<jsp:param name="id" value="${param.id}"/>
	</jsp:include>
	<strapi:bios ID="${param.id}">
		<strapi:biosFirstName />
		<strapi:biosLastName />, <strapi:biosTitle />
		<br>
		<strapi:biosOrganization />
	</strapi:bios>
</div>
