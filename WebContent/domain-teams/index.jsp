<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<strapi:domains ID="1">
			<h1>N3C Domain Teams</h1>
			<div class="row flex-nowrap block">
				<div class="col-3">
					<jsp:include page="../files/image.jsp">
						<jsp:param value="329" name="id" />
						<jsp:param value="small" name="format" />
					</jsp:include>
				</div>
				<div class="col-x">
					<util:markdown2html><strapi:domainsBlock1 /></util:markdown2html>
				</div>
			</div>
			<div class="row flex-nowrap block">
				<div class="col-9">
					<util:markdown2html><strapi:domainsBlock2 /></util:markdown2html>
				</div>
				<div class="col-5">
					<jsp:include page="../youtube/video.jsp">
						<jsp:param value="2" name="id" />
					</jsp:include>
				</div>
			</div>

			<div class="block">
				<h2>Domain Teams</h2>
				<div class="row flex-wrap">
					<strapi:foreachDomainsDomainTeamsLinks var="domains" sortCriteria="domain_team_order">
						<strapi:domainsDomainTeamsLinks>
							<strapi:domainTeams ID="${tag_domainsDomainTeamsLinks.domainTeamId}">
								<div class="col-4">
									<h3><a href="team.jsp?id=<strapi:domainTeamsID/>"><strapi:domainTeamsName /></a></h3>
									<util:markdown2html><strapi:domainTeamsSummary/></util:markdown2html>
								</div>
							</strapi:domainTeams>
						</strapi:domainsDomainTeamsLinks>
					</strapi:foreachDomainsDomainTeamsLinks>
				</div>
			</div>

			<div class="block">
				<h2>Cross Cutting Teams</h2>
				<div class="row flex-wrap">
					<strapi:foreachDomainsCrossCuttingTeamsLinks var="domains" sortCriteria="domain_team_order">
						<strapi:domainsCrossCuttingTeamsLinks>
							<strapi:domainTeams ID="${tag_domainsCrossCuttingTeamsLinks.domainTeamId}">
								<div class="col-4">
									<h3><a href="team.jsp?id=<strapi:domainTeamsID/>"><strapi:domainTeamsName /></a></h3>
									<util:markdown2html><strapi:domainTeamsSummary/></util:markdown2html>
								</div>
							</strapi:domainTeams>
						</strapi:domainsCrossCuttingTeamsLinks>
					</strapi:foreachDomainsCrossCuttingTeamsLinks>
				</div>
			</div>
		</strapi:domains>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>