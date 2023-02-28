<%@ include file="_include.jsp"%>
<html>
<jsp:include page="head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-12">
				<div class="col-xs-8" style="text-align: center;">
					<jsp:include page="files/image.jsp">
						<jsp:param value="326" name="id" />
						<jsp:param value="medium" name="format" />
					</jsp:include>
				</div>
				<strapi:landingPages ID='1'>
					<h2><strapi:landingPagesWelcome /> (From STRAPI via taglib)</h2>

					<table class="table table-bordered table-striped table-hover table-datatable">
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Description</th>
							<th>Created At</th>
							<th>Updated At</th>
							<th>Published At</th>
						</tr>
						<strapi:foreachLandingPagesDomainTeamsLinks var="link" sortCriteria="domain_team_order">
							<strapi:landingPagesDomainTeamsLinks>
								<strapi:domainTeams ID="${tag_landingPagesDomainTeamsLinks.domainTeamId}">
									<tr>
										<td><strapi:domainTeamsID /></td>
										<td><strapi:domainTeamsName /></td>
										<td><strapi:domainTeamsDescription /></td>
										<td><strapi:domainTeamsCreatedAt /></td>
										<td><strapi:domainTeamsUpdatedAt /></td>
										<td><strapi:domainTeamsPublishedAt /></td>
									</tr>
								</strapi:domainTeams>
							</strapi:landingPagesDomainTeamsLinks>
						</strapi:foreachLandingPagesDomainTeamsLinks>
					</table>
				</strapi:landingPages>

				<h2>Dashboard List (From dashboard environment)</h2>
				<table class="table table-bordered table-striped table-hover table-datatable">
					<thead>
						<tr>
							<th>Did</th>
							<th>Title</th>
							<th>Blurb</th>
							<th>Thumbnail</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<dashboard:foreachDashboard var="didIter" limitCriteria="2">
							<dashboard:dashboard>
								<tr>
									<td><a href="dashboard/show.jsp?did=<dashboard:dashboardDid />"><dashboard:dashboardDid /></a></td>
									<td><dashboard:dashboardTitle /></td>
									<td><dashboard:dashboardBlurb /></td>
									<td><img src="dashboard/displayDashboardThumbnail.jsp?&size=120&did=<dashboard:dashboardDid />" width=200></td>
								</tr>
							</dashboard:dashboard>
						</dashboard:foreachDashboard>
					</tbody>
					<tfoot>
					</tfoot>
				</table>

			</div>
		</div>
		<jsp:include page="blocks/ehr_stats.jsp"/>
		<jsp:include page="blocks/admin_stats.jsp"/>
		<div class="row flex-nowrap">
			<div class="col-xs-12">
				<c:import url="http://localhost:8080/n3c-dashboard/external/spotlight.jsp"/>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>