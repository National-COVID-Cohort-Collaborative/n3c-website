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
					<util:markdown2html>
						<strapi:workstreamsBlock1 />
					</util:markdown2html>
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
					<h2>Workstreams</h2>
					<sql:query var="media" dataSource="jdbc/STRAPITagLib">
						select
							url,
							coalesce(((formats->>'large')::jsonb)->>'url', url) as large,
							coalesce(((formats->>'small')::jsonb)->>'url', url) as small,
							coalesce(((formats->>'medium')::jsonb)->>'url', url) as medium,
							coalesce(((formats->>'thumbnail')::jsonb)->>'url', url) as thumbnail
						from
							strapi.files,
							strapi.files_related_morphs
						where files.id=files_related_morphs.file_id
						  and related_type = 'api::workstream.workstream'
						  and field = 'icons'
						  and related_id = 1
					</sql:query>
					<c:forEach items="${media.rows}" var="row" varStatus="rowCounter">
						<img src="http://dora.info-science.uiowa.edu:1337${row.thumbnail}" />
					</c:forEach>
					<h2>Events</h2>
					<strapi:workstreamsEvents/>
				</strapi:workstreams>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>