<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="currTime" class="java.util.Date" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <title>OverWare</title>
  <!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
  <!-- Meta -->
  <meta charset="utf-8">
  <meta name="_csrf" content="${_csrf.token}" />
  <!-- default header name is X-CSRF-TOKEN -->
  <meta name="_csrf_header" content="${_csrf.headerName}"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="description" content="Phoenixcoded">
  <meta name="keywords" content="flat ui, admin , Flat ui, Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
  <meta name="author" content="Phoenixcoded">
  <!-- Favicon icon -->
  <link rel="icon" href="../assets/images/favicon.ico" type="image/x-icon">
  <!-- Google font-->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
  <!-- Required Fremwork -->
  <link rel="stylesheet" type="text/css" href="../bower_components/bootstrap/css/bootstrap.min.css">
  <!-- themify-icons line icon -->
  <link rel="stylesheet" type="text/css" href="../assets/icon/themify-icons/themify-icons.css">
  <!-- ico font -->
  <link rel="stylesheet" type="text/css" href="../assets/icon/icofont/css/icofont.css">
  <!-- Menu-Search css -->
  <link rel="stylesheet" type="text/css" href="../assets/pages/menu-search/css/component.css">
  <!-- calendar -->
  <link rel="stylesheet" type="text/css" href="../assets/pages/dashboard/pgcalendar/calendar.css">
  <!-- sweet alert framework -->
  <link rel="stylesheet" type="text/css" href="../bower_components/sweetalert/dist/sweetalert.css">
  <!-- Style.css -->
  <link rel="stylesheet" type="text/css" href="../assets/pages/clndr-calendar/css/clndr.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
  <link rel="stylesheet" type="text/css" href="../assets/pages/marketing/css/style.css">
  <link rel="stylesheet" type="text/css" href="../assets/pages/dashboard/css/style.css">
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
  <!--color css-->
  <link rel="stylesheet" type="text/css" href="../assets/css/color/color-1.css" id="color" />
  <link rel="stylesheet" type="text/css" href="../assets/css/linearicons.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/simple-line-icons.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/ionicons.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/jquery.mCustomScrollbar.css">
  <link href="../assets/dist/css/datepicker.min.css" rel="stylesheet" type="text/css">
</head>

<body>
  <!-- Pre-loader start -->
  <div class="theme-loader">
    <div class="ball-scale">
      <div></div>
    </div>
  </div>
  <!-- Pre-loader end -->

  <div id="pcoded" class="pcoded">
    <div class="pcoded-overlay-box"></div>
    <div class="pcoded-container navbar-wrapper">
        <jsp:include page='../include/header.jsp' />
      <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
          <!-- left menu start -->
            <jsp:include page='../include/side.jsp' />
          <!-- left menu end -->
          <div class="pcoded-content">
            <div class="pcoded-inner-content">
              <div class="main-body">
                <div class="page-wrapper">
                  <div class="page-header">
                    <div class="page-header-title">
                      <h4>Facebook ${fName}</h4>
                    </div>
                    <div class="page-header-breadcrumb">
                      <ul class="breadcrumb-title">
                        <li class="breadcrumb-item">
                          <a href="../dashBoard/dashBoard_main">
                            <i class="icofont icofont-home"></i>
                          </a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!">마케팅 채널관리</a></li>
                        <li class="breadcrumb-item"><a href="#!">Facebook ${fName}</a></li>
                      </ul>
                    </div>
                  </div>
                   <!-- page-body start -->
                  <div class="page-body">
                    <div class="row">
                      <!-- data setting start -->
                      <div class="col-md-6">
                      </div>
                      <div class="col-md-5">
                        <!-- date picker start -->
                        <div class="row">
                        </div>
                        <!-- date picker end -->
                      </div>
                      <!-- data setting end -->
                      <!-- Morris chart start -->
                      <div class="col-md-12">
                        <div class="card">
                          <div class="card-header">
                            <h5><font style="font-weight: bold; color: black;">
                            	<i class="icofont icofont-chart-line m-r-5"></i>
                            	조회수 데이터
                            	</font>
                            </h5>
                            <c:forEach items="${title}" var="list1" varStatus="status">
                            <font style="color: #9f9f9f; font-size: 13px;">
                            '${list1.sns_content}' 최근 48시간 그래프
                            </font>
                            </c:forEach>
                            <div class="card-header-right">
                              <i class="icofont icofont-rounded-down"></i>
                            </div>
                          </div>
                          <div class="card-block">
                            <!-- <div id="morris-extra-area" style="height:300px;"></div> -->
                            <div id="container" style="height:300px;"></div>
                          </div>
                        </div>
                      </div>
                      <!-- Morris chart end -->
                      <!-- Morris chart start -->
                      <div class="col-md-12">
                        <div class="card">
                          <div class="card-header">
                            <h5>
                            <font style="font-weight: bold; color: black;">
                            	<i class="icofont icofont-chart-line m-r-5"></i>
                            	댓글수 데이터
                            	</font>
                            </h5><c:forEach items="${title}" var="list1" varStatus="status">
                            <font style="color: #9f9f9f; font-size: 13px;">
                            '${list1.sns_content}' 최근 48시간 그래프
                            </font>
                            </c:forEach>
                            <div class="card-header-right">
                              <i class="icofont icofont-rounded-down"></i>
                            </div>
                          </div>
                          <div class="card-block">
                            <!-- <div id="morris-extra-area" style="height:300px;"></div> -->
                            <div id="container2" style="height:300px;"></div>
                          </div>
                        </div>
                      </div>
                      <!-- Morris chart end -->
                      <!-- Morris chart start -->
                      <div class="col-md-12">
                        <div class="card">
                          <div class="card-header">
                            <h5>
                            <font style="font-weight: bold; color: black;">
                            	<i class="icofont icofont-chart-line m-r-5"></i>
                            	좋아요수 데이터
                            	</font>
                            </h5><c:forEach items="${title}" var="list1" varStatus="status">
                            <font style="color: #9f9f9f; font-size: 13px;">
                            '${list1.sns_content}' 최근 48시간 그래프
                            </font>
                            </c:forEach>
                            <div class="card-header-right">
                              <i class="icofont icofont-rounded-down"></i>
                            </div>
                          </div>
                          <div class="card-block">
                            <!-- <div id="morris-extra-area" style="height:300px;"></div> -->
                            <div id="container3" style="height:300px;"></div>
                          </div>
                        </div>
                      </div>
                      <!-- Morris chart end -->
                      <!-- List start -->
                              <div class="col-md-12">
                                <div class="card">
                                  <div class="card-header">
                                    <!-- <h5>facebook CGV</h5> -->
                                    <button class="btn btn-warning alert-excelup f-right" style="margin-left: 8px;margin-bottom: 10px; "><i class="icofont icofont-file-excel"></i>증가데이터</button>
                                    <button class="btn btn-warning alert-excel f-right" style="margin-left: 8px;margin-bottom: 10px; "><i class="icofont icofont-file-excel"></i>전체데이터</button>
                                    <!-- <button class="btn btn-info f-right alert-confirm" onclick = "location.href='http://overware.iptime.org:8080/marketing/f_channel'"><i class="icofont icofont-ui-note"></i>목록으로</button> -->
                                    <button class="btn btn-list f-right alert-confirm" style="margin-left: 8px;margin-bottom: 10px; " onclick = "history.back(-1);"><i class="icofont icofont-ui-note"></i>목록으로</button>
                                  <div class="col-sm-3 input-group input-group-button input-group-inverse p-l-0 p-r-0 m-b-10 f-left btn-select">
                                    <input type='text' class='datepicker-here form-control m-r-10 m-b-10 f-left' data-language='en' id='startdate' style="width: 50px" placeholder="Date"/>
	                              	&nbsp;<font size="3"><b>~</b></font>
	                              	<input type='text' class='datepicker-here form-control f-right p-r-5 p-l-5 m-l-15 m-b-10' data-language='en' id='enddate' style="width: 50px" placeholder=" Date"/>
	                              	<span class="input-group-addon" id="basic-addon1">
	                              		<button id="searchBtn" class="btn btn-inverse"><i class="icofont icofont-search-alt-2"></i></button>
	                              	</span>
	                              </div>
                                  </div>
                                  <div class="card-block table-border-style">
                                    <div class="table-responsive">
                                      <table class="table table-bordered table-sm">
                                        <thead>
                                            <tr align="center">
                                              <th width="3%">NO</th>
                                              <th width="5%">검출일</th>
                                              <th width="3%">총 검출수</th>
                                              <th width="3%">조회수</th>
                                              <th width="3%">댓글수</th>
                                              <th width="3%">좋아요수</th>
                                              <th width="30%">제목</th>
                                              <th width="5%"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${list}" var="list" varStatus="index">
                                          <tr class = "trList">
                                            <th>${totalCount - minusCount - index.count + 1}</th>
                                            <td>
                                            	<fmt:formatDate value="${list.createDate}" type="DATE" pattern="yyyy-MM-dd" />
                                            	<input type="hidden" value="<fmt:formatDate value="${list.createDate}" type="DATE" pattern="yyyy-MM-dd" />" name="createDate2" id=createDate2>
                                            </td>
                                            <td>
                                            	<fmt:formatNumber value="${list.total}" pattern="#,##0" />건
                                            	<input type="hidden" value="${list.sns_content}" name="content" id="content">
                                            </td>
                                            <td>
                                            <c:if test="${list.view_cnt != 0}">
                                            <fmt:formatNumber value="${list.view_cnt}" pattern="#,##0" />회
                                            <%-- &nbsp;(<i class="icofont icofont-arrow-up" style="color: green"></i>
                                            <fmt:formatNumber value="${(list.view_cnt - list2[status.index].view_cnt)}" pattern="#,##0" />회) --%>
                                            </c:if>
                                            <c:if test="${list.view_cnt == 0}">
                                            0회
                                            </c:if>
                                            </td>
                                            <td>
                                            <fmt:formatNumber value="${list.reply_cnt}" pattern="#,##0" />회
                                            <input type="hidden" value="${list.url}" name="url" id="url">
                                            </td>
                                            <td>
                                            <fmt:formatNumber value="${list.like_cnt}" pattern="#,##0" />회
                                            <c:forEach var="creatDate" items="${creatDate}" varStatus="status">
                                            <%-- <fmt:formatDate value="${creatDate.createDate}" type="DATE" pattern="yyyy-MM-dd HH:mm:ss" /> --%>
                                            <input type="hidden" value="<fmt:formatDate value="${creatDate.createDate}" type="DATE" pattern="yyyy-MM-dd HH" />" name="createDate" id=createDate>
                                            </c:forEach>
                                            </td>
                                            <td>
                                            <div class="content-nowrap">
                                            <a href='${list.url}' target="_blank">${list.sns_content}</a>
                                            </div>
                                            <input type="hidden" id="snsname" value="${snsName}"> 
                                            </td>
                                            <td>
                                            <button type="button" class="list-button btn btn-list waves-effect waves-light" style="margin-right: 5px;" data-toggle="tooltip" data-placement="top" data-original-title="리스트">
                                            <i class="icofont icofont-ui-note"></i>리스트
                                            </button>
		    								</td>
                                          </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                          <tr>
                                            <td colspan="7">
                                              <%-- <ul class="pagination float-right">
                                                <c:if test="${pageMaker.prev}">
                                              		<li class="page-item">
                                                		  <a class="page-link" href="all_list${pageMaker.makeSearch(pageMaker.startPage - 1) }" aria-label="Previous">&laquo;
                                                  		<span aria-hidden="true"></span>
                                                  		<span class="sr-only">Previous</span>
                                                		  </a>
                                              		</li>
                                        	      </c:if>
                                          		  <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
                                              		<li class= "${pageMaker.cri.page == idx? 'active':''} page-item">
                                                		  <a class="page-link" href="all_list${pageMaker.makeSearch(idx)}">${idx}</a>
                                              		</li>
                                          		  </c:forEach>
                                          		  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                              		<li class="page-item">
                                              		  <a class="page-link" href="all_list${pageMaker.makeSearch(pageMaker.endPage +1) }" aria-label="Next">&raquo;
                                                		<span aria-hidden="true"></span>
                                                		<span class="sr-only">Next</span>
                                              		  </a>
                                              		</li>
                                          		  </c:if>
                                          		</ul> --%>
                                            </td>
                                          </tr>
                                        </tfoot>
                                      </table>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- page-body end -->
                </div>
              </div>
            </div>
          </div>
  <!-- Warning Section Starts -->
  <!-- Older IE warning message -->
  <!--[if lt IE 9]>
    <div class="ie-warning">
      <h1>Warning!!</h1>
      <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
      <div class="iew-container">
        <ul class="iew-download">
          <li>
            <a href="http://www.google.com/chrome/">
              <img src="../assets/images/browser/chrome.png" alt="Chrome">
              <div>Chrome</div>
            </a>
          </li>
          <li>
            <a href="https://www.mozilla.org/en-US/firefox/new/">
              <img src="../assets/images/browser/firefox.png" alt="Firefox">
              <div>Firefox</div>
            </a>
          </li>
          <li>
            <a href="http://www.opera.com">
              <img src="../assets/images/browser/opera.png" alt="Opera">
              <div>Opera</div>
            </a>
          </li>
          <li>
            <a href="https://www.apple.com/safari/">
              <img src="../assets/images/browser/safari.png" alt="Safari">
              <div>Safari</div>
            </a>
          </li>
          <li>
            <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
              <img src="../assets/images/browser/ie.png" alt="">
              <div>IE (9 & above)</div>
            </a>
          </li>
        </ul>
      </div>
      <p>Sorry for the inconvenience!</p>
    </div>
  <![endif]-->
  <!-- Warning Section Ends -->


  <!-- Required Jquery -->
  <script type="text/javascript" src="../bower_components/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
  <script type="text/javascript" src="../bower_components/tether/dist/js/tether.min.js"></script>
  <script type="text/javascript" src="../bower_components/bootstrap/js/bootstrap.min.js"></script>
  <!-- jquery slimscroll js -->
  <script type="text/javascript" src="../bower_components/jquery-slimscroll/jquery.slimscroll.js"></script>
  <!-- modernizr js사 -->
  <script type="text/javascript" src="../bower_components/modernizr/modernizr.js"></script>
  <script type="text/javascript" src="../bower_components/modernizr/feature-detects/css-scrollbars.js"></script>
  <!-- classie js -->
  <script type="text/javascript" src="../bower_components/classie/classie.js"></script>
  <!-- calendar -->
  <script type="text/javascript" src="../assets/pages/dashboard/pgcalendar/calendar.js"></script>
  <!-- Bootstrap date-time-picker js -->
  <script type="text/javascript" src="../assets/pages/advance-elements/moment-with-locales.min.js"></script>
  <!-- Date-range picker js -->
  <script type="text/javascript" src="../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
  <!-- Bootstrap date-time-picker js -->
  <script type="text/javascript" src="../assets/pages/advance-elements/moment-with-locales.min.js"></script>
  <script type="text/javascript" src="../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
  <script type="text/javascript" src="../assets/pages/advance-elements/bootstrap-datetimepicker.min.js"></script>
  <!-- Morris Chart js -->
  <script src="../bower_components/raphael/raphael.min.js"></script>
  <script src="../bower_components/morris.js/morris.js"></script>
  <!-- High Chart js -->
  <script src="https://code.highcharts.com/highcharts.js"></script>
  <script src="https://code.highcharts.com/modules/series-label.js"></script>
  <script src="https://code.highcharts.com/modules/exporting.js"></script>
  <!-- sweet alert js -->
  <script type="text/javascript" src="../bower_components/sweetalert/dist/sweetalert.min.js"></script>
  <script type="text/javascript" src="../assets/pages/division/script.js"></script>
  <!-- i18next.min.js -->
  <script type="text/javascript" src="../bower_components/i18next/i18next.min.js"></script>
  <script type="text/javascript" src="../bower_components/i18next-xhr-backend/i18nextXHRBackend.min.js"></script>
  <script type="text/javascript" src="../bower_components/i18next-browser-languagedetector/i18nextBrowserLanguageDetector.min.js"></script>
  <script type="text/javascript" src="../bower_components/jquery-i18next/jquery-i18next.min.js"></script>
  <!-- Custom js -->
  <script type="text/javascript" src="../assets/pages/dashboard/custom-dashboard.js"></script>
  <script type="text/javascript" src="../assets/js/script.js"></script>
  <script type="text/javascript" src="../assets/pages/division/script2.js"></script>
  <script type="text/javascript" src="../assets/pages/picker.js"></script>
  <script src="../assets/js/pcoded.min.js"></script>
  <script src="../assets/js/demo-12.js"></script>
  <script src="../assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="../assets/js/jquery.mousewheel.min.js"></script>
  <script src="../assets/dist/js/datepicker.min.js"></script>
  <script src="../assets/dist/js/i18n/datepicker.en.js"></script>
</body>

<script type="text/javascript">

//ajax 보안
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

$(function() {
	  $(document).ajaxSend(function(e, xhr, options) {
	  	xhr.setRequestHeader(header, token);
	  });
});

//BODY 에 로딩화면 추가
var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="../assets/images/ajax-loader.gif">').appendTo(document.body).hide();

//	ajax 통신 시작시 실행
$(window).ajaxStart(function() {
	loading.show();
});

//	ajax 통신 종료시 실행
$(window).ajaxStop(function() {
	loading.hide();
});

$(document).ready(function(){

	var $fromDate = $("#fromDate");

	var startDateOption = decodeURI(window.location.href.split("startDate=")[1]).split("&")[0].split(" ")[0];
	var endDateOption = decodeURI(window.location.href.split("endDate=")[1]).split("&")[0].split(" ")[0];
	console.log("startDateOption: " + startDateOption);
	console.log("endDateOption: " + endDateOption);

	if(startDateOption != 'undefined' && endDateOption != 'undefined'
			&& startDateOption != '' && endDateOption != ''){

		$fromDate.val(startDateOption + " - " + endDateOption);
	}

	var url = $('input[name=url]').val();
	console.log("url:" + url);
	var Mcreate = $('input[name=createDate]').val();
	console.log("Mcreate:" + Mcreate);
	
	$.ajax({

	      type : "POST",
		  url : "graph",
	 	  dataType : "json",
	 	  data : {success : 'success', url: url, Mcreate: Mcreate},
	  	  success : function(data){

	  		if (data[0].type1 != null) {
	  		var script = "[";

			for(var i = 0; i < data.length; i++){

				script += data[i].type1 + ",";


				if(i == data.length-1){
					script =  script.substr(0, script.length-1);
					script += "]";
				}
			}
			
			var script2 = "[";


			for(var i = 0; i < data.length; i++){

				script2 += data[i].type2 + ",";


				if(i == data.length-1){
					script2 =  script2.substr(0, script2.length-1);
					script2 += "]";
				}
			}
			
			var script3 = "[";


			for(var i = 0; i < data.length; i++){

				script3 += data[i].type3 + ",";


				if(i == data.length-1){
					script3 =  script3.substr(0, script3.length-1);
					script3 += "]";
				}
			}
			
			var script4 = "[";

	
			for(var i = 0; i < data.length; i++){

				script4 += '"' + data[i].writeDate + '",';

				if(i == data.length-1){
					script4 =  script4.substr(0, script4.length-1);
					script4 += "]";
				}
			}
			
			console.log(script);
			console.log(script2);
			console.log(script3);
			console.log(script4);

			// to json
			var jsonScript = JSON.parse(script);
			var jsonScript2 = JSON.parse(script2);
			var jsonScript3 = JSON.parse(script3);
			var jsonScript4 = JSON.parse(script4);

			areaChart1(jsonScript, jsonScript2, jsonScript3, jsonScript4);

	  	 }else{
	  		 
		  		loading.hide();
		  		
		  		var obj = document.createElement("div");
		  		var obj2 = document.createElement("div");
		  		var obj3 = document.createElement("div");
		  		var morrisbar = document.getElementById("container");
		  		var morrisbar2 = document.getElementById("container2");
		  		var morrisbar3 = document.getElementById("container3");
		  		obj.innerHTML="<table align='center' height='300px'><tr><td style='vertical-align:middle;' align='center' height='150px'><h5>등록된 데이터가 없습니다.</h5></td></tr></table>";
		  		obj2.innerHTML="<table align='center' height='300px'><tr><td style='vertical-align:middle;' align='center' height='150px'><h5>등록된 데이터가 없습니다.</h5></td></tr></table>";
		  		obj3.innerHTML="<table align='center' height='300px'><tr><td style='vertical-align:middle;' align='center' height='150px'><h5>등록된 데이터가 없습니다.</h5></td></tr></table>";
		  		morrisbar.prepend(obj);
		  		morrisbar2.prepend(obj2);
		  		morrisbar3.prepend(obj3);
	  		 }
	  	 }
	});

	

	var url = $('input[name=url]').val();
	//엑셀출력 확인메시지
	$(document).on("click",".alert-excel",function(){
  	swal({
        title: "엑셀출력 하시겠습니까?",
        text: "현재 리스트가 엑셀출력 됩니다.",
        type: "warning",
        showCancelButton: true,
        confirmButtonClass: "btn-danger",
        confirmButtonText: "YES",
        closeOnConfirm: false
      },
      function(){//엑셀 출력하겠다고 할 시 진행 함수

    	  self.location = "excelOk?"
			    		+ "url="
						+ url
						+ "&section="
						+ "all"
						+ "&startDate=" + decodeURI(window.location.href.split("startDate=")[1]).split("&")[0].split(" ")[0]
			 			+ "&endDate=" +  decodeURI(window.location.href.split("endDate=")[1]).split("&")[0].split(" ")[0];


	  		swal("Success!", "엑셀출력 되었습니다.", "success");

      });
	});

	var url = $('input[name=url]').val();
	//엑셀출력 확인메시지
	$(document).on("click",".alert-excelup",function(){
  	swal({
        title: "엑셀출력 하시겠습니까?",
        text: "현재 리스트가 엑셀출력 됩니다.",
        type: "warning",
        showCancelButton: true,
        confirmButtonClass: "btn-danger",
        confirmButtonText: "YES",
        closeOnConfirm: false
      },
      function(){//엑셀 출력하겠다고 할 시 진행 함수

    	  self.location = "excelupfOk?"
	    		+ "url="
				+ url
				+ "&section="
				+ "all"
				+ "&startDate=" + decodeURI(window.location.href.split("startDate=")[1]).split("&")[0].split(" ")[0]
	 			+ "&endDate=" +  decodeURI(window.location.href.split("endDate=")[1]).split("&")[0].split(" ")[0];


	  		swal("Success!", "엑셀출력 되었습니다.", "success");

      });
	});

	// 검색버튼 클릭시
	$('#searchBtn').on("click", function(event){
	  console.log("searchBtn clicked....");

	  searchList();

	});

	// 리스트 버튼 클릭
	$(".list-button").on("click", function(event){
		var parent = event.target.parentNode;

		if(parent.type == 'button'){
			console.log("button click...");
			parent = parent.parentNode;
		}

		var tr = parent.parentNode;
		console.log(tr);

		var td1 = tr.children[4];
		console.log(td1);

		var td2 = tr.children[2];
		console.log(td2);

		var td3 = tr.children[1];
		console.log(td3);


		var url = td1.children[0].value;
		var content = td2.children[0].value;
		var createstartDate = td3.children[0].value;
		var createendDate = td3.children[0].value;
		
		var snsName = $('#snsname').val();

		console.log("url:" + url, "content:" + content, "createstartDate:" + createstartDate, "createendDate:" + createendDate);

		self.location = "all_listall?url=" + url + "&createstartDate=" + createstartDate + "&createendDate=" + createendDate + "&snsName=" + snsName;

	});

}); // end ready...

function areaChart1(jsonScript, jsonScript2, jsonScript3, jsonScript4) {
	Highcharts.setOptions({
		lang: {
			thousandsSep: ','
		}
	});
	Highcharts.chart('container', {

	    title: {
	         text: ''
	    },
	    subtitle: {
	        text: ''
	    },
	    yAxis: {
	        title: {
	            text: ''
	        }
	    },
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },
	  	xAxis: {
	  	 categories: jsonScript4
	    },
	    plotOptions: {
	        series: {
	            allowPointSelect: true
	        }
	    },
	    series: [{
	        name: '조회수',
	        data: jsonScript
	    }],
	  	credits: {
	    	enabled : false
	    },
	  	exporting: {
	        sourceWidth: 1200,
	        sourceHeight: 330,
	        // scale: 2 (default)
	        chartOptions: {
	            subtitle: null
	        }
	    },
	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }
	});
	
	Highcharts.setOptions({
		lang: {
			thousandsSep: ','
		}
	});
	Highcharts.chart('container2', {

	    title: {
	         text: ''
	    },
	    subtitle: {
	        text: ''
	    },
	    yAxis: {
	        title: {
	            text: ''
	        }
	    },
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },
	  	xAxis: {
	  	 categories: jsonScript4
	    },
	    plotOptions: {
	        series: {
	            allowPointSelect: true
	        }
	    },
	    series: [{
	        name: '댓글수',
	      	data: jsonScript2,
	        color : '#7E81CB'
	    }],
	  	credits: {
	    	enabled : false
	    },
	  	exporting: {
	        sourceWidth: 1200,
	        sourceHeight: 330,
	        // scale: 2 (default)
	        chartOptions: {
	            subtitle: null
	        }
	    },
	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }
	});
	
	Highcharts.setOptions({
		lang: {
			thousandsSep: ','
		}
	});
	Highcharts.chart('container3', {

	    title: {
	         text: ''
	    },
	    subtitle: {
	        text: ''
	    },
	    yAxis: {
	        title: {
	            text: ''
	        }
	    },
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },
	  	xAxis: {
	  	 categories: jsonScript4
	    },
	    plotOptions: {
	        series: {
	            allowPointSelect: true
	        }
	    },
	    series: [{
	        name: '좋아요',
	      	data: jsonScript3,
	        color : '#fb9678'
	    }],
	  	credits: {
	    	enabled : false
	    },
	  	exporting: {
	        sourceWidth: 1200,
	        sourceHeight: 330,
	        // scale: 2 (default)
	        chartOptions: {
	            subtitle: null
	        }
	    },
	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }
	});
	}

	  			/* function areaChart(jsonScript) {
		  			$("#morris-extra-line").empty();
		  			window.areaChart = Morris.Line({
		  				element: 'morris-extra-line',
		  			    data: jsonScript,
		  			    xkey: 'period',
		  			    ykeys: ['조회수'],
		  			    labels: ['조회수'],
		  			    lineColors: ['#01C0C8'],
		  			    lineWidth : 3,
		  			  	hideHover : 'auto'
		  			    });
		  			}
	  			function areaChart2(jsonScript) {
		  			$("#morris-extra-line2").empty();
		  			window.areaChart2 = Morris.Line({
		  				element: 'morris-extra-line2',
		  			    data: jsonScript,
		  			    xkey: 'period',
		  			    ykeys: ['댓글수'],
		  			    labels: ['댓글수'],
		  			    lineColors: ['#7E81CB'],
		  			    lineWidth : 3,
		  			  	hideHover : 'auto'
		  			    });
		  			}
	  			function areaChart3(jsonScript) {
		  			$("#morris-extra-line3").empty();
		  			window.areaChart3 = Morris.Line({
		  				element: 'morris-extra-line3',
		  			    data: jsonScript,
		  			    xkey: 'period',
		  			    ykeys: ['좋아요수'],
		  			    labels: ['좋아요수'],
		  			    lineColors: ['#fb9678'],
		  			    lineWidth : 3,
		  			  	hideHover : 'auto'
		  			    });
		  			} */

	  	//list URL 함수
	  	var url = $('input[name=url]').val();
	  	var content = $('input[name=content]').val();
	  	var snsName = $('#snsname').val();

	  	  function searchList(event) {

	  	  	self.location = "all_list?"
	  	  				  + "url="
	  	  				  + url
	  	  				  + "&snsName=" + snsName
	  	  				  + "&selectTime="
						  + $('#selectTime option:selected').val()
	    				  + "&startDate=" + makeDateFormat($("#startdate").val(), 0)
	  	 			      + "&endDate=" +  makeDateFormat($("#enddate").val(), 0)
					  	  + "&content="
						  + content;
					  	  
	  	  }
	  	function makeDateFormat(date, index){
			var splitDate = date.split(" - ")[index];
				if(splitDate != undefined){
					var returnDate = splitDate.replace("/", "-").replace("/", "-")
					return returnDate;
				}


		}

</script>


</html>
