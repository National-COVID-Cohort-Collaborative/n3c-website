<%@ include file="../_include.jsp"%>

<strapi:faqs ID="${param.id}">
	<br>
	<b><util:markdown2html><strapi:faqsQuestion/></util:markdown2html></b>
	<br>
	<util:markdown2html><strapi:faqsAnswer/></util:markdown2html>
</strapi:faqs>