<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
			<strapi:liaisons ID="1">
				<h1><strapi:liaisonsHeader/></h1>
				<util:markdown2html><strapi:liaisonsBlock/></util:markdown2html>
			</strapi:liaisons>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>