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
				<strapi:contributors ID="2">
					<util:markdown2html><strapi:contributorsBlock1/></util:markdown2html>
				</strapi:contributors>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>