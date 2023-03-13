<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="col-xs-8">
			<strapi:trainings ID="1">
				<h1><strapi:trainingsHeader/></h1>
				<util:markdown2html><strapi:trainingsBlock1/></util:markdown2html>
				
				<h2><strapi:trainingsPortalHeader/></h2>
				<util:markdown2html><strapi:trainingsPortalBlock/></util:markdown2html>
				
				<h2><strapi:trainingsCommunityHeader/></h2>
				<util:markdown2html><strapi:trainingsCommunityBlock/></util:markdown2html>
				
				<h3><strapi:trainingsEugHeader/></h3>
				<util:markdown2html><strapi:trainingsEugBlock/></util:markdown2html>
				<util:markdown2html><strapi:trainingsEugBlock2/></util:markdown2html>
				
				<h3><strapi:trainingsSharedResourceHeader/></h3>
				<util:markdown2html><strapi:trainingsSharedResourceBlock/></util:markdown2html>
				<div class="row flex-wrap">
					<strapi:foreachTrainingsSharedResourcesLinks var="x" sortCriteria="resource_order">
						<strapi:trainingsSharedResourcesLinks>
							<jsp:include page="../blocks/resource_tile.jsp">
								<jsp:param name="id" value="${tag_trainingsSharedResourcesLinks.resourceId}" />
								<jsp:param value="3" name="width"/>
							</jsp:include>
						</strapi:trainingsSharedResourcesLinks>
					</strapi:foreachTrainingsSharedResourcesLinks>
				</div>
				
				<h3><strapi:trainingsAdditionalResourcesHeader/></h3>
				<div class="row flex-wrap">
					<strapi:foreachTrainingsAdditionalResourcesLinks var="x" sortCriteria="resource_order">
						<strapi:trainingsAdditionalResourcesLinks>
							<jsp:include page="../blocks/resource_tile_no_image.jsp">
								<jsp:param name="id" value="${tag_trainingsAdditionalResourcesLinks.resourceId}" />
								<jsp:param value="3" name="width"/>
							</jsp:include>
						</strapi:trainingsAdditionalResourcesLinks>
					</strapi:foreachTrainingsAdditionalResourcesLinks>
				</div>
			</strapi:trainings>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>