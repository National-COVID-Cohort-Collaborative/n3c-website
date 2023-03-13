<%@ include file="../_include.jsp"%>

<strapi:resources ID="${param.id}">
	<div class="col col-3">
		<div class="row">
			<jsp:include page="../files/related_image_pos.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="api::resource.resource" />
				<jsp:param name="field" value="graphic" />
				<jsp:param name="pos" value="1" />
				<jsp:param name="format" value="thumbnail" />
			</jsp:include>
		</div>
		<div class="row">
			<h4><strapi:resourcesHeader/></h4>
			<util:markdown2html><strapi:resourcesDescription/></util:markdown2html>
		</div>
	</div>
</strapi:resources>