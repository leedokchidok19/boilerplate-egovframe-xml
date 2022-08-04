<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Basic Bar</title>

	<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/echarts.min.js"></script>

	<style type="text/css">
		.container {
			height: 100vh;
		}
		#container {
			height: 100%;
		}
	</style>

</head>
<body>

	<section class="container">

		<!-- Prepare a DOM with a defined width and height for ECharts -->
		<div id="container"></div>

	</section>

	<script type="text/javascript">

		var dom = document.getElementById('container');
		var myChart = echarts.init(dom, null, {
			renderer: 'canvas',
			useDirtyRect: false
		});

		var app = {};

		var option;
	
		option = {
			xAxis: {
				type: 'category',
				data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
			},
			yAxis: {
				type: 'value'
			},
			series: [
						{
							data: [120, 200, 150, 80, 70, 110, 130],
							type: 'bar'
						}
			]
		};
	
		if (option && typeof option === 'object') {
			myChart.setOption(option);
		}
	
		window.addEventListener('resize', myChart.resize);

	</script>

</body>
</html>