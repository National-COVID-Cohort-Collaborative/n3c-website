<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="main-block">
			<strapi:policies ID="1">
				<h1><strapi:policiesHeader/></h1>
				<util:markdown2html><strapi:policiesIntroBlock/></util:markdown2html>
				
				<div class="row">
					<div class="col-6">
						<h2><strapi:policiesInstitutionHeader/></h2>
						<strapi:foreachPoliciesInstitutionResourcesLinks var="x" sortCriteria="resource_order">
							<strapi:policiesInstitutionResourcesLinks>
								<jsp:include page="../blocks/resource_tile_no_image.jsp">
									<jsp:param name="id" value="${tag_policiesInstitutionResourcesLinks.resourceId}" />
									<jsp:param value="12" name="width"/>
								</jsp:include>
							</strapi:policiesInstitutionResourcesLinks>
						</strapi:foreachPoliciesInstitutionResourcesLinks>
					</div>
					
					<div class="col-6">
						<h2><strapi:policiesUserHeader/></h2>
						<strapi:foreachPoliciesUserResourcesLinks var="x" sortCriteria="resource_order">
							<strapi:policiesUserResourcesLinks>
								<jsp:include page="../blocks/resource_tile_no_image.jsp">
									<jsp:param name="id" value="${tag_policiesUserResourcesLinks.resourceId}" />
									<jsp:param value="12" name="width"/>
								</jsp:include>
							</strapi:policiesUserResourcesLinks>
						</strapi:foreachPoliciesUserResourcesLinks>
					</div>
				</div>
			</strapi:policies>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>