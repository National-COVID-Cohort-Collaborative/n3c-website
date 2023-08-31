<p></p>
<h2><strapi:workstreamInstancesLeadershipHeader /></h2>
<div class="row flex-nowrap">
	<strapi:foreachWorkstreamInstancesBiosLinks var="bio" sortCriteria="bio_order">
		<strapi:workstreamInstancesBiosLinks>
			<jsp:include page="../../bio/thumbnail.jsp">
				<jsp:param name="id" value="${tag_workstreamInstancesBiosLinks.bioId}" />
			</jsp:include>
		</strapi:workstreamInstancesBiosLinks>
	</strapi:foreachWorkstreamInstancesBiosLinks>
</div>
