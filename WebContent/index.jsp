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
.dashboard_main{
	background: rgba(100,42,107,1);
	/* add other backgrounds here */
	background: linear-gradient(to top,rgba(255,255,255,1) 7%,rgba(255,255,255,0) 99%), linear-gradient(to right,#08354bff 0%, #0b4a69ff 47%, #0a405a8c 100%);
    margin-top: 20px;
    padding-bottom: 50px;
    padding-top: 20px;
    padding-right: 15px;
    padding-left: 15px;
}
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

		<div class="dashboard_main row flex-nowrap">
			<div class="col-xs-4">
<jsp:include page="files/image.jsp">
	<jsp:param name="id" value="371" />
	<jsp:param name="format" value="small" />
</jsp:include>
			</div>
			<div class="col">
				<jsp:include page="blocks/ehr_stats.jsp" />
				<jsp:include page="blocks/admin_stats.jsp" />
			</div>
		</div>
		<div class="row flex-nowrap">
			<div class="col-12">
				<jsp:include page="dashboard/spotlight.jsp" />
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>