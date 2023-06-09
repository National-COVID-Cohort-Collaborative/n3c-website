<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:onboardings ID="1">
					<h1><strapi:onboardingsHeader /></h1>
					<h2>
						<jsp:include page="../files/related_image_pos.jsp">
							<jsp:param name="id" value="1" />
							<jsp:param name="type" value="api::onboarding.onboarding" />
							<jsp:param name="field" value="left_header_image" />
							<jsp:param name="pos" value="1" />
							<jsp:param name="format" value="thumbnail" />
						</jsp:include>
						<strapi:onboardingsSubheader />
						<jsp:include page="../files/related_image_pos.jsp">
							<jsp:param name="id" value="1" />
							<jsp:param name="type" value="api::onboarding.onboarding" />
							<jsp:param name="field" value="right_header_image" />
							<jsp:param name="pos" value="1" />
							<jsp:param name="format" value="thumbnail" />
						</jsp:include>
					</h2>
					
					<h2><strapi:onboardingsRegistrationHeader/></h2>
					<strapi:foreachOnboardingsStepLinks var="x" sortCriteria="content_image_block_right_order">
						<strapi:onboardingsStepLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_onboardingsStepLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:onboardingsStepLinks>
					</strapi:foreachOnboardingsStepLinks>
					
					<div class="row flex-wrap">
						<strapi:foreachOnboardingsNavTilesLinks var="x" sortCriteria="nav_tile_order">
							<strapi:onboardingsNavTilesLinks>
								<jsp:include page="../blocks/nav_tile.jsp">
									<jsp:param value="${tag_onboardingsNavTilesLinks.navTileId}" name="id" />
								</jsp:include>
							</strapi:onboardingsNavTilesLinks>
						</strapi:foreachOnboardingsNavTilesLinks>
					</div>
				
					<div class="row">
						<strapi:onboardingsBlock/>
					</div>
				
					<div class="row">
						<strapi:onboardingsBlock2/>
					</div>
				</strapi:onboardings>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>