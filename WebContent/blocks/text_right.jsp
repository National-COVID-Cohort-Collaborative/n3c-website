<%@ include file="../_include.jsp"%>

<fmt:parseNumber var="pos" value="${param.image_pos}" integerOnly="true"/>

<strapi:contentImageBlockRights ID="${param.id}">
	<div class="row flex-nowrap">
		<div class="col col-3">
			<jsp:include page="../files/related_image_pos.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="${param.type}" />
				<jsp:param name="field" value="${param.field}" />
				<jsp:param name="pos" value="${pos}" />
				<jsp:param name="format" value="thumbnail" />
			</jsp:include>
		</div>
		<div class="col col-9">
			<h2><strapi:contentImageBlockRightsHeader /></h2>
			<util:markdown2html><strapi:contentImageBlockRightsContent /></util:markdown2html>
			
			<a href="<strapi:contentImageBlockRightsUrl/>"><strapi:contentImageBlockRightsUrlLabel/></a>
		</div>
	</div>
</strapi:contentImageBlockRights>
