<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<strapi:domainTeams ID="${param.id}">
			<c:choose>
				<c:when test="${tag_domainTeams.crossCutting}">
					<h1>N3C Cross Cutting Team: <strapi:domainTeamsName/></h1>
				</c:when>
				<c:otherwise>
					<h1>N3C Domain Team: <strapi:domainTeamsName/></h1>
				</c:otherwise>
			</c:choose>
			<div class="row flex-nowrap">
				<div class="col-xs-5">
					<util:markdown2html><strapi:domainTeamsDescription/></util:markdown2html>
				</div>
			</div>
			<div class="row flex-wrap">
				<c:if test="${not empty tag_domainTeams.googleDriveUrl}">
					<div class="card col-xs-5">
						Google Drive: <a href="<strapi:domainTeamsGoogleDriveUrl/>"><strapi:domainTeamsGoogleDriveLinkText /></a>
					</div>
				</c:if>
			</div>

		</strapi:domainTeams>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>