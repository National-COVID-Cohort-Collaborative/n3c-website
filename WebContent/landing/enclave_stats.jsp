<%@ include file="../_include.jsp"%>

<div class="row flex-nowrap">
	<div class="col-4">
		<jsp:include page="../files/image.jsp">
			<jsp:param name="id" value="371" />
			<jsp:param name="format" value="90%" />
		</jsp:include>
	</div>
	<div class="col-8">
		<jsp:include page="../blocks/ehr_stats.jsp" />
		<jsp:include page="../blocks/admin_stats.jsp" />
	</div>
</div>
