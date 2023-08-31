<%@ include file="../../_include.jsp"%>
<html>
<jsp:include page="../../head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="../../header.jsp" />
		<div class="row flex-nowrap">
			<div class="main-block">
				<strapi:workstreamInstances ID="4">
					<h1><strapi:workstreamInstancesHeader/></h1>
					
					<h2><strapi:workstreamInstancesMissionHeader/></h2>
					<util:markdown2html><strapi:workstreamInstancesMissionBlock/></util:markdown2html>
					
					<jsp:include page="../../blocks/text_right.jsp">
						<jsp:param value="74" name="id"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
								<jsp:param name="width" value="10"/>
								<jsp:param name="link_format" value="button"/>
					</jsp:include>
					
					<%@ include file="../common/connect.jsp" %>
					
					<%@ include file="../common/nav.jsp" %>
					
					<%@ include file="../common/faq.jsp" %>

					<%@ include file="../common/leadership.jsp" %>
					
				</strapi:workstreamInstances>
			</div>
		</div>
		<jsp:include page="../../footer.jsp" />
	</div>
</body>
</html>