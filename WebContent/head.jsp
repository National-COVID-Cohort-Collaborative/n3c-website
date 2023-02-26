    <head>
        <title>n3c-website</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
	
        <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
         <!-- bootstrap CSS -->
		<link href="/n3c-website/resources/bootstrap/css/bootstrap.css" rel="stylesheet" >
        <link rel="stylesheet" id='font-awesome' href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="/n3c-dashboard-admin/resources/DataTables/css/jquery.dataTables.min.css">
        <script type="text/javascript" charset="utf8" src="/n3c-dashboard-admin/resources/DataTables/js/jquery.dataTables.min.js"></script>
        <style type="text/css" media="all">
        	@import "/n3c-dashboard-admin/resources/n3c_login_style.css";
        	@import "/n3c-dashboard-admin/resources/main_style.css";
        </style>
        
        <!-- bootstrap Latest compiled JavaScript -->
		<script type='text/javascript' src='/n3c-website/resources/bootstrap/js/bootstrap.bundle.min.js '></script>
	
        <style type="text/css">
        table.dataTable thead .sorting_asc {
            background-image: none !important;
        }
        </style>
    </head>
<style>

/* -------------- N3C Style Overrides ---------------------  */
.large-icons i{
	font-size: 2.8rem;
}

.btn-primary, .btn-primary:visited{
	color: #007bff;
	background-color: white;
    border-color: #007bff;
}

.btn-primary:hover {
    color: white !important;
    background-color: #007bff;
    border-color: #007bff;
}

.btn-primary:active {
	color: white !important;
    background-color: #007bff !important;
    border-color: #007bff !important;
    box-shadow:none !important;
}

.btn-primary:not(:disabled):not(.disabled):active, 
.btn-primary:not(:disabled):not(.disabled).active, 
.show > .btn-primary.dropdown-toggle {
    color: white;
    background-color: #007bff;
    border-color: #007bff;
}

.heading-text{
	font-weight: 400;
}


/* -------------- Front page style ---------------------  */


/* cards ********************************************************/

.hover-card{
	cursor: pointer;
}

.hover-card:hover{
	transform: scale(1.01);
	box-shadow: 6px 7px 29px -2px rgba(197,222,255,1);
	-webkit-box-shadow: 6px 7px 29px -2px rgba(197,222,255,1);
	-moz-box-shadow: 6px 7px 29px -2px rgba(197,222,255,1);
}

.hover-card_noshadow {
	cursor: pointer;
	height: 100%;
}

.hover-card_noshadow:hover{
	transform: scale(1.01);
}

.card-link{
	flex-grow:1;
}

.card-link .col{
	margin-top: auto;
	text-align: center;
}

.card-body-links{
	display: flex;
	flex-direction: column;
}

.nav-card{
	width: 100%;
	color: #007bff;
	background: #edf6ff;
	border: none;
}

/* dashboard heading section *****************************************/
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

.dashboard-heading{
	color: white;
}

.dashboard-section{
	margin-bottom: 100px;
	margin-top: 100px;
}

/* hero carousel ****************************************************/
.carousel-indicators{
	width: fit-content;
    margin: auto;
    bottom: 10px;
}
#hero_carousel{
	margin-bottom: 20px;
}

#hero_carousel .carousel-caption {
    position: absolute;
    right: 15%;
    top: 20px;
    left: 20px;
    z-index: 10;
    color: white;
    text-align: left;
    max-width: 750px;
}

/* hero carousel dynamic adjustment *******************/
@media (min-width: 1179px) and (max-width: 1350px){
	.carousel-caption h1{
		font-size: 2.3rem;
	}
	.carousel-caption h2{
		font-size: 1.8rem;
	}
	.carousel-caption .btn{
		padding: 5px 10px;
    	font-size: 1rem;
	}
	
}

@media (min-width: 913px) and (max-width: 1179px){
	.carousel-caption h1{
		font-size: 1.8rem;
	}
	.carousel-caption h2{
		font-size: 1.3rem;
	}
	.carousel-caption .btn{
		padding: 5px 10px;
    	font-size: 1rem;
	}
	
}

@media (min-width: 700px) and (max-width: 913px){
	.carousel-caption h1{
		font-size: 1.2rem;
	}
	.carousel-caption h2, 
	.carousel-caption hr{
		display:none;
	}
	.carousel-caption .btn{
		padding: 5px 10px;
    	font-size: 1rem;
	}
	
}

@media (max-width: 700px){
	#hero_carousel .carousel-caption{
		padding:0px;
		width: 100%;
		padding-right: 40px;
	}
	#hero_carousel .carousel-caption h1{
		text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
	}
	#hero_carousel .btn:hover{
		text-shadow:none
	}
	#hero_carousel img{
		min-height: 150px;
	}
	#hero_carousel .carousel-indicators{
		bottom: 0px;
	}
	.carousel-caption h1{
		font-size: 1.2rem;
	}
	.carousel-caption h2, 
	.carousel-caption hr,
	.carousel-caption br{
		display:none;
	}
	.carousel-caption .btn{
		padding: 5px 10px;
    	font-size: .7rem;
	}
	
}


.slick-dots li button:before{
	font-size: 20px;
	font-family: 'Font Awesome 5 free';
	content: '\f068';
	font-weight: 900;
}

.card-section-heading{
	text-align: center;
	margin-bottom: 20px;
}

.slick-track{
	padding-bottom: 18px;
}

.slick-dots{
	bottom: -10px;
}


/* general elements  ****************************************************/
#dash_nav .col{
	padding-left: 3px;
	padding-right: 3px;
}

</style>
