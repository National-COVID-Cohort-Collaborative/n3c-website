<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-2">
				&nbsp;
			</div>
			<div class="col-8">
				<strapi:forums ID="1">
					<h1><strapi:forumsHeader /></h1>
					<util:markdown2html><strapi:forumsBlock1 /></util:markdown2html>

						<h2><strapi:forumsHeader2 /></h2>
							<div class="row flex-wrap">
						<div class="col-8">
								<strapi:foreachForumsForumPresentationsLinks var="x">
									<strapi:forumsForumPresentationsLinks>
										<jsp:include page="presentation_tile.jsp">
											<jsp:param value="${tag_forumsForumPresentationsLinks.forumPresentationId}" name="id" />
										</jsp:include>
									</strapi:forumsForumPresentationsLinks>
								</strapi:foreachForumsForumPresentationsLinks>
							</div>
						<div class="col-4">
							<a class="twitter-timeline" data-height="700" data-width="300" href="https://twitter.com/data2health?ref_src=twsrc%5Etfw">Tweets by data2health</a>
							<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
						</div>
						</div>
				</strapi:forums>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>