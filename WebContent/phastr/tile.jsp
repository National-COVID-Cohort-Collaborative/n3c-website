<%@ include file="../_include.jsp"%>

<strapi:publicHealthQuestions ID="${param.id}">
	<div class="card w-25">
		<h3><a href="question.jsp?id=<strapi:publicHealthQuestionsID />"><strapi:publicHealthQuestionsTitle /></a></h3>
		<util:markdown2html><strapi:publicHealthQuestionsDescription/></util:markdown2html>
		<br>
		Application Deadline: <strapi:publicHealthQuestionsCloseDate/>
		<br>
		Contract Amount: <fmt:formatNumber type="currency"><strapi:publicHealthQuestionsContractAmount/></fmt:formatNumber>
	</div>
</strapi:publicHealthQuestions>