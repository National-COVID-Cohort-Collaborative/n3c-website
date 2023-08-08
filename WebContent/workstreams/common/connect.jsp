
<div class="row flex-nowrap">
	<div class="col-8">
		<h2><strapi:workstreamInstancesConnectHeader /></h2>
		<util:markdown2html><strapi:workstreamInstancesConnectBlock /></util:markdown2html>
	</div>
	<div class="col-4">
		<jsp:include page="../../files/related_image_pos.jsp">
			<jsp:param name="id" value="${tag_workstreamInstances.ID}" />
			<jsp:param name="type" value="api::workstream-instance.workstream-instance" />
			<jsp:param name="field" value="icon" />
			<jsp:param name="pos" value="1" />
			<jsp:param name="format" value="thumbnail" />
		</jsp:include>
	</div>
</div>
