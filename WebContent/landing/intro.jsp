<%@ include file="../_include.jsp"%>

<div class="row main-block shadow">
	<div class="col-10">
		<strapi:landingPages ID="1">
			<util:markdown2html><strapi:landingPagesIntroduction/></util:markdown2html>
		</strapi:landingPages>
	</div>
	<div class="col-2">
		<jsp:include page="../files/image.jsp">
			<jsp:param name="id" value="537" />
			<jsp:param name="format" value="50%" />
		</jsp:include>
	</div>
</div>
