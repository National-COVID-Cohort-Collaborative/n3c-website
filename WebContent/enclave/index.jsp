<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
				<strapi:enclaveEssentials ID="1">
		<div class="row flex-nowrap">
			<div class="col-12">
					<h1><strapi:enclaveEssentialsHeader/></h1>
					<strapi:foreachEnclaveEssentialsDescriptionLinks var="x">
						<strapi:enclaveEssentialsDescriptionLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_enclaveEssentialsDescriptionLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:enclaveEssentialsDescriptionLinks>
					</strapi:foreachEnclaveEssentialsDescriptionLinks>
					<util:markdown2html><strapi:enclaveEssentialsBlock1/></util:markdown2html>
					<h2>User block</h2>
					<strapi:foreachEnclaveEssentialsUserTilesLinks var="x" sortCriteria="content_image_block_left_order">
						<strapi:enclaveEssentialsUserTilesLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_enclaveEssentialsUserTilesLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
							</jsp:include>
						</strapi:enclaveEssentialsUserTilesLinks>
					</strapi:foreachEnclaveEssentialsUserTilesLinks>
					<h2>Nav tiles</h2>
		</div>
		</div>
		<div class="row flex-wrap">
					<strapi:foreachEnclaveEssentialsNavTilesLinks var="x" sortCriteria="content_image_block_left_order">
						<strapi:enclaveEssentialsNavTilesLinks>
							<jsp:include page="../blocks/text_left_card.jsp">
								<jsp:param name="id" value="${tag_enclaveEssentialsNavTilesLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
							</jsp:include>
						</strapi:enclaveEssentialsNavTilesLinks>
					</strapi:foreachEnclaveEssentialsNavTilesLinks>
		</div>
				</strapi:enclaveEssentials>
			</div>
		<jsp:include page="../footer.jsp" />
</body>
</html>