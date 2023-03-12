
<div class="row flex-nowrap">
	<strapi:foreachWorkstreamInstancesNavTilesLinks var="x" sortCriteria="nav_tile_order">
		<strapi:workstreamInstancesNavTilesLinks>
			<jsp:include page="../../blocks/nav_tile.jsp">
				<jsp:param value="${tag_workstreamInstancesNavTilesLinks.navTileId}" name="id" />
			</jsp:include>
		</strapi:workstreamInstancesNavTilesLinks>
	</strapi:foreachWorkstreamInstancesNavTilesLinks>
</div>
