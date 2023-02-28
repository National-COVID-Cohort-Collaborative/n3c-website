<%@ include file="../_include.jsp"%>
<html>
<style>

#shade {
	background-color: Gainsboro;
	margin-left: 10%;
	margin-right: 10%;
}
</style>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<strapi:domainTeams ID="${param.id}">
			<c:choose>
				<c:when test="${tag_domainTeams.crossCutting}">
					<h1>
						N3C Cross Cutting Team:
						<strapi:domainTeamsName />
					</h1>
				</c:when>
				<c:otherwise>
					<h1>
						N3C Domain Team:
						<strapi:domainTeamsName />
					</h1>
				</c:otherwise>
			</c:choose>
			<div class="row flex-nowrap">
				<div class="col-xs-5">
					<util:markdown2html><strapi:domainTeamsDescription /></util:markdown2html>
				</div>
			</div>
			<div id="shade" class="row flex-wrap">
				<c:if test="${not empty tag_domainTeams.googleDriveUrl}">
					<div class="card col-xs-5">
						<div style="text-align: center;">
							<jsp:include page="../files/image.jsp">
								<jsp:param value="338" name="id" />
								<jsp:param value="thumbnail" name="format" />
							</jsp:include>
						</div>
						<div>
							Google Drive: <a href="<strapi:domainTeamsGoogleDriveUrl/>"><strapi:domainTeamsGoogleDriveLinkText /></a>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty tag_domainTeams.googleGroupEmail}">
					<div class="card col-xs-5">
						<div style="text-align: center;">
							<jsp:include page="../files/image.jsp">
								<jsp:param value="336" name="id" />
								<jsp:param value="thumbnail" name="format" />
							</jsp:include>
						</div>
						<div>
							Google Group: <a href="mailto:<strapi:domainTeamsGoogleGroupEmail/>"><strapi:domainTeamsGoogleGroupEmail /></a>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty tag_domainTeams.slackUrl}">
					<div class="card col-xs-5">
						<div style="text-align: center;">
							<jsp:include page="../files/image.jsp">
								<jsp:param value="361" name="id" />
								<jsp:param value="thumbnail" name="format" />
							</jsp:include>
						</div>
						<div>
							Slack Channel: <a href="<strapi:domainTeamsSlackUrl/>"><strapi:domainTeamsSlackLinkText /></a>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty tag_domainTeams.joinUrl}">
					<div class="card col-xs-5">
						Join: <a href="<strapi:domainTeamsJoinUrl/>"><strapi:domainTeamsJoinLinkText /></a>
					</div>
				</c:if>
			</div>

			<h2>Leadership</h2>
			<div class="row flex-wrap">
			<strapi:foreachDomainTeamsLeadsLinks var="idIter">
				<strapi:domainTeamsLeadsLinks>
					<jsp:include page="../bio/thumbnail.jsp">
						<jsp:param value="${tag_domainTeamsLeadsLinks.bioId}" name="id"/>
					</jsp:include>
				</strapi:domainTeamsLeadsLinks>
			</strapi:foreachDomainTeamsLeadsLinks>
			</div>
		</strapi:domainTeams>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>