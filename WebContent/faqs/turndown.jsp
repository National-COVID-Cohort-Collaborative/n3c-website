<%@ include file="../_include.jsp"%>

<strapi:faqs ID="${param.id}">
	<div class="card">
		<div class="card-header" id="heading${param.pos}">
			<h2 class="mb-0">
				<button class="btn btn-link <c:if test="${param.pos > 1}">collaposed</c:if>" type="button" data-toggle="collapse" data-target="#collapse${param.pos}" <c:choose><c:when test="${param.pos == 1}">aria-expanded="true"</c:when><c:otherwise>aria-expanded="false"</c:otherwise></c:choose> aria-controls="collapse${param.pos}">
					<util:markdown2html><strapi:faqsQuestion /></util:markdown2html>
				</button>
			</h2>
		</div>

		<div id="collapse${param.pos}" class="collapse <c:if test="${param.pos == 1}">show</c:if>" aria-labelledby="heading${param.pos}" data-parent="#faqAccordian">
			<div class="card-body">
				<util:markdown2html><strapi:faqsAnswer /></util:markdown2html>
			</div>
		</div>
	</div>
</strapi:faqs>
