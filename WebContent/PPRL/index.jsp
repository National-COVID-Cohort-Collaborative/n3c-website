<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:pprls ID="1">
					<h1><strapi:pprlsHeader/></h1>
					<h2><strapi:pprlsSubheader/></h2>
					<util:markdown2html><strapi:pprlsStart/></util:markdown2html>
					
					<h2><strapi:pprlsIntroHeader/></h2>
					<util:markdown2html><strapi:pprlsIntroBlock/></util:markdown2html>
					
					<h2><strapi:pprlsParticipationHeader/></h2>
					<util:markdown2html><strapi:pprlsParticipationBlock1/></util:markdown2html>
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image1" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="thumbnail" />
					</jsp:include>
					<util:markdown2html><strapi:pprlsParticipationBlock2/></util:markdown2html>
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image2" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="thumbnail" />
					</jsp:include>
					<util:markdown2html><strapi:pprlsParticipationBlock3/></util:markdown2html>
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image3" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="thumbnail" />
					</jsp:include>
					<util:markdown2html><strapi:pprlsParticipationBlock4/></util:markdown2html>
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image4" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="thumbnail" />
					</jsp:include>
					<util:markdown2html><strapi:pprlsParticipationBlock5/></util:markdown2html>
					
					<h2><strapi:pprlsGovernanceHeader/></h2>
					<util:markdown2html><strapi:pprlsGovernanceBlock1/></util:markdown2html>
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="governance_image1" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="thumbnail" />
					</jsp:include>
					<util:markdown2html><strapi:pprlsGovernanceBlock2/></util:markdown2html>
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="governance_image2" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="thumbnail" />
					</jsp:include>
					<util:markdown2html><strapi:pprlsGovernanceBlock3/></util:markdown2html>
					
					<h2><strapi:pprlsFaqHeader/></h2>
					<util:markdown2html><strapi:pprlsFaqBlock/></util:markdown2html>
					<div class="accordion" id="faqAccordian">
						<strapi:foreachPprlsFaqsLinks var="x">
							<strapi:pprlsFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_pprlsFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_pprlsFaqsLinks.faqOrder).intValue()}" name="pos" />
								</jsp:include>
							</strapi:pprlsFaqsLinks>
						</strapi:foreachPprlsFaqsLinks>
					</div>
					
					<h2><strapi:pprlsGlossaryHeader/></h2>
					<util:markdown2html><strapi:pprlsGlossaryBlock/></util:markdown2html>
				</strapi:pprls>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>