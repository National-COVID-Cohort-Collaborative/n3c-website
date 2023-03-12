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
					<strapi:foreachOnboardingsStepLinks var="x">
						<strapi:onboardingsStepLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_onboardingsStepLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="${tag_onboardingsStepLinks.contentImageBlockRightOrder}"/>
							</jsp:include>
						</strapi:onboardingsStepLinks>
					</strapi:foreachOnboardingsStepLinks>
					
					<h2>Nav block</h2>
					<strapi:foreachOnboardingsNavTileLinks var="x">
						<strapi:onboardingsNavTileLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_onboardingsNavTileLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="${tag_onboardingsNavTileLinks.contentImageBlockLeftOrder}"/>
							</jsp:include>
						</strapi:onboardingsNavTileLinks>
					</strapi:foreachOnboardingsNavTileLinks>
				</strapi:onboardings>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>