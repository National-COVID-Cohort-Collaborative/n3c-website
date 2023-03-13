<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="col-xs-8">
			<strapi:downloads ID="1">
				<h1><strapi:downloadsHeader/></h1>
				<util:markdown2html><strapi:downloadsIntroBlock/></util:markdown2html>
				
				<h2><strapi:downloadsPrepareHeader/></h2>
				<util:markdown2html><strapi:downloadsPrepareBlock/></util:markdown2html>
				
				<h2><strapi:downloadsSubmitHeader/></h2>
				<util:markdown2html><strapi:downloadsSubmitBlock1/></util:markdown2html>
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="1" />
					<jsp:param name="type" value="api::download.download" />
					<jsp:param name="field" value="submit_graphic1" />
					<jsp:param name="format" value="medium" />
				</jsp:include>
				<util:markdown2html><strapi:downloadsSubmitBlock2/></util:markdown2html>
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="1" />
					<jsp:param name="type" value="api::download.download" />
					<jsp:param name="field" value="submit_graphic2" />
					<jsp:param name="format" value="medium" />
				</jsp:include>
				
				<h2><strapi:downloadsTrackHeader/></h2>
				<util:markdown2html><strapi:downloadsTrackBlock1/></util:markdown2html>
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="1" />
					<jsp:param name="type" value="api::download.download" />
					<jsp:param name="field" value="track_graphic1" />
					<jsp:param name="format" value="medium" />
				</jsp:include>
				<util:markdown2html><strapi:downloadsTrackBlock2/></util:markdown2html>
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="1" />
					<jsp:param name="type" value="api::download.download" />
					<jsp:param name="field" value="track_graphic2" />
					<jsp:param name="format" value="medium" />
				</jsp:include>
				<util:markdown2html><strapi:downloadsTrackBlock3/></util:markdown2html>
				
				<h2><strapi:downloadsDownloadHeader/></h2>
				<util:markdown2html><strapi:downloadsDownloadBlock1/></util:markdown2html>
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="1" />
					<jsp:param name="type" value="api::download.download" />
					<jsp:param name="field" value="download_graphic1" />
					<jsp:param name="format" value="medium" />
				</jsp:include>
				<util:markdown2html><strapi:downloadsDownloadBlock2/></util:markdown2html>
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="1" />
					<jsp:param name="type" value="api::download.download" />
					<jsp:param name="field" value="download_graphic2" />
					<jsp:param name="format" value="medium" />
				</jsp:include>
				<util:markdown2html><strapi:downloadsDownloadBlock3/></util:markdown2html>
				
			</strapi:downloads>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>