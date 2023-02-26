<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<strapi:publicHealthQuestions ID="${param.id}">
				<div class="col-xs-8">
					<h1><strapi:publicHealthQuestionsTitle /></h1>
					<h2>Contract Description</h2>
					<util:markdown2html><strapi:publicHealthQuestionsDescription /></util:markdown2html>
					<h2>Contract Aims</h2>
					<util:markdown2html><strapi:publicHealthQuestionsAims /></util:markdown2html>
					<h2>Analysis Plan / Research Method</h2>
					<util:markdown2html><strapi:publicHealthQuestionsAnalysisPlan /></util:markdown2html>
					<h2>Expected Results</h2>
					<util:markdown2html><strapi:publicHealthQuestionsExpectedResults /></util:markdown2html>
					<h2>Inclusion Criteria</h2>
					<util:markdown2html><strapi:publicHealthQuestionsInclusionCriteria /></util:markdown2html>
					<h2>Exclusion Criteria</h2>
					<util:markdown2html><strapi:publicHealthQuestionsExclusionCriteria /></util:markdown2html>
					<h2>Phenotype</h2>
					<util:markdown2html><strapi:publicHealthQuestionsPhenotype /></util:markdown2html>
					<h2>Deliverables</h2>
					<util:markdown2html><strapi:publicHealthQuestionsDeliverables /></util:markdown2html>
				</div>
				<div class="col col-12 col-lg-2 side-col">
					<b>Application Open Date</b><br>
					<strapi:publicHealthQuestionsOpenDate/><br>
					<b>Application Close Date</b><br>
					<strapi:publicHealthQuestionsCloseDate/><br>
					<b>Number of Contracts</b><br>
					<strapi:publicHealthQuestionsContractCount/><br>
					<b>Contract Amount</b><br>
					<strapi:publicHealthQuestionsContractAmount/><br>
					<b>Length of Contract</b><br>
					<strapi:publicHealthQuestionsContractLength/><br>
					<b>Contact</b><br>
					<strapi:publicHealthQuestionsContact/><br>
					<b>Email</b><br>
					<a href="mailto:<strapi:publicHealthQuestionsContactEmail/>"><strapi:publicHealthQuestionsContactEmail/></a><br>
				</div>
			</strapi:publicHealthQuestions>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>