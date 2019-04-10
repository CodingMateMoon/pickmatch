<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Hello Spring" name="title" />
</jsp:include>
<style>
.snip1535 {
	background-color: #5A8DF3;
	border: none;
	cursor: pointer;
	font-family: 'BenchNine', arial, sans-serif;
	font-size: 14px;
	line-height: 1em;
	outline: none;
	padding: 8px 20px 8px;
	position: relative;
	text-transform: uppercase;
	font-weight: 700;
}

.snip1535:before, .snip1535:after {
	border-color: transparent;
	-webkit-transition: all 0.25s;
	transition: all 0.25s;
	border-style: solid;
	border-width: 0;
	content: "";
	height: 24px;
	position: absolute;
	width: 24px;
}

.snip1535:before {
	border-color: #5A8DF3;
	border-right-width: 2px;
	border-top-width: 2px;
	right: -5px;
	top: -5px;
}

.snip1535:after {
	border-bottom-width: 2px;
	border-color: #5A8DF3;
	border-left-width: 2px;
	bottom: -5px;
	left: -5px;
}

.snip1535:hover, .snip1535.hover {
	background-color: #5A8DF3;
	cursor: pointer;
}

.snip1535:hover:before, .snip1535.hover:before, .snip1535:hover:after,
	.snip1535.hover:after {
	height: 100%;
	width: 100%;
}
</style>

<section id="matchTeamInfo-section">
	<article id="matchTeamInfo-article" style="background-color: white;">
		<div id="matchTeamInfo-div">
			<h1>팀 정보</h1>

			<div class="teamTbl-div"
				style="display: inline-block; margin-left: 15px;">
				<table border="1"
					style="text-align: center; width: 370px; height: 600px;">

					<tr>
						<td colspan="2">${match.emblem }</td>
					</tr>
					<tr>
						<td colspan="2">${match.teamHome}</td>
					</tr>
					<tr>
						<td>지역 : ${match.location }</td>
						<td>활동구장 : ${match.playGround}</td>
					</tr>
					<tr>
						<td>팀유형 : ${match.matchType}</td>
						<td>평균연령 : ${match.teamType}</td>
					</tr>
					<tr>
						<td>경기유형 : ${match.matchType}</td>
						<td>유니폼 : ${match.uniform }</td>
					</tr>
					<tr>
						<td>팀원수 : ${match.teamCount }</td>
						<td>경기날짜 : ${match.matchDate} ${match.matchTime }</td>
					</tr>
					<tr>
						<td>팀소개 : ${match.introduce }</td>
						<td>14</td>
					</tr>

				</table>
			</div>
			<div class="membertbl-div"
				style="display: inline-block; position: relative; bottom: 128px; margin-left: 60px;">
				<table class="table table-striped"
					style="width: 550px; height: 300px;">
					<tr>
						<th scope="col">No.</th>
						<th scope="col">Name</th>
						<th scope="col">position</th>
						<th scope="col">value</th>

					</tr>
					<c:forEach var="m" items="${member }" varStatus="vs">
						<tr>
							<th scope="row">${vs.count }</th>
							<td>${m['MEMBERNAME'] }</td>
							<td>${m['POSITION'] }</td>
							<td>${m['AUTHORITY'] }</td>
						</tr>
					</c:forEach>
				</table>
				<button type="button" class="snip1535" id="matchRequest"
					style="float: right;" data-target="#layerpop" data-toggle="modal" onclick="textareabtn()">매치신청</button>
				<div class="modal fade" id="layerpop">
					<div class="modal-dialog">
						<div class="modal-content">
							<!-- header -->
							<div class="modal-header">
								<!-- 닫기(x) 버튼 -->
								<h4 class="modal-title">메모</h4>
								<button type="button" class="close" data-dismiss="modal">×</button>
								<!-- header title -->
								
							</div>
							<!-- body -->
							<div class="modal-body">
							<textarea class="form-control" id="memo" style="width: 100%; height: 150px; resize: none;" maxlength="500"></textarea>
							</div>
							<!-- Footer -->
							<div class="modal-footer">
								<button type="button" onclick="matchRequest()" class="btn btn-primary">매치신청</button>
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>

			

			</div>
			<div class="matchResponse-div" style="width:70%; margin: 0 auto; margin-top: 50px; padding-bottom: 100px;">
				
				<table id="matchResponse-tbl" class="table"> 
				<thead>
					<tr>
						<th>번호</th>
						<th>신청팀</th>
						<th colspan="2">메모</th>
					</tr>
				</thead>
					<c:forEach var="mr" items="${matchResponse }" varStatus="vs">
					<tr>
					<td>${vs.count }</td>
					<td>${mr['TEAMNAME']}</td>
					<td>${mr['MEMO'] }</td>
					<td><button type="button" onclick="matchOk()" value="${mr['MATCHNO'] }" class="btn btn-primary">매치수락</button>
						<input type="hidden" id="awayTeamName" value="${mr['TEAMNAME']}"/>
						
					</td>
					</tr>
					</c:forEach>
				
				
				</table>
			</div>
		</div>
	</article>
</section>
<script>
	function textareabtn(){
		var memo=$("#memo");
		memo.val("");
		memo.focus();
		
	}

	function matchRequest() {
		var matchNo = "${match.matchNo}";
		var id = "${loggedMember.memberId }";
		var content = $("#memo").val();
		location.href="${path}/match/matchRequest.do?matchNo="+matchNo+"&&id="+id+"&&memo="+content;

	}
	
	function matchOk(){
		var matchNo = event.target.value;		
		var awayTeam = $("#awayTeamName").val();
		location.href="${path}/match/matchOk.do?matchNo="+matchNo+"&&awayTeam="+awayTeam;
	}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
