<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:enclaveEssentials ID="1">
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
					<strapi:foreachEnclaveEssentialsUserTilesLinks var="x">
						<strapi:enclaveEssentialsUserTilesLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_enclaveEssentialsUserTilesLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="${tag_enclaveEssentialsUserTilesLinks.contentImageBlockLeftOrder}"/>
							</jsp:include>
						</strapi:enclaveEssentialsUserTilesLinks>
					</strapi:foreachEnclaveEssentialsUserTilesLinks>
					<h2>Nav tiles</h2>
					<strapi:foreachEnclaveEssentialsNavTilesLinks var="x">
						<strapi:enclaveEssentialsNavTilesLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_enclaveEssentialsNavTilesLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="${tag_enclaveEssentialsNavTilesLinks.contentImageBlockLeftOrder}"/>
							</jsp:include>
						</strapi:enclaveEssentialsNavTilesLinks>
					</strapi:foreachEnclaveEssentialsNavTilesLinks>
				</strapi:enclaveEssentials>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>