<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp" />
<style type="text/css">h1 {
		text-align:center;
		color: #376076;
		margin-bottom: 12px;
		font-size: 40px;
	}
	h2 {
		text-align:center;
		color: #376076;
	}
	p {
		font-size: 16px;
		line-height: 29px;
	}
	#introText {
		margin: 12px auto;
	}

	.projects .row{
		justify-content:center;
		display:flex;
	}

	#table1 thead th{
		text-align:center;
	}

	.dataTables_filter{
		
		width:100%;
		text-align:center !important;
		margin-top: 40px;
		margin-bottom: 20px;
	}

	.dataTables_length {
		display: none;
	}

	#table1_filter input{
		width:180px;

	}
	th {
		display: none;
	}
	.projectDesc {
		font-size: 16px;
	}
	.dt-searchPanes .label{
		color:#333;
	}
	div.dt-searchPanes {
		display: none !important;
		height: 1px;
	}
	.pane {
		display: none;
	}

	.complete{
    	display:none;
	}	

	.morelink{
		border: none;
    	background-color: inherit;
    	color: #1570ba;
    	outline: none;
	}

	.morelink:hover,
	.morelink:focus{
		border: none;
    	background-color: inherit;
    	color: #1570ba;
    	outline: none;
	}
</style>
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:projects ID="1">
					<h1>
						<strapi:projectsHeader />
					</h1>
					<util:markdown2html>
						<strapi:projectsBlock1 />
					</util:markdown2html>
				</strapi:projects>
<div class="projects">
				<div class="row">
					<div class="col-xs-12 col-md-6">
						<div class="tableSection" id="table">&nbsp;</div>
					</div>
				</div>
			</div>
			<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css" rel="stylesheet" type="text/css" /><script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
<link href="https://cdn.datatables.net/plug-ins/preview/searchPane/dataTables.searchPane.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf8" src="https:////cdn.datatables.net/plug-ins/preview/searchPane/dataTables.searchPane.min.js"></script>
<script>
$.getJSON("https://labs.cd2h.org/n3c_dashboard/embedded_project_roster3.jsp", function(data){
		
	var json = $.parseJSON(JSON.stringify(data));

	var col = [];

	for (i in json['headers']){
		col.push(json['headers'][i]['label']);
	}


	var table = document.createElement("table");
	table.className = 'table table-hover';
	table.style.width = '100%';
	table.id="table1";

	var header= table.createTHead();
	var header_row = header.insertRow(0); 

	for (i in col) {
		var th = document.createElement("th");
		th.innerHTML = '<span style="color: green; font-weight:600; font-size:12px;">' + col[i].toString() + '</span>';
		header_row.appendChild(th);
	}

	var divContainer = document.getElementById("table");
	divContainer.innerHTML = "";
	divContainer.appendChild(table);

	var data = json['rows'];

	$('#table1').DataTable( {
    	data: data,
    	paging: true,
    	ordering: false,
    	columns: [
        	{ title: '<span style="color:#333; font-weight:400; font-size:24px;"><\/span>', 
        		data: 'title',
        		render: function ( data, type, row ) {
        			var title = row.title;
        			var desc = row.description;
        			var contact = row.pi_name;
        			var institution = row.accessing_institution;
        			var project = row.project_type;
       			    var uid = row.uid;

        			var showChar = 400;
        			var content = JSON.stringify(desc);
        			
                 	if(content.length > showChar) {
                        var c = content.substr(1, showChar);
            			var h = content.substr(showChar +1, content.length - showChar -2);

                        var combo = '<p> <h3 style="color:#376076";>' + title + '<\/h3>' + '<div class="projectDesc"><strong>Lead Investigator:<\/strong> ' + contact + ' <br> <strong>Accessing Institution:<\/strong> ' + institution + ' <br> <strong>Project ID:<\/strong> ' + uid + '<br><br>'+ '<\/p> <div class="projectDesc" style="letter-spacing:-10px;"> <span class="teaser">'+ c + '<\/span> <span class="complete">' + h + '<br><\/span><button class="morelink more"> ...More<\/button><\/div><\/div>';
                        
                        return  combo.toString();
                     }

                    

                    
                    $('#table1').unbind().on('click', '.morelink', function(){
                    	if($(this).hasClass("more")) {
                        	$(this).removeClass("more").text("Less").siblings(".complete").show();
                    	} else {
							$(this).addClass("more").text(" ...More").siblings(".complete").hide();
						}                    	
                    	return false;
                    });
                    

        			var combo = '<p> <h3 style="color:#376076";>' + title + '<\/h3>' + '<div class="projectDesc"><strong>Lead Investigator:<\/strong> ' + contact + ' <br> <strong>Accessing Institution:<\/strong> ' + institution + '<br> <strong>Project ID:<\/strong> ' + uid + '<br><br>' + desc + '<\/div><\/p>';
             		return combo; }
            },
        	{ data: 'description', visible: false},
        	{ data: 'pi_name', visible: false},
        	{ name: 'institution', data: 'accessing_institution', visible:false},
        	{ name: 'status', data: 'workspace_status', visible:false},
        	{ name: 'task', data: 'task_team', visible: false},
        	{ name: 'project_type', data: 'project_type', visible: false}
    	],
    	searchPane: {
    		columns: ['institution:name', 'status:name']
    	},
    	language: {
    		searchPlaceholder: 'Title, Author, Institution...'
		}
	} );


});
</script>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>