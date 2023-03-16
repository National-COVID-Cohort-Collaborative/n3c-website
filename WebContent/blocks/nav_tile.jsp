<%@ include file="../_include.jsp"%>

<strapi:navTiles ID="${param.id}">
	<div class="col">
		<c:if test="${not empty tag_navTiles.header}">
			<div class="row">
				<h4><strapi:navTilesHeader /></h4>
			</div>
		</c:if>
		<div class="row">
			<jsp:include page="../files/related_image_pos.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="api::nav-tile.nav-tile" />
				<jsp:param name="field" value="icon" />
				<jsp:param name="pos" value="1" />
				<jsp:param name="format" value="thumbnail" />
			</jsp:include>
		</div>
		<c:if test="${not empty tag_navTiles.block}">
			<div class="row">
				<util:markdown2html><strapi:navTilesBlock/></util:markdown2html>
			</div>
		</c:if>
		<div class="row">
			<a href="<strapi:navTilesUrl/>"><strapi:navTilesUrlLabel /></a>
		</div>
	</div>
</strapi:navTiles>