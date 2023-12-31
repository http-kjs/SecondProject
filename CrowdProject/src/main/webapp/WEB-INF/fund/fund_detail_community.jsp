<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.btn-custom {
	background-color: transparent;
	border-color: #00b2b2;
	color: #00b2b2;
	transition: background-color 0.3s;
	font-size: 16px;
}

.btn-custom:hover {
	background-color: rgb(234, 248, 249);
	border-color: #00b2b2;
	color: #00b2b2;
}
.btn-custom-reply {
	background-color: transparent;
	border-color: #00b2b2;
	color: #00b2b2;
	transition: background-color 0.3s;
	font-size: 13px;
}

.btn-custom-reply:hover {
	background-color: rgb(234, 248, 249);
	border-color: #00b2b2;
	color: #00b2b2;
}
.btn-reply {
	background-color: transparent;
	border-color: #00b2b2;
	color: #00b2b2;
	transition: background-color 0.3s;
	font-size: 16px;
	margin-bottom: 20px;
}

.btn-reply:hover {
	background-color: rgb(234, 248, 249);
	border-color: #00b2b2;
	color: #00b2b2;
}

.btn-reply {
	background-color: transparent;
	border-color: #00b2b2;
	color: #00b2b2;
	transition: background-color 0.3s;
	font-size: 12px;
}

.btn-reply:hover {
	background-color: rgb(234, 248, 249);
	border-color: #00b2b2;
	color: #00b2b2;
}

.comTitle {
	line-height: 20px;
	font-size: 14px;
	font-weight: 400;
	color: #212529;
}

.comQna1 {
	line-height: 20px;
	font-size: 14px;
	font-weight: 400;
	color: #868e96;
}

ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

.liborder {
	border-bottom: 1px solid rgba(0, 0, 0, .06);
}

.faqbutton {
	display: block;
	position: relative;
	cursor: pointer;
	padding: 12px 0;
	width: 100%;
	text-align: left;
	font-weight: 700;
	line-height: 20px;
	font-size: 14px;
	font-weight: 400;
	background-color: rgba(0, 0, 0, 0);
	outline: none;
	-webkit-appearance: none;
	border: none;
}

.makerinfo {
	display: flex;
	position: relative;
	align-items: center;
	margin-top: 16px;
	border-radius: 4px;
	background-color: #f9fafb;
	padding: 0 16px;
	width: 750px;
	height: 80px;
}

.makerphoto {
	display: inline-flex;
	position: relative;
	outline: none;
	border: none;
	border-radius: 100%;
	padding: 0;
	width: 64px;
	height: 64px;
	vertical-align: middle;
}

.makerinfo1 {
	display: inline-flex;
	align-items: center;
	justify-content: space-between;
	width: calc(100% - 48px);
}

.makerinfo_center {
	display: inline-block;
	margin-left: 8px;
}

.makername {
	line-height: 20px;
	font-size: 16px;
	font-weight: 700;
}

.avgtime {
	color: rgba(0, 0, 0, .54);
	font-size: 13px;
}

.reviewTitle {
	display: flex;
	align-items: center;
	justify-content: space-between;
	width: 750px;
}

.reviewBtn {
	border-color: #00c4c4;;
	background-color: #00c4c4;;
	color: #fff;
	font-size: 20px;
}

.reviewCnt {
	margin-left: 4px;
	color: #00b2b2;
	font-style: normal;
}

.endPro {
	margin-top: 8px;
	color: #868e96;
	line-height: 20px;
	font-size: 14px;
	font-weight: 400;
}

.reviewTable {
	width: 750px;
	margin: 0;
	border: 0;
	padding: 0;
	vertical-align: baseline;
}

.reviewCard {
	position: relative;
	padding: 10px;
}

.reviewContent {
	padding: 0 0 0 56px;
}

.reviewerImg {
	position: absolute;
	top: 15;
	left: 0;
	width: 50px;
	height: 50px;
}

.reviewImg {
	display: inline-flex;
	position: relative;
	outline: none;
	border: none;
	border-radius: 100%;
	padding: 0;
	width: 100%;
	height: 100%;
	vertical-align: middle;
}

.reviewCont {
	position: relative;
}

.reviewCont_header {
	display: flex;
	justify-content: space-between;
}

.reviewCont_body {
	line-height: 24px;
	color: #44484b;
	font-size: 15px;
}

.reviewCont_body2 {
	word-break: break-all;
	line-height: 20px;
	font-size: 14px;
	font-weight: 400;
	color: #495057;
}

.reviewCont_footer {
	
}

.replyBtn {
	padding: 6px 11px;
	line-height: 1.5;
	font-size: 12px;
}

.reviewHr {
	color: #dee2e6;
}

.reviewCont_header_right {
	margin-bottom: 8px;
	min-height: auto;
	line-height: 20px;
}
.replyCont_header_right{
	display: flex;
	justify-content: space-between;
	margin-bottom: 8px;
	min-height: auto;
	line-height: 20px;
}
.review_name {
	line-height: 20px;
	font-size: 14px;
	font-weight: 700;
	margin-right: 8px;
	vertical-align: middle;
}

.review_time {
	line-height: 18px;
	font-size: 12px;
	font-weight: 400;
	color: #adb5bd;
}

.reviewCont_header_left {
	margin: 12px 0;
	cursor: pointer;
	font-size: 17px;
}

.morePoint {
	width: 25px;
	height: 25px;
}

.imgBtn {
	display: inline-block;
	background-color: transparent; /* 배경을 투명하게 설정 */
	border: none;
	padding: 0;
	cursor: pointer;
	transition: background-color 0.3s;
}

.moreReview {
	width: 100%;
	text-align: center;
}

.moreReviewBtn {
	border-color: rgba(0, 0, 0, 0);
	background-color: transparent;
}

.1on1msg {
	width: 750px;
}

.reviewp {
	margin-bottom: 20px;
	line-height: 1.33;
	color: rgba(0, 0, 0, 0.84);
	font-size: 15px;
	font-weight: 400;
}

.warningBox {
	background-color: #fff1f1;
	color: #f25555;
	border-radius: 8px;
	padding: 16px;
	width: 100%;
	height: 70px;
}

.warnMsg {
	line-height: 18px;
	font-size: 12px;
	font-weight: 400;
	margin: 0;
	text-align: left;
	word-break: keep-all;
	overflow-wrap: break-word;
	color: #495057;
}

.msgBox {
	background-color: #f9fafb;
	color: #495057;
	display: flex;
	border-radius: 8px;
	padding: 16px;
}

.msgBoxTitle {
	line-height: 20px;
	font-size: 14px;
	font-weight: 700;
	margin: 0 0 8px;
	text-align: left;
}

.msgBoxCont {
	line-height: 18px;
	font-size: 12px;
	font-weight: 400;
	margin: 0 0 3 0;
	text-align: left;
	word-break: keep-all;
	overflow-wrap: break-word;
	color: #495057;
}

.form-check-input[type="radio"] {
	display: none; /* 라디오 버튼 숨기기 */
}

.form-check-label.radio-btn {
	display: inline-block;
	cursor: pointer;
	padding: 8px 15px; /* 원하는 패딩 값으로 조정 */
	border: 1px solid #e9ecef; /* 초기 테두리 스타일 */
	border-radius: 4px;
	color: black; /* 원하는 글자색 */
	width: 90%;
}

.form-check-label.radio-btn:hover {
	background-color: mintcream; /* 마우스 호버 시 민트색 배경 적용 */
}

.form-check-input[type="radio"]:checked+.form-check-label.radio-btn {
	border: 2px solid mintcream; /* 선택 시 민트색 테두리 스타일 */
	box-shadow: 0 0 0 4px rgba(0, 128, 128, 0.3);
	/* 선택 시 민트색 약간 두꺼운 테두리 스타일 */
}

.radiosmall {
	margin-left: 8px;
	color: #adb5bd;
	line-height: 18px;
	font-size: 12px;
	font-weight: 400;
}

.textarea-box {
	border: 2px solid #ccc; /* 초기 테두리 스타일 */
	border-radius: 4px;
	padding: 10px;
	transition: border-color 0.3s; /* 테두리 색 변화 시 부드럽게 효과 적용 */
}

.textarea-box:focus {
	border-color: mintcream; /* 선택 시 테두리 색 변경 */
	box-shadow: 0 0 0 4px rgba(0, 128, 128, 0.3); /* 선택 시 약간 두꺼운 테두리 스타일 */
	outline: none;
}

.mint-file-input {
	border: none; /* 기본 테두리 제거 */
	background-color: #f0f7f4; /* 배경색 설정 */
	color: #333; /* 텍스트 색상 설정 */
	padding: 10px; /* 내부 여백 */
	border-radius: 5px; /* 모서리를 둥글게 */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 약한 그림자 추가 */
	cursor: pointer; /* 마우스 커서 스타일 변경 */
	transition: background-color 0.3s, box-shadow 0.3s; /* 전환 효과 설정 */
}

/* 호버 상태일 때 스타일 변경 */
.mint-file-input:hover {
	background-color: #d3e1df; /* 호버 상태 배경색 변경 */
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.15); /* 약한 그림자 증가 */
}

/* 파일 선택 시 스타일 변경 */
.mint-file-input:active, .mint-file-input:focus {
	background-color: #b8cec9; /* 선택 상태 배경색 변경 */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* 그림자 증가 */
	outline: none; /* 선택 상태 아웃라인 제거 */
}

.btn-right {
	float: right;
	margin-right: 10px;
}

.faqCont {
	display: block;
	width: 100%;
	overflow: hidden;
	white-space: pre-wrap;
	padding-bottom: 12px;
	line-height: 18px;
	font-size: 12px;
	font-weight: 400;
	color: #495057;
}

.faq {
	width: 89%;
}

.questiontable {
	border: none;
}

.questiontable th, td {
	border: none;
}
.replyBoardBack{
	background: #f5f7fa;
	padding: 16px;
	width: 80%;
	border-radius: 10px;
	margin: 7px;
}
.replyBoard {
	background: #cdd0d4;
	padding: 16px;
	width: 90%;
	border-radius: 10px;
	margin: 7px;
}
.replyCont_header_right {
    display: flex;
    align-items: center;
}
.replyerImg {
	display:flex;
    margin-right: 10px; /* 이미지와 닉네임 사이의 간격을 조절합니다. */
    justify-content: space-between;
}

.replyImg {
    border-radius: 50%; /* 이미지를 원형으로 만듭니다. */
    width: 50px;
    height: 50px;
}
.reply_space{
	margin-left : 5px;
}
</style>
</head>
<body>
	<div class="comContainer">
		<div class="comTitle">
			<p>
				서포터님!<br>처음 <strong>메이커의 열정과 가치</strong>에 공감해주셨듯,<br>
				마지막까지 <strong>메이커를 응원</strong>해주세요.
			</p>
		</div>
		<div style="height: 10px;"></div>
		<div class="comQna">
			<h4>
				<strong>자주 묻는 질문</strong>
			</h4>
			<p class="comQna1">프로젝트 참여하는 방법이 궁금하다면?</p>
		</div>
		<div class="faq">
			<ul>
				<div class="liborder">
					<li>
						<button class="faqbutton" @click="isVisible = !isVisible">참여
							했어요. 결제는 언제, 어떻게 진행되나요?</button>
						<div class="faqCont" id="faqCont1" v-if="isVisible">프로젝트 진행중에는 결제 예약 상태이며, 프로젝트 종료 후 다음 1영업일 5시에 결제가 진행됩니다. 이때, 결제 실패된 건에 한하여 종료일+4영업일동안 매일 5시에 결제가 진행됩니다. (프로젝트 종료일+4영업일 오후 5시 4차 최종 결제 진행)</div>
					</li>
				</div>
				<div class="liborder">
					<li>
						<button class="faqbutton" @click="isVisible1 = !isVisible1">결제
							실패 알림을 받았어요. 어떻게 해야하나요?</button>
						<div class="faqCont" id="faqCont2" v-if="isVisible1">잔고 부족이나 한도 초과, 거래 정지등의 사유로 결제가 실패할 수 있습니다. 최종 결제일 16시 30분전까지 결제 정보를 변경해주세요. 최종 결제일까지 매 영업일 5시마다 결제가 진행됩니다. ・ 결제정보 변경은 로그인 - [마이 와디즈] - [참여 내역]에서 결제 정보를 변경할 수 있습니다. ・ 반드시 참여한 프로젝트 상세 참여 내역 페이지에서 결제 정보를 변경해주세요. [마이 와디즈] - [결제 관리 정보]에서 결제 정보를 변경하면 해당 카드로 결제가 진행되지 않습니다!</div>
					</li>
				</div>
				<div class="liborder">
					<li>
						<button class="faqbutton" @click="isVisible2 = !isVisible2">결제가
							진행된 후,다른 결제 정보로 변경할 수 있나요?</button>
						<div class="faqCont" id="faqCont3" v-if="isVisible2">결제 예약으로 진행되어 이미 종료된 프로젝트는 취소 후 재참여가 불가능하니, 결제 전 등록한 결제 정보가 맞는지 확인해 주세요.</div>
					</li>
				</div>
				<div class="liborder">
					<li>
						<button class="faqbutton" @click="isVisible3 = !isVisible3">배송지나
							옵션을 변경하고 싶어요.</button>
						<div class="faqCont" id="faqCont4" v-if="isVisible3">프로젝트 진행 중에는 [마이 와디즈] - [참여 내역]에서 직접 변경이 가능합니다. 프로젝트가 종료된 이후에는 직접 변경이 불가능하니, 아래 [메이커에게 문의하기]를 통해 문의해주세요.</div>
					</li>
				</div>
			</ul>
		</div>
		<div style="height: 30px"></div>
		<div class="1on1msg">
			<h4>
				<strong>메이커에게 문의하기</strong>
			</h4>
			<p class="comQna1">리워드, 배송 등 프로젝트에 대해 궁금한 사항이 있다면?</p>
			<div class="makerinfo">
				<img :src="fund_detail.makerphoto" class="makerphoto">
				<div class="makerinfo1">
					<div class="makerinfo_center">
						<div style="height: 10px;"></div>
						<p class="makername">{{fund_detail.makername}}</p>
						<p class="avgtime">
							평균 응답 시간&nbsp;&nbsp;&nbsp; <span style="color: #00a2a2;">1시간
								이내</span>
						</p>
					</div>
					<c:if test="${sessionScope.id!=null }">
						<button type="button" class="btn btn-custom" data-bs-toggle="modal"
							data-bs-target="#questionModal">문의하기</button>					
					</c:if>
					<c:if test="${sessionScope.id==null }">
						<button type="button" class="btn btn-outline-secondary" data-bs-toggle="tooltip" data-bs-placement="right"  title="로그인 후 이용가능합니다.">문의하기</button>
					</c:if>
				</div>
			</div>
		</div>
		<div style="height: 40px;"></div>
		<div class="review">
			<div class="reviewTitle">
				<div style="padding: 0">
					<h4>
						<strong>응원 · 체험리뷰<em class="reviewCnt">&nbsp;34</em></strong>
					</h4>
					<p class="endPro">프로젝트 종료 전에 남긴 글입니다.</p>
				</div>
				<!-- <button class="btn btn-custom reviewBtn" @click="reviewWrite(true)">글 남기기</button> -->
				<c:if test="${sessionScope.id==null }">
					<button @click="noId" class="btn btn-custom reviewBtn">글 남기기</button>
				</c:if>
				<c:if test="${sessionScope.id!=null }">
					<b-button v-b-modal.modal-lg @click="openModal"
						class="btn btn-custom reviewBtn">글 남기기</b-button>
				</c:if>
				<b-modal id="modal-lg" v-model="showModal" size="lg" title="글 남기기"
					hide-header-close hide-footer ok-only no-close-on-backdrop>
				<form method="post" action="../fund/review_insert_ok.do"
					enctype="multipart/form-data" id="reviewForm">
					<div class="reviewWrite">
						<p class="reviewp">
							응원 · 의견 · 체험 리뷰를 남겨주세요. <br> 메이커의 답변이 필요한 문의는 ‘메이커에게 문의하기’를
							이용해주세요.
						</p>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category"
								value="응원" id="flexRadioDefault1" checked> <label
								class="form-check-label radio-btn" for="flexRadioDefault1">
								<b>응원</b><small class="radiosmall">메이커를 응원하고 싶어요.</small>
							</label>
						</div>
						<div style="height: 6px;"></div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category"
								value="리뷰" id="flexRadioDefault2"> <label
								class="form-check-label radio-btn" for="flexRadioDefault2">
								<b>체험리뷰</b><small class="radiosmall">먼저 체험한 리뷰를 남기고 싶어요.</small>
							</label>
						</div>
						<div style="height: 15px;"></div>
						<textarea class="textarea-box" id="reviewContent" name="content"
							rows="5" cols="70" placeholder="  응원∙의견∙체험 리뷰 메시지를 남겨주세요."
							required>
						
						</textarea>
						<div style="height: 15px;"></div>
						<input type="file" name="images" multiple="multiple"
							class="mint-file-input">
						<div style="height: 15px;"></div>
						<div class="warningBox">
							<div class="warnMsg">최근 메이커 또는 제3자에 대한 허위사실 유포, 비방 목적의 댓글로
								인해 당사자간 법적분쟁이 발생한 사례가 증가하고 있습니다. 악의적 댓글 작성자는 명예훼손, 모욕 등으로 법적 책임을
								부담하게 될 수 있다는 점을 유의하여 주시기 바랍니다.</div>
						</div>
						<div style="height: 15px;"></div>
						<div class="msgBox">
							<p class="msgBoxTitle">게시물 안내</p>
							<div class="msgBoxCont">
								<ul>
									<li>본 프로젝트와 무관한 글, 사진, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 삭제 등 조치가 취해질 수 있으며, 해당 내용으로 인해 메이커, 서포터, 제3자에게 피해가 발생되지 않도록 유의해 주세요.</li>
									<li>리워드 관련 문의 및 배송 문의는 '메이커에게 문의하기'를 통해 정확한 답변을 받을 수 있어요.</li>
									<li>서포터님의 연락처, 성명, 이메일 등의 소중한 개인정보는 절대 남기지 마세요.</li>
									<li>체험 리뷰는 반드시 펀딩을 위해 진행된 오프라인 전시(체험)에 참여한 후 작성하세요.</li>
									<li>체험 리뷰 등록 시, 프로필 닉네임과 내용이 공개되며, 서비스 내 콘텐츠에 활용돼요.</li>
								</ul>
							</div>
						</div>
					</div>
					<input type="hidden" name="id" value="${sessionScope.id }">
					<input type="hidden" name="wfno" value="${wfno }">
					<div style="height: 10px;"></div>
					<input type="submit" class="btn btn-custom btn-right" value="등록하기">
				</form>
				<b-button class="btn btn-custom btn-right" @click="closeModal">취소</b-button>
				</b-modal>

			</div>
			<div class="reviewTable">
				<hr>
				<ul>
					<li v-for="vo,index in computedReviewList" :key="vo.rno">
						<div class="reviewCard">
							<div class="reviewContent">
								<div class="reviewerImg">
									<a href="#"> <img :src="vo.profile_url" class="reviewImg">
									</a>
								</div>
								<div class="reviewCont">
									<div class="reviewCont_header">
										<div class="reviewCont_header_right">
											<span class="review_name"> <a href="#"
												v-if="vo.nickname!=null">{{vo.nickname}}</a> <a href="#"
												v-if="vo.nickname==null">{{vo.name}}</a>
											</span> <span class="review_time">{{vo.dbday}}</span>
										</div>
										<div class="reviewCont_header_left">
											<button class="imgBtn">
												<img class="morePoint" src="../images/point.png">
											</button>
										</div>
									</div>
									<div class="reviewCont_body">
										<div class="reviewCont_body2">{{vo.content}}</div>
									</div>
									<div style="height: 10px"></div>
									<div class="reviewCont_footer">
										<button class="btn btn-reply"
											@click="showReplyForm(index, vo.rno)">답글</button>
										<div style="height: 10px"></div>
										<div v-if="replyFormIndex === index && isReplyVisible">
											<textarea cols="45" rows="3" ref="replyCont"
												v-model="replyCont" class="textarea-box"
												placeholder="답글을 입력하세요..." required></textarea>
											<button class="btn btn-reply"
												@click="replyInsert(vo.rno,vo.id)">댓글등록</button>
											<div style="height: 5px;"></div>
											<div class="replyBoardBack">
												<div class="replyCard" v-for="rrvo in reply_list">
												<div class="replyCont_header_right">
													<div class="replyerImg">
														<a href="#"> 
															<img :src="rrvo.profile_url" class="replyImg">
														</a>
											            <span class="review_name reply_space"> 
											                <a href="#" v-if="rrvo.nickname!=null">{{rrvo.nickname}}</a> 
											                <a href="#" v-if="rrvo.nickname==null">{{rrvo.name}}</a> 
											            </span>
											            <span class="review_time">{{rrvo.dbday}}</span>
											        </div>		
											        <div>	
												        <b-button v-b-modal.modal-2 class="btn btn-custom-reply btn-right" v-if="id == rrvo.id" @click="selectRrvo(rrvo.rrno, rrvo.content)">수정</b-button>
												        <b-button v-b-modal.modal-1 class="btn btn-custom-reply btn-right" v-if="id == rrvo.id" @click="selectedRrno = rrvo.rrno">삭제</b-button>
											        </div>
											    </div>
													<div class="replyBoard">
														<span>{{rrvo.content}}</span>
													</div>
													<div style=" height: 14px;"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<hr class="reviewHr">
						</div>
					</li>
				</ul>
			</div>
			<div class="moreReview">
				<button class="moreReviewBtn" @click="moreBtn">더보기</button>
			</div>
		</div>
		<div class="modal fade" id="questionModal" ref="questionModal"
			tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog  modal-dialog-centered modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">문의하기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="gotomypage text-end" style="margin-right: 50px;">
							<a href="../mypage/mypage_main.do" class="btn btn-sm btn-project">나의
								문의 목록</a>
						</div>
						<table class="table questiontable">
							<tr>
								<th width="20%" class="text-end">제목</th>
								<td width="80%"><input type="text" ref="subject"
									v-model="subject" size="65" class="textarea-box"></td>
							</tr>
							<tr>
								<th width="20%" class="text-end">내용</th>
								<td width="80%">
									<textarea rows="4" cols="64" ref="content" v-model="content" class="textarea-box">
									</textarea>
								</td>
							</tr>
						</table>
					</div>
					<div class="msgBox">
						<p class="msgBoxTitle">게시물 안내</p>
						<div class="msgBoxCont">
							<ul>
								<li>본 프로젝트와 무관한 글, 사진, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 삭제 등 조치가
									취해질 수 있으며, 해당 내용으로 인해 메이커, 서포터, 제3자에게 피해가 발생되지 않도록 유의해 주세요.</li>
								<li>서포터님의 연락처, 성명, 이메일 등의 소중한 개인정보는 절대 남기지 마세요.</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-xs btn-project"
							@click="question()">확인</button>
						<button type="button" class="btn btn-xs btn-secondary"
							data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
			<b-modal id="modal-1" title="댓글 삭제" hide-header-close hide-footer> 
			    <p class="my-4">정말 삭제하시겠습니까?</p>
			    <b-button class="btn btn-custom btn-right" @click="replyDelete(selectedRrno)">삭제</b-button>
				<b-button class="btn btn-custom btn-right" @click="$bvModal.hide('modal-1')">취소</b-button>
			</b-modal>
			<b-modal id="modal-2" title="댓글 수정" hide-header-close hide-footer> 
			    <textarea cols="40" rows="3" ref="selectedContent" v-model="selectedContent" class="textarea-box" required>{{selectedContent}}</textarea>
			    <b-button class="btn btn-custom btn-right" @click="replyUpdate(selectedRrno,selectedContent)">수정</b-button>
				<b-button class="btn btn-custom btn-right" @click="$bvModal.hide('modal-2')">취소</b-button>
			</b-modal>
		</div>
	</div>
	
	<script>
	 new Vue({
		 el:'.comContainer',
		 data:{
			 wfno:${wfno},
			 fund_reward:[],
			 fund_detail:{},
			 no:0,
			 isShow:false,
			 showModal: false,
			 review_list:[],
			 member_profile:{},
			 showMore:false,
			 listNum:10,
			 isVisible: false,
			 isVisible1: false,
			 isVisible2:false,
			 isVisible3: false,
			 subject:'',
			 content:'',
			 id:'${id}',
			 replyFormIndex: null,
			 isReplyVisible: false,
			 replyCont:'',
			 reply_list:[],
			 currno:0,
			 selectedRrno: null,
			 selectedContent:null
		 },
		 mounted:function(){
			 axios.get('../fund/fund_detail_vue.do',{
				 params:{
					 wfno:this.wfno
				 }
			 }).then(response=>{
				 console.log(response.data)
				 this.fund_detail=response.data
			 }).catch(error=>{
				 console.log(error.response)
			 })
			 
			 this.reviewGet();
		 },
		 methods:{
			selectRrvo(rrno, content) {
				this.selectedRrno = rrno;
				this.selectedContent = content;
			},
			replyUpdate:function(selectedRrno,selectedContent){
				axios.get('../fund/reply_update_vue.do',{
					params:{
						rrno:this.selectedRrno,
						content:this.selectedContent,
						wfno:this.wfno
					}
				}).then(res=>{
					this.isReplyVisible = false;  // 답글 입력란 숨기기
	                this.replyCont = '';  // textarea 내용 지우기
	                this.$bvModal.hide('modal-2');
	                this.reviewGet();  // 리뷰 리스트 다시 불러오기 (새로운 답글 반영)
				})
			},
			showReplyForm (index, rno) {
		        this.replyFormIndex = index;
		        this.isReplyVisible = !this.isReplyVisible;
		        this.currno = rno
		        console.log('Current RNO:', this.currno); // 추가한 코드
		        this.ReplyList();
		    },
		    ReplyList:function(){
		    	console.log('Sending request with RNO:', this.currno); // 추가한 코드
		        axios.get('../fund/reply_list_vue.do',{
		            params:{
		                rno: this.currno,
		                wfno:this.wfno
		            }
		         }).then(res=>{
		            this.reply_list=res.data
		         })    
		    },
			openModal() {
			      this.showModal = true;
			},
		    closeModal() {
		      this.showModal = false;
		    },
		    noId(){
		    	alert("로그인이 필요합니다!");
		    	location.href="../member/member_login.do"
		    },
		    reviewGet:function(){
		    	axios.get('../fund/fund_reviewGet_vue.do',{
		    		params:{
		    			wfno:this.wfno
		    		}
		    	}).then(response=>{
		    		console.log(response.data)
		    		this.review_list=response.data
		    		this.reply_list=this.replyList();
		    	}).catch(error=>{
		    		console.log(error.response)
		    	})
		    },
		    replyInsert:function(rno,rid){
		    	if(!this.replyCont || this.replyCont.trim() === ''){
		    	        this.$refs.replyCont.focus();
		    	        return;
		    	}
		    	axios.get('../fund/review_insert_vue.do',{
		    		params:{
		    			rno: rno,
		    			id: this.id,
		    			rid: rid,
		    			wfno: this.wfno,
		    			content: this.replyCont
		    		}
		    	}).then(res=>{
		    			this.isReplyVisible = false;  // 답글 입력란 숨기기
		                this.replyCont = '';  // textarea 내용 지우기
		                this.reviewGet();  // 리뷰 리스트 다시 불러오기 (새로운 답글 반영)
		    		})
		    },
		   	replyDelete:function(rrno){
		   		axios.get('../fund/review_delete_vue.do',{
		   			params:{
		   				rrno:rrno,
		   				wfno:this.wfno
		   			}
		   		}).then(res=>{
		   			this.isReplyVisible = false;
		   		 	this.$bvModal.hide('modal-1');
		   			this.reviewGet();
		   		})
		   	},
		    moreBtn:function(){
		    	if(this.showMore==false){
		    		this.showMore=true
		    	}else{
		    		this.showMore=false
		    	}
		    },
		    question:function(){
		    	if(this.subject=="")
		    	{
		    		this.$refs.subject.focus()
		    		return
		    	}
		    	if(this.content=="")
		    	{
		    		this.$refs.content.focus()
		    		return
		    	}
		    	axios.post('../makerpage/QnA_question_vue.do',null,{
		    		params:{
		    			id:this.id,
		    			wfno:this.wfno,
		    			subject:this.subject,
		    			content:this.content
		    		}
		    	}).then(response=>{
		    		alert("문의 작성을 완료하였습니다.")
		    		this.subject=''
		    		this.content=''
		    		// 모달창을 닫기위한 javaScript명령어
		    		var myModalEl = document.getElementById('questionModal');
		            var modal = bootstrap.Modal.getInstance(myModalEl);
		            modal.hide();
		    		
		    	})
		    }
		 },
		 computed:{
			 computedReviewList(){
				 return this.showMore ? this.review_list : this.review_list.slice(0,this.listNum)
			 }
		 }
	 })	
	 var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
	 var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
	   return new bootstrap.Tooltip(tooltipTriggerEl)
	 })
	</script>
</body>
</html>