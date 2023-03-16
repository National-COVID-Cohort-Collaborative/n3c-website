<%@ include file="../_include.jsp"%>

<fmt:parseNumber var="pos" value="${param.image_pos}" integerOnly="true"/>

<strapi:contentImageBlockLefts ID="${param.id}">
	<div class="row flex-nowrap">
		<div class="col col-9">
			<h2><strapi:contentImageBlockLeftsHeader /></h2>
			<util:markdown2html><strapi:contentImageBlockLeftsContent /></util:markdown2html>
		</div>
		<div class="col col-3">
			<jsp:include page="../files/related_image.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="${param.type}" />
				<jsp:param name="field" value="${param.field}" />
				<jsp:param name="format" value="thumbnail" />
			</jsp:include>
		</div>
	</div>
</strapi:contentImageBlockLefts>
