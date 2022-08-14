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

<section class="attendacebook">

	<div class="attendacebook__user">
		<h3>인원 추가</h3>
		<form class="attendacebook__form" action="#" onsubmit="return false">
			<input type="text" id="insertUser" name="abName" placeholder="이름을 입력 해주세요."/>
		</form>
	</div>

	<div class="attendacebook__list">
		<!--출석인원 목록-->
	</div>

</section>

<section class="chart__view">

	<div id="container"></div>

</section>

	<script type="text/javascript">

		const form = document.querySelector('.attendacebook__form');
		form.action = '/insertAttendaceBookMember.do';
		form.method = 'GET';
		
		const userName = document.querySelector('#insertUser');
		userName.addEventListener('keypress', e  => {
			e.preventDefault();
			console.log(e.charCode);
			const keyCode = e.charCode;
			if(keyCode == 13) form.submit();
		});

	</script>
	<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/echarts.min.js"></script>
	<script type="text/javascript">

		const nameList	=	`${nameList}`;
		const totCnt	=	`${totCnt}`;
	
		let nmList	=	nameList.replace(/[\[\]]/gi, '').split(',');
		let tCnt	=	totCnt.replace(/[\[\]]/gi, '').split(',');

		function initChart(nmList, tCnt) {

			const nameList		=	nmList
			console.log('nameList: '+nameList);
			console.log(typeof nameList);

			const subMonthOne	=	`${subMonthOne}`;
			const subMonthTwo	=	`${subMonthTwo}`;
			const totCnt		=	tCnt;

			//let jsonList = abkList.replace(/[\[\]]/gi, '');
			//console.log(jsonList);
			//const attendaceBookList = JSON.stringify(jsonList);
			let yAxisData	=	nmList;
			let seriessOne	=	subMonthOne.replace(/[\[\]]/gi, '').split(',');
			let seriessTwo	=	subMonthTwo.replace(/[\[\]]/gi, '').split(',');
			let seriessThr	=	totCnt;
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

		}//initChart

		function memberList(nmList, tCnt) {

			//reverse() 배열 순서 역순
			const nameList	=	nmList.reverse();
			const totCnt	=	tCnt.reverse();

			let tags		=	'';
			
			for(let i =0; i < nameList.length; i++) {
				let name	=	nameList[i];
				let cnt		=	totCnt[i];
				tags	+=	'<div >'
						+			name +' : ' + cnt
						+	'</div>';
			}

			let attendacebookList	=	document.querySelector('.attendacebook__list');
			attendacebookList.insertAdjacentHTML('afterend', tags);
		}//memberList

		function init() {
			initChart(nmList, tCnt);
			memberList(nmList, tCnt);
		}//init

		init();

	</script>

</body>
</html>