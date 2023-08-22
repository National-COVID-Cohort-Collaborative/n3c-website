<%@ include file="../_include.jsp"%>

<div class="row main-block shadow">
	<div class="col-8">
		<strapi:landingPages ID="1">
			<util:markdown2html><strapi:landingPagesResearchers/></util:markdown2html>
		</strapi:landingPages>
		<div class="row flex-wrap">
			<div class="col=6 center">
				<a href="for-researchers/" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Get Started with N3C</a>
			</div>
			<div class="col=6 center">
				<a href="enclave/" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Enclave Introduction</a>
			</div>
		</div>
	</div>
	<div class="col-4">
		<div class="row flex-nowrap">
			<div class="col=6 center">
				<jsp:include page="../files/image.jsp">
					<jsp:param name="id" value="704" />
					<jsp:param name="format" value="100px" />
				</jsp:include>
				<p><a href="faq">FAQs</a></p>
			</div>
			<div class="col=6 center">
				<jsp:include page="../files/image.jsp">
					<jsp:param name="id" value="706" />
					<jsp:param name="format" value="100px" />
				</jsp:include>
				<p><a href="support">Support</a></p>
			</div>
		</div>
		<div class="row flex-nowrap">
			<div class="col=6 center">
				<jsp:include page="../files/image.jsp">
					<jsp:param name="id" value="707" />
					<jsp:param name="format" value="100px" />
				</jsp:include>
				<p><a href="training">Training</a></p>
			</div>
			<div class="col=6 center">
				<jsp:include page="../files/image.jsp">
					<jsp:param name="id" value="692" />
					<jsp:param name="format" value="100px" />
				</jsp:include>
				<p><a href="for-institutions">More</a></p>
			</div>
		</div>
	</div>
</div>
