<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<strapi:presentations ID="1">
			<div class="row flex-wrap">
				<strapi:foreachPresentationsYouTubeVideosLinks var="idIter" sortCriteria="you_tube_video_order">
					<strapi:presentationsYouTubeVideosLinks>
						<div class="col-xs-5">
							<jsp:include page="../youtube/video.jsp">
								<jsp:param value="${tag_presentationsYouTubeVideosLinks.youTubeVideoId }" name="id" />
							</jsp:include>
						</div>
					</strapi:presentationsYouTubeVideosLinks>
				</strapi:foreachPresentationsYouTubeVideosLinks>
			</div>
		</strapi:presentations>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>