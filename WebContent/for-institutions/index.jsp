<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:institutionalEssentials ID="1">
					<h1><strapi:institutionalEssentialsHeader/></h1>
					<h2>Nav Tiles</h2>
					<strapi:foreachInstitutionalEssentialsNavTileLinks var="x">
						<strapi:institutionalEssentialsNavTileLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_institutionalEssentialsNavTileLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="${tag_institutionalEssentialsNavTileLinks.contentImageBlockLeftOrder}"/>
							</jsp:include>
						</strapi:institutionalEssentialsNavTileLinks>
					</strapi:foreachInstitutionalEssentialsNavTileLinks>
					<h2>Join block</h2>
					<strapi:foreachInstitutionalEssentialsJoinBlockLinks var="y">
						<strapi:institutionalEssentialsJoinBlockLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_institutionalEssentialsJoinBlockLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:institutionalEssentialsJoinBlockLinks>
					</strapi:foreachInstitutionalEssentialsJoinBlockLinks>
					<h2>step</h2>
					<strapi:foreachInstitutionalEssentialsStepLinks var="z">
						<strapi:institutionalEssentialsStepLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_institutionalEssentialsStepLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="${tag_institutionalEssentialsStepLinks.contentImageBlockRightOrder}"/>
							</jsp:include>
						</strapi:institutionalEssentialsStepLinks>
					</strapi:foreachInstitutionalEssentialsStepLinks>
					<util:markdown2html><strapi:institutionalEssentialsBlock/></util:markdown2html>
				</strapi:institutionalEssentials>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>