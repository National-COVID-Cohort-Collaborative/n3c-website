<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:forums ID="1">
					<h1><strapi:forumsHeader/></h1>
					<p><util:markdown2html><strapi:forumsBlock1/></util:markdown2html></p>
					<h2><strapi:forumsHeader2/></h2>
					<strapi:foreachForumsForumPresentationsLinks var="x">
						<strapi:forumsForumPresentationsLinks>
							<strapi:forumPresentations ID="${tag_forumsForumPresentationsLinks.forumPresentationId}">
								<h3><strapi:forumPresentationsDate/></h3>
								<b>Topic:</b><util:markdown2html><strapi:forumPresentationsTopic/></util:markdown2html>
								<b>Presenters:</b><util:markdown2html><strapi:forumPresentationsPresenters/></util:markdown2html>
							</strapi:forumPresentations>
						</strapi:forumsForumPresentationsLinks>
					</strapi:foreachForumsForumPresentationsLinks>
				</strapi:forums>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>