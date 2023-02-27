<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<strapi:domains ID="1">
			<h1>N3C Domain Teams</h1>
			<util:markdown2html><strapi:domainsBlock1 /></util:markdown2html>
			<util:markdown2html><strapi:domainsBlock2 /></util:markdown2html>
			<h2>Domain Teams</h2>
			<div class="row flex-wrap">
				<strapi:foreachDomainsDomainTeamsLinks var="domains" sortCriteria="domain_team_order">
					<strapi:domainsDomainTeamsLinks>
						<strapi:domainTeams ID="${tag_domainsDomainTeamsLinks.domainTeamId}">
							<div class="col col-4">
								<h3><strapi:domainTeamsName /></h3>
								<util:markdown2html><strapi:domainTeamsSummary/></util:markdown2html>
							</div>
						</strapi:domainTeams>
					</strapi:domainsDomainTeamsLinks>
				</strapi:foreachDomainsDomainTeamsLinks>
			</div>
		</strapi:domains>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>