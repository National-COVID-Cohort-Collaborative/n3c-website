<div class="content-about plugin-content" id="content-stats">
	<div class="row counts"
		style="display: flex; margin-top: 0px; padding: 10px; padding-bottom: 30px; flex-wrap: wrap; border: 2px solid #bccfd6; background: #f1f4f5; margin-left: 0px; margin-right: 0px; text-align: center;">
		<div class="row" style="width: 100%; overflow: hidden; font-size: 18px;">
			<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
				<h2 style="padding-top: 15px;">
					<span id="dtas">0</span>
				</h2>

				<p style="font-style: italic;">
					<a href="https://ncats.nih.gov/n3c/resources/data-contribution/data-transfer-agreement-signatories" style="color: #142b52; font-weight: 400;" target="_blank">Executed DTAs <i
						aria-hidden="true" class="fa fa-external-link" style="color: #142b52; font-weight: 400; font-size: 18px;">&nbsp;</i></a>
				</p>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
				<h2 style="padding-top: 15px;">
					<span id="duas">0</span>
				</h2>

				<p style="font-style: italic;">
					<a href="/duas" style="color: #142b52; font-weight: 400;">Executed DUAs <i aria-hidden="true" class="fa fa-external-link" style="color: #142b52; font-weight: 400; font-size: 18px;">&nbsp;</i></a>
				</p>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
				<h2 style="padding-top: 15px;">
					<span id="proj">0</span>
				</h2>

				<p style="font-style: italic;">
					<a href="/projects" style="color: #142b52; font-weight: 400;">Projects <i aria-hidden="true" class="fa fa-external-link" style="color: #142b52; font-weight: 400; font-size: 18px;">&nbsp;</i></a>
				</p>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
				<h2 style="padding-top: 15px;">
					<span id="dt">0</span>
				</h2>

				<p style="font-style: italic;">
					<a href="/domain-teams" style="color: #142b52; font-weight: 400;">Domain Teams <i aria-hidden="true" class="fa fa-external-link" style="color: #142b52; font-weight: 400; font-size: 18px;">&nbsp;</i></a>
				</p>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="/resources/countUp.min.js?v=1.9.3"></script>
<script>
	$.getJSON("https://labs.cd2h.org/n3c_dashboard/embedded_people_metrics.jsp", function(json){
		var data = $.parseJSON(JSON.stringify(json));

		$('#duas').text(data['number_duas']); 
		$('#dtas').text(data['dtas']);
		$('#proj').text(data['projects']); 
		$('#dt').text(data['domain_teams']); 

		var dua_count = new CountUp('duas', 0 ,parseInt(data['number_duas']), 0, 4);
		dua_count.start();

		var dta_count = new CountUp('dtas', 0 ,parseInt(data['dtas']), 0, 4);
		dta_count.start();

		var proj_count = new CountUp('proj', 0 ,parseInt(data['projects']), 0, 4);
		proj_count.start();

		var dt_count = new CountUp('dt', 0 ,parseInt(data['domain_teams']), 0, 4);
		dt_count.start();

	});


</script>
