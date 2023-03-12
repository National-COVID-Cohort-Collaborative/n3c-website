<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:researcherEssentials ID="1">
					<h1><strapi:researcherEssentialsHeader/></h1>
					<h2>Nav Tiles</h2>
					<strapi:foreachResearcherEssentialsNavTileLinks var="x">
						<strapi:researcherEssentialsNavTileLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsNavTileLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="${tag_researcherEssentialsNavTileLinks.contentImageBlockLeftOrder}"/>
							</jsp:include>
						</strapi:researcherEssentialsNavTileLinks>
					</strapi:foreachResearcherEssentialsNavTileLinks>
					<h2>Join block</h2>
					<strapi:foreachResearcherEssentialsJoinBlockLinks var="y">
						<strapi:researcherEssentialsJoinBlockLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsJoinBlockLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:researcherEssentialsJoinBlockLinks>
					</strapi:foreachResearcherEssentialsJoinBlockLinks>
					<h2>Access block</h2>
					<strapi:foreachResearcherEssentialsAccessBlockLinks var="y">
						<strapi:researcherEssentialsAccessBlockLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsAccessBlockLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:researcherEssentialsAccessBlockLinks>
					</strapi:foreachResearcherEssentialsAccessBlockLinks>
					<h2>Domain block</h2>
					<strapi:foreachResearcherEssentialsDomainBlockLinks var="y">
						<strapi:researcherEssentialsDomainBlockLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsDomainBlockLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:researcherEssentialsDomainBlockLinks>
					</strapi:foreachResearcherEssentialsDomainBlockLinks>
					<h2>Governance block</h2>
					<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="y">
						<strapi:researcherEssentialsGovernanceBlockLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsGovernanceBlockLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:researcherEssentialsGovernanceBlockLinks>
					</strapi:foreachResearcherEssentialsGovernanceBlockLinks>
				</strapi:researcherEssentials>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>