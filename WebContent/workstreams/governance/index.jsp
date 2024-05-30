<%@ include file="../../_include.jsp"%>
<html>
<jsp:include page="../../head.jsp">
	<jsp:param name="page" value="Workstream - Data Partnership and Governance"/>
</jsp:include>
<body>
	<div class="container-fluid">
		<jsp:include page="../../header.jsp" />
		<div class="row flex-nowrap">
			<div class="main-block">
				<strapi:workstreamInstances ID="1">
					<h1><strapi:workstreamInstancesHeader/></h1>
					
					<h2><strapi:workstreamInstancesMissionHeader/></h2>
					<util:markdown2html><strapi:workstreamInstancesMissionBlock/></util:markdown2html>
					
					<div class="center">
						<a href="https://n3c-info.zoom.us/meeting/register/tJckdO-pqTksHdydW7gBVTm-14MOw4WMSg6J#/registration" class="btn btn-primary btn-n3c active">Register for Friday Meetings</a>
						<p>Fridays 7am PT/10am ET</p>
					</div>
					
					<%@ include file="../common/connect.jsp" %>
					
					<%@ include file="../common/nav.jsp" %>
					
					<%@ include file="table.html" %>

					<%@ include file="../common/leadership.jsp" %>
					
				</strapi:workstreamInstances>
			</div>
		</div>
		<jsp:include page="../../footer.jsp" />
	</div>
</body>
</html>