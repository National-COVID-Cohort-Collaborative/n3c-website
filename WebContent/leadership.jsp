<%@ include file="_include.jsp"%>
<html>
<jsp:include page="head.jsp" />
<body>
	<json:object sourceURL="http://dora.info-science.uiowa.edu:1337/api/landing-page?populate=*" targetName="data">
		<json:object targetName="attributes">
			<div class="container-fluid">
				<jsp:include page="header.jsp" />
				<div class="row flex-nowrap">
					<div class="col-xs-12">
						<strapi:leaderships ID="1">
							<strapi:foreachLeadershipsBioGroupsLinks var="idIter" sortCriteria="bio_group_order">
								<strapi:leadershipsBioGroupsLinks>
									<strapi:bioGroups ID="${tag_leadershipsBioGroupsLinks.bioGroupId}">
										<h1><strapi:bioGroupsName /></h1>
										<div class="row flex-nowrap">
											<strapi:foreachBiosBioGroupsLinks var="bio" sortCriteria="bio_order">
												<strapi:biosBioGroupsLinks>
													<jsp:include page="bio/thumbnail.jsp">
														<jsp:param name="id" value="${tag_biosBioGroupsLinks.bioId}"/>
													</jsp:include>
												</strapi:biosBioGroupsLinks>
											</strapi:foreachBiosBioGroupsLinks>
										</div>
									</strapi:bioGroups>
								</strapi:leadershipsBioGroupsLinks>
							</strapi:foreachLeadershipsBioGroupsLinks>
						</strapi:leaderships>
					</div>
				</div>
			</div>
			<jsp:include page="footer.jsp" />
		</json:object>
	</json:object>
</body>
</html>