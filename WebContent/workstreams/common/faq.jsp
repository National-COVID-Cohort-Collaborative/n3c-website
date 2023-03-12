
<h2><strapi:workstreamInstancesFaqHeader /></h2>
<div class="accordion" id="faqAccordian">
	<strapi:foreachWorkstreamInstancesFaqsLinks var="faqs" sortCriteria="faq_order">
		<strapi:workstreamInstancesFaqsLinks>
			<jsp:include page="../../faqs/turndown.jsp">
				<jsp:param value="${tag_workstreamInstancesFaqsLinks.faqId}" name="id" />
				<jsp:param value="${Double.valueOf(tag_workstreamInstancesFaqsLinks.faqOrder).intValue()}" name="pos" />
			</jsp:include>
		</strapi:workstreamInstancesFaqsLinks>
	</strapi:foreachWorkstreamInstancesFaqsLinks>
</div>
