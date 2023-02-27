<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<json:object sourceURL="http://dora.info-science.uiowa.edu:1337/api/landing-page?populate=*" targetName="data">
		<json:object targetName="attributes">
			<div class="container-fluid">
				<jsp:include page="../header.jsp" />
				<div class="row flex-nowrap">
					<div class="col-xs-12">
						<strapi:missions ID="1">
							<div class="row flex-nowrap">
								<div class="col-xs-12">
									<util:markdown2html><strapi:missionsBlock1 /></util:markdown2html>
								</div>
								<div class="col-xs-12">
									<util:markdown2html><strapi:missionsBlock2 /></util:markdown2html>
								</div>
							</div>
							<div class="row flex-nowrap">
								<div class="col-xs-12">
									<h1>Agency Partners</h1>
									<strapi:foreachMissionsPartnerGroupsLinks var="idIter" sortCriteria="partner_group_order">
										<strapi:missionsPartnerGroupsLinks>
											<strapi:partnerGroups ID="${tag_missionsPartnerGroupsLinks.partnerGroupId}">
												<h2><strapi:partnerGroupsName /></h2>
												<div class="row flex-nowrap">
													<strapi:foreachPartnersPartnerGroupLinks var="partners" sortCriteria="partner_order">
														<strapi:partnersPartnerGroupLinks>
															<strapi:partners ID="${tag_partnersPartnerGroupLinks.partnerId}">
																<div class="col col-4">
																	<a href="${tag_partners.url}">
																	<jsp:include page="logo.jsp">
																		<jsp:param name="id" value="${tag_partners.ID}" />
																		<jsp:param name="format" value="thumbnail" />
																	</jsp:include>
																	</a>
																</div>
															</strapi:partners>
														</strapi:partnersPartnerGroupLinks>
													</strapi:foreachPartnersPartnerGroupLinks>
												</div>
											</strapi:partnerGroups>
										</strapi:missionsPartnerGroupsLinks>
									</strapi:foreachMissionsPartnerGroupsLinks>
								</div>
							</div>
						</strapi:missions>
					</div>
				</div>
			</div>
			<jsp:include page="../footer.jsp" />
		</json:object>
	</json:object>
</body>
</html>