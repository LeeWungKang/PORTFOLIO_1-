<%@page import="com.company.Vo.roomVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
roomVo roomvo = (roomVo) request.getAttribute("roomvo");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ROOM - 4</title>
<link rel="stylesheet" href="./css/roomCss.css">
</head>
<body>


	<div id="container_room">


		<div class="roomList">
			<table class="table">
				<tr>
					<th>객실</th>
				</tr>
				<tr>
					<td><a href="RoomInfo?roomseq=1">스탠다드</a></td>
				</tr>
				<tr>
					<td><a href="RoomInfo?roomseq=2">스위트</a></td>
				</tr>
				<tr>
					<td><a href="RoomInfo?roomseq=3">디럭스</a></td>
				</tr>
				<tr>
					<td id="select"><a href="RoomInfo?roomseq=4">로열
							<button id="next">&#10095;</button>
					</a></td>
				</tr>
			</table>
			<div class="wrap">
				<button class="button"
					onclick="location.href='RsRoomInput?roomseq=<%=roomvo.getRoomseq()%>'">
					 <%=roomvo.getRoomname()%> 예약</button>
			</div>
		</div>


		<!--메인 메뉴 2개 묶어버릴것  -->

		<div class="infoWrap">
			<div class="imgSlide_R">
				<div class="section">

					<input type="radio" name="slide" id="slide01" checked="checked">
					<input type="radio" name="slide" id="slide02"> <input
						type="radio" name="slide" id="slide03">

					<div class="slideWrap">
						<ul class="slideList">
							<li><a> <label for="slide03" class="left"></label> <img
									src="./img/room4-1.jpg"> <label for="slide02"
									class="right"></label>
							</a></li>
							<li><a> <label for="slide01" class="left"> </label> <img
									src="./img/room4-2.jpg"> <label for="slide03"
									class="right"></label>
							</a></li>
							<li><a> <label for="slide02" class="left"> </label> <img
									src="./img/room4-3.jpg"> <label for="slide01"
									class="right"></label>
							</a></li>
						</ul>
					</div>
				</div>
			</div>



			<div class="roomInfo">

				<div id="roomContent">
					<h1 style="color: #6e583e; font-size: 2.0em;">로얄 룸</h1>
					<br />로열 룸은 여유로운 응접실과 다이닝 룸,<br /> 침실로 구성된 고급스러운 공간입니다.
				</div>


				<div id="infoContent">
					<h2>객실정보</h2>
					<br />
					<ul>
						<li>룸 이름 : &nbsp;&nbsp;<b> <%=roomvo.getRoomname()%></b> 룸
						</li>
						<li>가격 : &nbsp;&nbsp;<b> <%=roomvo.getPrice()%></b> 원
						</li>
						<li>수용인원 :&nbsp; <b><%=roomvo.getRoomsize()%></b> 명
						</li>
						<li>구성&nbsp;&nbsp;침실 1, 욕실 1, 화장실 2, 응접실 1, 다이닝 룸 1</li>
						<li>전망 &nbsp;시티뷰 또는 빌리지뷰</li>
						<li>침대&nbsp;&nbsp;더블(킹 사이즈), 트윈</li>
					</ul>
				</div>


				<div id="amenityContent">
					<h2>부대시설</h2>
					<br />
					<ul>
						<li>피트니스 센터 무료 이용</li>
						<li>피트니스 센터는 매월 세 번쨰 수요일 정기 휴일입니다.</li>
						<li>실내 수영장 무료 이용(만 13세 이상 입장 가능)</li>
						<li>사우나 이용 시 무료</li>
						<li>투숙 기간 내 무료 주차 가능</li>
					</ul>
				</div>
			</div>

		</div>
		<!-- infoWrap -->
	</div>





	<script type="text/javascript" src="../script/script.js"></script>


</body>
</html>