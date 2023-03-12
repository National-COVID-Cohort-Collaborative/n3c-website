<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:workstreams ID="1">
					<h1><strapi:workstreamsHeader /></h1>
					<util:markdown2html><strapi:workstreamsBlock1 /></util:markdown2html>
					<strapi:foreachWorkstreamsIntroLinks var="x">
						<strapi:workstreamsIntroLinks>
							<strapi:contentImageBlockRights ID="${tag_workstreamsIntroLinks.contentImageBlockRightId}">
								<strapi:contentImageBlockRightsContent />
							</strapi:contentImageBlockRights>
						</strapi:workstreamsIntroLinks>
					</strapi:foreachWorkstreamsIntroLinks>

					<strapi:foreachWorkstreamsYouTubeVideoLinks var="x">
						<strapi:workstreamsYouTubeVideoLinks>
							<div class="row flex-nowrap">
								<div class="col-xs-7">
									<util:markdown2html><strapi:workstreamsBlock2 /></util:markdown2html>
								</div>
								<div class="col-xs-5">
									<jsp:include page="../youtube/video.jsp">
										<jsp:param value="${tag_workstreamsYouTubeVideoLinks.youTubeVideoId}" name="id" />
									</jsp:include>
								</div>
							</div>
						</strapi:workstreamsYouTubeVideoLinks>
					</strapi:foreachWorkstreamsYouTubeVideoLinks>
					<util:markdown2html><strapi:workstreamsBlock3/></util:markdown2html>

						<div class="row flex-nowrap">
							<div class="col-xs-12">
								<h2>Workstreams</h2>
							</div>
						</div>
						<div class="row flex-nowrap">
							<strapi:foreachWorkstreamsNavTilesLinks var="x">
								<strapi:workstreamsNavTilesLinks>
									<jsp:include page="../blocks/nav_tile_no_text.jsp">
										<jsp:param value="${tag_workstreamsNavTilesLinks.navTileId}" name="id" />
									</jsp:include>
								</strapi:workstreamsNavTilesLinks>
							</strapi:foreachWorkstreamsNavTilesLinks>
						</div>

					<h2>Events</h2>
					<strapi:workstreamsEvents/>
				</strapi:workstreams>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>