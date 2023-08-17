<%@ include file="../_include.jsp"%>

<div class="row main-block shadow">
	<div class="col-4">
		<jsp:include page="../files/image.jsp">
			<jsp:param name="id" value="697" />
			<jsp:param name="format" value="50%" />
		</jsp:include>
	</div>
	<div class="col-8">
		<strapi:landingPages ID="1">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<strapi:foreachLandingPagesTestimonialsLinks var="iterator">
						<strapi:landingPagesTestimonialsLinks>
							<div class="carousel-item <c:if test='${iterator.isFirst()}'>active</c:if>">
								<strapi:testimonials ID="${tag_landingPagesTestimonialsLinks.testimonialId}">
									<util:markdown2html><strapi:testimonialsQuote/></util:markdown2html>
									<util:markdown2html><strapi:testimonialsAuthor/></util:markdown2html>
								</strapi:testimonials>
							</div>
						</strapi:landingPagesTestimonialsLinks>
					</strapi:foreachLandingPagesTestimonialsLinks>
				</div>
			</div>
		</strapi:landingPages>
	</div>
</div>
