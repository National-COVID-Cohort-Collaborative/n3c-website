<%@ include file="../_include.jsp"%>

<strapi:navTiles ID="${param.id}">
	<div class="col">
		<div class="row">
			<jsp:include page="../files/related_image_pos.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="api::nav-tile.nav-tile" />
				<jsp:param name="field" value="icon" />
				<jsp:param name="pos" value="1" />
				<jsp:param name="format" value="thumbnail" />
			</jsp:include>
		</div>
		<div class="row">
			<a href="<strapi:navTilesUrl/>"><strapi:navTilesUrlLabel /></a>
		</div>
	</div>
</strapi:navTiles>