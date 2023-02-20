<%@ include file="_include.jsp"%>
<html>
<jsp:include page="head.jsp" />
<body>
	<json:object sourceURL="http://dora.info-science.uiowa.edu:1337/api/landing-page?populate=*" targetName="data">
		<json:object targetName="attributes">
			<div class="container-fluid">
				<jsp:include page="header.jsp" />
				<div class="row flex-nowrap">
					<div class="col-xs-4">
						<%@ include file="menu.jsp"%>
					</div>
					<div class="col-xs-8">
						<h1>
							<json:data label="welcome" />
							(From STRAPI via REST)
						</h1>

						<json:object targetName="domain_teams">
							<json:array label="data">
								<c:if test="${json:isFirstArrayElement() == true}">
									<table class="table table-bordered table-striped table-hover table-datatable">
										<tr>
											<th>ID</th>
											<th>Name</th>
											<th>Description</th>
											<th>Created At</th>
											<th>Updated At</th>
											<th>Published At</th>
										</tr>
								</c:if>
										<json:object>
											<tr>
												<td><json:data label="id" /></td>
												<json:object targetName="attributes">
													<td><json:data label="name" /></td>
													<td><json:data label="description" /></td>
													<td><json:data label="createdAt" /></td>
													<td><json:data label="updatedAt" /></td>
													<td><json:data label="publishedAt" /></td>
												</json:object>
											</tr>
										</json:object>
								<c:if test="${json:isLastArrayElement() == true}">
									</table>
								</c:if>
							</json:array>
						</json:object>

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
			</div>
			<%@ include file="footer.jsp"%>
		</json:object>
	</json:object>
</body>
</html>