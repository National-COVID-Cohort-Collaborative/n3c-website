<%@ include file="../../_include.jsp"%>
<html>
<jsp:include page="../../head.jsp">
	<jsp:param name="page" value="Workstream - Data Ingestion and Harmonization"/>
</jsp:include>
<body>
	<div class="container-fluid">
		<jsp:include page="../../header.jsp" />
		<div class="row flex-nowrap">
			<div class="main-block">
				<strapi:workstreamInstances ID="3">
					<h1><strapi:workstreamInstancesHeader/></h1>
					
					<div class="row flex-nowrap">
						<div class="col-8">
							<h2><strapi:workstreamInstancesMissionHeader/></h2>
							<util:markdown2html><strapi:workstreamInstancesMissionBlock/></util:markdown2html>
						</div>
						<div class="col-4 block">
							<jsp:include page="../../youtube/video.jsp">
								<jsp:param value="4" name="id" />
								<jsp:param value="false" name="footer" />
							</jsp:include>
						</div>
					</div>
					
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