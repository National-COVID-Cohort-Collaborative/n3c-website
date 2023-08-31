<%@ include file="_include.jsp"%>
<style>
.footer-block {
	color: #ffffff;
	background-color: #3e6a7b;
	padding-top: 15px;
}

.footer-block a {
	color: yellow;
}

.footer-social {
	color: #ffffff;
	background-color: #142b52;
	padding-top: 10px;
	padding-bottom: 5px;
}

.footer-hr {
	color: #ffffff;
	background-color: #3e6a7b;
	margin-top: 5px;
	border: 0;
	border-top: 1px solid #ffff;
}

.footer-center {
	margin: auto;
	width: 70%;
}

#credits-footer p {
	text-align: center;
}

#social-icons ul {
	padding-top: 20px;
	list-style: none;
}

#social-icons li {
	display: inline;
}
</style>

<div class="container-fluid">
	<strapi:footers ID="1">
		<div class="row footer-block">
			<div class="col-xs-12 col-md-3">
				<strapi:files ID="51">
					<img alt="" src="<util:propertyValue propertyFile="strapi" name="strapi-path"/><strapi:filesUrl/>" style="padding: 20px; max-width: 300px; margin: auto; align-self: flex-start;">
				</strapi:files>
			</div>
			<div class="col-xs-12 col-md-9">
				<util:markdown2html><strapi:footersGrantCite /></util:markdown2html>
			</div>
			<div class="col col-12 p-0">
				<hr class="footer-hr">
			</div>
		</div>
		<div class="row footer-block">
			<div id="credits-footer" class="footer-center">
				<util:markdown2html><strapi:footersCredits /></util:markdown2html>
			</div>
			<div class="col col-12 p-0">
				<hr class="footer-hr">
			</div>
		</div>
		<div class="row footer-block">
			<div class="col-xs-12 col-md-3">
				<util:markdown2html><strapi:footersSignup /></util:markdown2html>
			</div>
		</div>
		<div class="row footer-social">
			<div class="center">
				<ul id="social-icons">
					<li><a href="mailto:cd2h@ohsu.edu"> <i class="fa fa-envelope" aria-hidden="true"></i></a></li>
					<li><a href="https://twitter.com/data2health?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"> <i class="fab fa-twitter-square"></i></a></li>
					<li><a href="https://join.slack.com/t/cd2h/signup"> <i class="fab fa-slack"></i></a></li>
					<li><a href="https://github.com/data2health"><i class="fab fa-github-square"></i></a></li>
				</ul>
			</div>
		</diV>
	</strapi:footers>
</div>
