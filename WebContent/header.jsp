<style>

.navbar {
	color: #ffffff;
	background-color: #142b52;
	padding-bottom: 10px;
}

.navbar a {
    color: #fff;
}

.navbar button {
    color: #fff;
}

/*---------- HHS, NIH, NCATS branding bar  -------*/

.l-ribbon-wrapper {
  overflow: hidden;
  width: 100%;
  background-color: #20558a;
  display: block;
  height: 30px;
  padding-left: 3em;
  padding-right: 3em;
}

.l-ribbon {
    font: 0.9em/1.4em "Droid Sans",Trebuchet MS,Arial,Helvetica,sans-serif;
    padding: 0;
    margin: 0;
    list-style-image: none;
    list-style-type: none;
    margin-left: auto;
    margin-right: auto;
    overflow: hidden;
    margin: 0 auto;
    min-height: 100%;
    line-height: 1.5em;
    display: block;
}

.l-ribbon li a {
    display: block;
    color: #fff;
    float: left;
    padding-top: 6px;
    min-height: 30px;
}

.l-ribbon li span {
    display: block;
    color: #fff;
    float: left;
    padding-top: 6px;
    min-height: 30px;
}

.l-ribbon li .ribbon-right {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=30);
    opacity: 0.3;
    background-image: url(http://dora.info-science.uiowa.edu:1337/uploads/nih_icon_list_9a32809d25.png);
    background-size: 189px 400px;
    background-position: -52px -126px;
    height: 30px;
    width: 20px;
    float: left;
    margin-left: 10px;
}

.ribbon-hhs {
    background-image: url(http://dora.info-science.uiowa.edu:1337/uploads/nih_icon_list_9a32809d25.png);
    background-size: 189px 400px;
    background-position: 0 -126px;
    height: 27px;
    width: 22px;
    float: left;
    margin-right:.5em;
}

.ribbon-nih {
    background-image: url(http://dora.info-science.uiowa.edu:1337/uploads/nih_icon_900ef05269.png );
    background-size: 20px;
    background-repeat: no-repeat;
    height: 20px;
    width: 20px;
    float:left;
    margin-right:.5em;
    margin-top: 5px;
}

.nav-actions-container {
	float: right;
}

</style>

<div class="l-ribbon-wrapper">
  <ul class="l-ribbon">
    <li><span class="ribbon-hhs"></span><a href="https://www.hhs.gov">U.S. Department of Health &amp; Human Services</a><span class="ribbon-right"></span></li>
    <li><span class="ribbon-nih"></span><a href="https://www.nih.gov/">National Institutes of Health</a><span class="ribbon-right"></span></li>
    <li><span class="ribbon-nih"></span><a href="https://ncats.nih.gov/">National Center for Advancing Translational Sciences</a><span class="ribbon-right"></span></li>
    
    <li class="nav-actions-container">
        <a href="https://unite.nih.gov/">Enclave Sign In</a>
        <span>&nbsp;|&nbsp;</span>
        <a href="/account-instructions">Create Account</a>
        <span>&nbsp;|&nbsp;</span>
        <a href="https://labs.cd2h.org/registration/dologin.jsp">Profile</a>
    </li>
  </ul>
</div>

<nav class="navbar navbar-expand-lg">
	<a class="navbar-brand" href="#"><img src="/n3c-dashboard-admin/images/n3c_logo.png" height=50px> N3C</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>
