<%@ include file="../_include.jsp"%>

<strapi:youTubeVideos ID="${param.id}">
	<h4><strapi:youTubeVideosHeader /></h4>
	<iframe width="${tag_youTubeVideos.width}" height="${tag_youTubeVideos.height}" frameborder="0" allowfullscreen="allowfullscreen"
		src="${tag_youTubeVideos.url}">
	</iframe>
	<c:if test="${empty param.footer || param.footer == 'true'}">
		<util:markdown2html><strapi:youTubeVideosFooter/></util:markdown2html>
	</c:if>
</strapi:youTubeVideos>
