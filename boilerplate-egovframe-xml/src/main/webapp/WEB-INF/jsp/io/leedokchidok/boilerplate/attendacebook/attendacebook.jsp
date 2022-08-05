<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출석부</title>

	<script type="text/javascript" src="" defer></script>

	<style type="text/css">
		.chart__view {
			margin: 0 auto;
			width: 50vw;
			height: 50vh;
		}
		#container {
			height: 100%;
		}
	</style>

</head>
<body>

<h1>Hi</h1>

<section>

	<div class="user">
		<h3>인원 추가</h3>
		<form action="#">
			<input type="text" id="insertUser" name="abName" placeholder="이름을 입력 해주세요."/>
		</form>
	</div>

</section>

<section class="chart__view">

	<div id="container"></div>

</section>

	<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/echarts.min.js"></script>
	<script type="text/javascript">

			const nameList = `${nameList}`;
			console.log('nameList: '+nameList);
			console.log(typeof nameList);

			const subMonthOne	= `${subMonthOne}`;
			const subMonthTwo	= `${subMonthTwo}`;
			const totCnt		= `${totCnt}`;

			//const abkList = '${attendaceBookList}';
			//let jsonList = abkList.replace(/[\[\]]/gi, '');
			//console.log(jsonList);
			//const attendaceBookList = JSON.stringify(jsonList);
			let yAxisData	=	nameList.replace(/[\[\]]/gi, '').split(',');
			let seriessOne	=	subMonthOne.replace(/[\[\]]/gi, '').split(',');
			let seriessTwo	=	subMonthTwo.replace(/[\[\]]/gi, '').split(',');
			let seriessThr	=	totCnt.replace(/[\[\]]/gi, '').split(',');
		/*
			attendaceBookList.forEach( element => {
				yAxisData.push(element.abName);
			})
			;
		*/
			//console.log(yAxisData);
			
			//console.log(attendaceBookList);
			const dom = document.getElementById('container');
			let myChart = echarts.init(dom, null, {
				renderer: 'canvas',
				useDirtyRect: false
			});
			let app = {};
			
			let option;
	
			option = {
				tooltip: {
					trigger: 'axis',
					axisPointer: {
						// Use axis to trigger tooltip
						type: 'shadow' // 'shadow' as default; can also be 'line' or 'shadow'
					}
				},
				legend: {}, //범례
				grid: {
					left: '3%',
					right: '4%',
					bottom: '3%',
					containLabel: true
				},
				xAxis: {
					type: 'value'
				},
				yAxis: {
					type: 'category',
					data: yAxisData
				},
				series: [
					{
						name: '7월',
						type: 'bar',
						stack: 'total',
						label: {
							show: true
						},
						emphasis: {
							focus: 'series'
						},
						data: seriessOne
					},
					{
						name: '8월',
						type: 'bar',
						stack: 'total',
						label: {
							show: true
						},
						emphasis: {
							focus: 'series'
						},
						data: seriessTwo
					},
					{
						name: '누적 출석',
						type: 'bar',
						//stack: 'total',
						label: {
							show: true
						},
						emphasis: {
							focus: 'series'
						},
						data: seriessThr
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