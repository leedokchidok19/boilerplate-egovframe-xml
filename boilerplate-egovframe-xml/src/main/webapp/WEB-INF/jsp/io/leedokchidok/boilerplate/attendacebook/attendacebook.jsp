<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출석부</title>
	<link	href="/util/css/fontawesome-free-6.1.2-web/css/all.min.css"	rel="stylesheet"	type="text/css" >
	<link	href="/util/css/bootstrap-5.2.1-dist/css/bootstrap.min.css"	rel="stylesheet"	crossorigin="anonymous">
	<link	href="/util/css/bootstrap-5.2.1-dist/icons-1.9.1/font/bootstrap-icons.css"	rel="stylesheet"	crossorigin="anonymous">
	<script	src="/util/css/bootstrap-5.2.1-dist/js/bootstrap.bundle.min.js"	crossorigin="anonymous"	defer ></script>
</head>
<body>

<!--	Container	-->
<div class="container">

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3 sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="#">
								<span data-feather="home" class="align-text-bottom">인원추가</span>
							</a>
							<form class="attendacebook__form" action="#" onsubmit="return false">
									<input type="text" id="insertUser" name="abName" placeholder="이름을 입력 해주세요."/>
							</form>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="file" class="align-text-bottom"></span>
								Orders
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="shopping-cart" class="align-text-bottom"></span>
								Products
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="users" class="align-text-bottom"></span>
								Customers
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="bar-chart-2" class="align-text-bottom"></span>
								Reports
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="layers" class="align-text-bottom"></span>
								Integrations
							</a>
						</li>
					</ul>
		
					<h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
						<span>Saved reports</span>
						<a class="link-secondary" href="#" aria-label="Add a new report">
							<span data-feather="plus-circle" class="align-text-bottom"></span>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="file-text" class="align-text-bottom"></span>
								Current month
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="file-text" class="align-text-bottom"></span>
								Last quarter
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="file-text" class="align-text-bottom"></span>
								Social engagement
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">
								<span data-feather="file-text" class="align-text-bottom"></span>
								Year-end sale
							</a>
						</li>
					</ul>
				</div>
			</nav>
	
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Dashboard</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
					 <div class="btn-group me-2">
						<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
						<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
					 </div>
					 <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
						<span data-feather="calendar" class="align-text-bottom"></span>
						This week
					 </button>
					</div>
				</div>

				<!--	Chart	-->
				<section>

					<div id="chartAttendBook" style="height:50vh;"></div>

				</section>
				<!--	Chart	-->

				<!--	Attendance book List	-->
				<section class="h-25 overflow-auto">
					<h2>Attendance book(출석부 인원 목록)</h2>
					<div class="table-responsive">
						<table class="table table-striped table-sm">
							<thead id="attendanceBookTh">
								<tr>
									<th scope="col">번호</th>
									<th scope="col">이름</th>
									<th scope="col">출석 횟수</th>
								</tr>
							</thead>
							<tbody id="attendanceBookTb">
								<!--출석인원 목록-->
							</tbody>
						</table>
					</div>
				</section>
				<!--	Attendance book List	-->
		
			</main>
	
		</div>
	</div>

</div>
<!--	Container	-->

	<script type="text/javascript">

		const userName = document.querySelector('#insertUser');
		userName.addEventListener('keypress', e	=> {
			e.preventDefault();
			console.log(e.charCode);
			const keyCode = e.charCode;
			if(keyCode == 13) {
				const form = document.querySelector('.attendacebook__form');
				form.action = '/insertAttendaceBookMember.do';
				form.method = 'GET';
				form.submit();
			}
		});

	</script>
<!--
	<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/echarts.min.js"></script>
-->
	<script type="text/javascript" src="/util/chart/apacheEchart/echarts.min.js"></script>
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
			const dom = document.getElementById('chartAttendBook');
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
				tags	+=	'<tr>'
						+		'<td>'+(i+1)+'</td>'
						+		'<td>'+name+'</td>'
						+		'<td>'+cnt+'</td>'
						+	'</tr>';
			}

			let attendacebookList	=	document.querySelector('#attendanceBookTb');
			attendacebookList.insertAdjacentHTML('afterbegin', tags);
		}//memberList

		function init() {
			initChart(nmList, tCnt);
			memberList(nmList, tCnt);
		}//init

		init();

	</script>

</body>
</html>