<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<style>

#top {
	background-color: Gainsboro;
	margin-left: 10%;
	margin-right: 10%;
}
</style>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
	</div>
	<strapi:newsItems ID="1">
		<strapi:foreachNewsItemsPressReleasesLinks var="items">
			<strapi:newsItemsPressReleasesLinks>
				<strapi:pressReleases ID="${tag_newsItemsPressReleasesLinks.pressReleaseId}">
					<div class="row flex-nowrap">
						<div class="col col-3">
							<jsp:include page="news_logo.jsp">
								<jsp:param name="id" value="${tag_pressReleases.ID}" />
								<jsp:param name="format" value="thumbnail" />
							</jsp:include>
						</div>
						<div class="col col-9">
							<h2><a href="<strapi:pressReleasesUrl/>"><strapi:pressReleasesTitle/></a></h2>
							<util:markdown2html><strapi:pressReleasesDescription/></util:markdown2html>
						</div>
					</div>
				</strapi:pressReleases>
			</strapi:newsItemsPressReleasesLinks>
		</strapi:foreachNewsItemsPressReleasesLinks>
	</strapi:newsItems>
	<jsp:include page="../footer.jsp" />
</body>
</html>