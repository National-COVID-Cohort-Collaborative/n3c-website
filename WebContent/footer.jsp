<%@ include file="_include.jsp"%>
<style>
.footer-block {
	color: #ffffff;
	background-color: #3e6a7b;
	padding-bottom: 10px;
}

.footer-block-centered {
	text-align: center;
	color: #ffffff;
	background-color: #3e6a7b;
	padding-bottom: 10px;
}

.footer-social {
	color: #ffffff;
	background-color: #142b52;
	padding-bottom: 10px;
}

.footer-hr {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #ffff;
}



</style>

<div class="container-fluid">
	<strapi:footers ID="1">
		<div class="row footer-block">
			<div class="col-xs-12 col-md-3">
				<strapi:files ID="51">
					<img alt="" src="http://dora.info-science.uiowa.edu:1337<strapi:filesUrl/>" style="padding:20px; max-width:250px; margin:auto; align-self:flex-start;">
				</strapi:files>
			</div>
			<div class="col-xs-12 col-md-9">
				<util:markdown2html><strapi:footersGrantCite /></util:markdown2html>
			</div>
			<div class="col col-12 p-0">
				<hr class="footer-hr">
			</div>
		</div>
		<div class="row footer-block-centered">
			<util:markdown2html><strapi:footersCredits /></util:markdown2html>
			<div class="col col-12 p-0">
				<hr class="footer-hr">
			</div>
		</div>
		<div class="row footer-block">
			<util:markdown2html><strapi:footersSignup /></util:markdown2html>
		</div>
		<div class="row footer-social">
			<util:markdown2html><strapi:footersSocial /></util:markdown2html>
			<ul class="list-inline">
				<li><a href="mailto:cd2h@ohsu.edu"> <i class="fa fa-envelope" aria-hidden="true"></i></a></li>
				<li><a href="https://twitter.com/data2health?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"> <i class="fab fa-twitter-square"></i></a></li>
				<li><a href="https://join.slack.com/t/cd2h/signup"> <i class="fab fa-slack"></i></a></li>
				<li><a href="https://github.com/data2health"><i class="fab fa-github-square"></i></a></li>
			</ul>

		</diV>
	</strapi:footers>
</div>
