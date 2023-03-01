<%@ include file="_include.jsp"%>
<html>
<style>

.carousel-indicators li {
    width: 10px;
    height: 10px;
    border-radius: 100%;
}
.carousel-indicators {
	color: #000;
	background-color: #000;
    bottom: -150px;
}
.carousel-control-prev-icon {
	color: #000;
	background-color: #000;
}

</style>
<jsp:include page="head.jsp" />
<body>
	<div class="container-fluid">
		<jsp:include page="header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-md-6 mx-auto">
				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<jsp:include page="files/image.jsp">
								<jsp:param value="370" name="id" />
								<jsp:param value="medium" name="format" />
								<jsp:param value="d-block w-100" name="clss" />
							</jsp:include>
						</div>
						<div class="carousel-item">
							<jsp:include page="files/image.jsp">
								<jsp:param value="369" name="id" />
								<jsp:param value="medium" name="format" />
								<jsp:param value="d-block w-100" name="clss" />
							</jsp:include>
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
					</button>
				</div>
			</div>
		</div>

		<div class="row flex-nowrap">
			<div class="col-xs-4">
				<h3>hive</h3>
			</div>
			<div class="col">
				<jsp:include page="blocks/ehr_stats.jsp" />
				<jsp:include page="blocks/admin_stats.jsp" />
			</div>
		</div>
		<div class="row flex-nowrap">
			<div class="col-xs-12">
				<c:import url="http://localhost:8080/n3c-dashboard/external/spotlight.jsp"/>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>