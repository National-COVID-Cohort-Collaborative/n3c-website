<div class="row counts" style="display: flex; margin: auto; width: 100%; padding: 10px; flex-wrap: wrap; text-align: center;">
	<div class="row" style="width: 100%; overflow: hidden; font-size: 18px; margin: auto;">
		<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
			<h2 style="padding-top: 15px;">
				<span id="rows_top">0</span>
			</h2>

			<p style="font-style: italic;">Total Rows</p>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
			<h2 style="padding-top: 15px;">
				<span id="obs_top">0</span>
			</h2>

			<p style="font-style: italic;">Clinical Observations</p>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
			<h2 style="padding-top: 15px;">
				<span id="people_top">0</span>
			</h2>

			<p style="font-style: italic;">Persons</p>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-3 abt-count">
			<h2 style="padding-top: 15px;">
				<span id="cases_top">0</span>
			</h2>

			<p style="font-style: italic;">COVID+ Cases</p>
		</div>

	</div>
</div>

<script type="text/javascript" src="/resources/countUp.min.js?v=1.9.3"></script>
<script src="/core/assets/vendor/jquery/jquery.min.js"></script>
<script>

	$.getJSON("https://labs.cd2h.org/n3c_dashboard/embedded_enclave_metrics.jsp", function(json){
		var data = $.parseJSON(JSON.stringify(json));

		$('#rows_top').text(data['total_rows']['value']); 		
		$('#obs_top').text(data['observation_rows']['value']);
		$('#people_top').text(data['person_rows']['value']); 
		$('#cases_top').text(data['covid_positive_patients']['value']); 


		var row_count = new CountUp('rows_top', 0 , data['total_rows']['value'], 1, 4, {suffix: data['total_rows']['unit'] });
		row_count.start();

		var obs_count = new CountUp('obs_top', 0 , data['observation_rows']['value'], 1, 4, {suffix: data['observation_rows']['unit'] });
		obs_count.start();

		var people_count = new CountUp('people_top', 0 , data['person_rows']['value'], 1, 4, {suffix: data['person_rows']['unit'] });
		people_count.start();

		var cases_count = new CountUp('cases_top', 0 , data['covid_positive_patients']['value'], 0, 4, {suffix: data['covid_positive_patients']['unit'] });
		cases_count.start();
});


</script>