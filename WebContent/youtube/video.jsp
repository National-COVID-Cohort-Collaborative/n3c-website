<%@ include file="../_include.jsp"%>

<strapi:youTubeVideos ID="${param.id}">
	<h4><strapi:youTubeVideosHeader /></h4>
	<iframe width="${tag_youTubeVideos.width}" height="${tag_youTubeVideos.height}" frameborder="0" allowfullscreen="allowfullscreen"
		src="${tag_youTubeVideos.url}">
	</iframe>
	<util:markdown2html><strapi:youTubeVideosFooter/></util:markdown2html>
</strapi:youTubeVideos>
