<%@ include file="../_include.jsp"%>

	<jsp:include page="../files/image.jsp">
		<jsp:param name="id" value="710" />
		<jsp:param name="format" value="100%" />
	</jsp:include>
	<div class="main-block center">
		<h2>Domain Teams</h2>
		<strapi:landingPages ID="1">
			<div class="row domain-team-slick slick-test">
				<strapi:foreachLandingPagesDomainTeamsLinks sortCriteria="domain_team_order" var="iterator">
					<strapi:landingPagesDomainTeamsLinks>
						<div class="col-12 col-md-6 col-lg-4 d-flex">
							<div class="card hover-card_noshadow mb-2">
								<div class="card-body card-body-links">
									<strapi:domainTeams ID="${tag_landingPagesDomainTeamsLinks.domainTeamId}">
										<h3><strapi:domainTeamsName /></h3>
										<util:markdown2html><strapi:domainTeamsSummary/></util:markdown2html>
									</strapi:domainTeams>
								</div>
							</div>
						</div>
					</strapi:landingPagesDomainTeamsLinks>
				</strapi:foreachLandingPagesDomainTeamsLinks>
			</div>
		</strapi:landingPages>
		<p>
			<a href="domain-teams/">View All Domain Teams</a>
	</div>

<script>

// close all popovers when any carousel is changed
$(".slick-test").on("beforeChange", function (){
	$('.popover').popover('hide')
})

$(document).ready(function(){	
	
	$('.domain-team-slick').slick({
		arrows: false,
		dots: true,
		draggable: true,
		slidesToShow: 3,
		infinite: false,
		slidesToScroll: 1,
		centerMode: false,
		centerPadding: '40px',
		autoplay: false,
		responsive: [
		    {
		      breakpoint: 1200,
		      settings: {
		        arrows: false,
		        centerMode: false,
		        centerPadding: '40px',
		        slidesToShow: 2
		      }
		    },
		    {
		      breakpoint: 700,
		      settings: {
		        arrows: false,
		        centerMode: true,
		        centerPadding: '40px',
		        slidesToShow: 1
		      }
		    }
		  ]
	});
	
});

function adjust_domain_team_card_height(slick){
	//slick cards resize so they are the same height as largest (need to repeate for each new carousel)
	//Get cards
	var cards = $('.' + slick + ' .card');
	var maxHeight = 200;

	// Set ALL card bodies to this height
	console.log(maxHeight);
	for (var i = 0; i < cards.length; i++) {
  		$(cards[i]).height(maxHeight);
	}
}

$(window).on("load", function() {
	adjust_domain_team_card_height('domain-team-slick');
});
</script>