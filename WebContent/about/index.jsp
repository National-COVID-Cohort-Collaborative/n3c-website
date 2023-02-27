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
	<json:object sourceURL="http://dora.info-science.uiowa.edu:1337/api/landing-page?populate=*" targetName="data">
		<json:object targetName="attributes">
			<div class="container-fluid">
				<jsp:include page="../header.jsp" />
				<strapi:abouts ID="1">
					<div id="top" class="row flex-nowrap">
						<div class="col-xs-12">
							<util:markdown2html><strapi:aboutsBlock1 /></util:markdown2html>
						</div>
					</div>
					<div class="row flex-nowrap">
						<div class="col-xs-5">
							<jsp:include page="../files/image.jsp">
								<jsp:param value="325" name="id" />
								<jsp:param value="small" name="format" />
							</jsp:include>
						</div>
						<div class="col-xs-7">
							<util:markdown2html><strapi:aboutsBlock2 /></util:markdown2html>
						</div>
					</div>
					<div class="row flex-nowrap">
						<div class="col-xs-7">
							<util:markdown2html><strapi:aboutsBlock3 /></util:markdown2html>
						</div>
						<div class="col-xs-5">
							<jsp:include page="../youtube/video.jsp">
								<jsp:param value="1" name="id" />
							</jsp:include>
						</div>
					</div>
					<div class="row flex-nowrap">
						<div class="col-xs-12">
							<util:markdown2html><strapi:aboutsBlock4 /></util:markdown2html>
						</div>
					</div>
				</strapi:abouts>
			</div>
			<jsp:include page="../footer.jsp" />
		</json:object>
	</json:object>
</body>
</html>