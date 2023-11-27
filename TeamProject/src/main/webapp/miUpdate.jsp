<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style_header.css">
		<link rel="stylesheet" type="text/css" href="css/style_modifing_member_info.css">
		<link rel="stylesheet" type="text/css" href="css/style_footer.css">
		<title>회원 정보 수정</title>
	</head>
	<body>
		<header>
			<div id="nav_up">
				<ul>
					<li><a href="#">회원가입</a></li>
					<li><a href="#">로그인</a></li>
					<li><a href="#">고객행복센터</a></li>
					<li><a href="#">맛집검색</a></li>
					<li><a href="#">세끼카드 등록</a></li>
				</ul>
			</div>	
			<nav>
				<a href="#"></a>
				<ul>
					<li><a href="#">삼식세끼 소개</a></li>
					<li><a href="#">삼식세끼 메뉴</a></li>
					<li><a href="#">리뷰</a></li>
					<li><a href="#">이벤트</a></li>
					<li><a href="#">나의 세끼</a></li>
				</ul>
				<ul>
					<li>
						<a href="#"><span>장바구니</span></a>
					</li>
					<li>
						<a href="#"><span>메뉴찾기</span></a>
					</li>
				</ul>
			</nav>
		</header>
		
		
		
		
		
		<section>
			<form name="agree" method="get" action="#">
				<div id="subBanner"></div>
				<div id="locationN">
					<ul>
						<li>HOME</li>
						<li>마이페이지</li>
						<li>회원 정보 수정</li>
					</ul>
				</div>
				
				<div id="sub_top_area">
					<h3>회원 정보 수정</h3>
				</div>
				
				<h4>
					필수 정보 입력 
					<span>(* 항목은 필수 항목입니다.)</span>
				</h4>
				<fieldset class="fieldset_class">
					<dl id="modify_name_dl">
						<dt>
							<div></div>
							<label for="name">이름</label>
						</dt>
						<dd>
							홍길동
						</dd>
					</dl>
					<dl id="modify_id_dl">
						<dt>
							<div></div>
							<label for="id">아이디</label>
						</dt>
						<dd>
							honghong
						</dd>
					</dl>
					<dl id="modify_pw1_dl">
						<dt>
							<div></div>
							<label for="pw1">비밀번호</label>
						</dt>
						<dd>
							<input type="password" id="pw1" name="pw1" minlength="8" required />
							<span>영문, 숫자, 특수문자 중 2종류 조합 시 10자리 이상 입력</span>
							<span>영문, 숫자, 특수문자 모두 조합 시 8자리 이상 입력</span>
						</dd>
					</dl>
					<dl id="modify_pw2_dl">
						<dt>
							<div></div>
							<label for="pw2">비밀번호 확인</label>
						</dt>
						<dd>
							<input type="password" id="pw2" name="pw2" minlength="8" required />
							<span>비밀번호를 다시 한번 입력해 주세요.</span>
						</dd>
					</dl>
					<dl id="modify_mail_dl">
						<dt>
							<div></div>
							<label for="mail_id">이메일</label>
						</dt>
						<dd>
							<input type="text" id="mail_id" name="mail_id" value="aaaa" required />
							<span>@</span>
							<input type="text" id="main_tail" name="mail_tail" value="gmain.com" required />
							<select>
								<option selected>직접입력</option>
								<option>지메일</option>
								<option>네이버</option>
								<option>네이트</option>
								<option>핫메일</option>
								<option>파란</option>
								<option>엠팔</option>
								<option>야후</option>
								<option>드림위즈</option>
								<option>한메일(다음)</option>
							</select>
						</dd>
					</dl>
					
					<dl id="modify_address_dl">
						<dt> 
							<div></div>
							<label for="">주소</label>
						</dt>
						<dd>
							<input type="text" id="f_postal" name="f_postal" value="12345" required />
							<span>-</span>
							<input type="text" id="l_postal" name="l_postal" required />
							<input type="button" value="우편번호"/>
							<input type="text" id="address1" name="address1" value="서울시 금천구 가산디지털1로 186." required />
							<input type="text" id="address2" name="address2" value="(가산동. 제이플라츠 5F. 515,516호)" required />
						</dd>
						
					</dl>
					
					<dl id="modify_tell_dl">
						<dt>
							<div></div>
							<label for="f_tell">휴대전화</label>
						</dt>
						<dd>
							<input type="text" id="f_tell" name="f_tell" maxlength="3" value="010" required />
							<span> - </span>
							<input type="text" id="m_tell" name="m_tell" maxlength="4" value="1234" required />
							<span> - </span>
							<input type="text" id="l_tell" name="l_tell" maxlength="4" value="5678" required />
						</dd>
					</dl>
					<dl id="modify_birth_dl">
						<dt>
							<div></div>
							<label for="birth_year">생년월일</label>
						</dt>
						<dd>
							<select id="birth_year" name="birth_year" required>
								<option>선택</option>
								<option value="1988">1988</option>
								<option value="1989">1989</option>
								<option selected value="1990">1990</option>
								<option value="1991">1991</option>
								<option value="1992">1992</option>
								<option value="1993">1993</option>
								<option value="1994">1994</option>
								<option value="1995">1995</option>
								<option value="1996">1996</option>
								<option value="1997">1997</option>
								<option value="1998">1998</option>
								<option value="1988">1999</option>
								<option value="1920">2000</option>
							</select>
							<span>년</span>
							<select id="birth_month" name="birth_month" required>
								<option >선택</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option selected value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<span>월</span>
							<select id="birth_day" name="birth_day" required>
								<option >선택</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option selected value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
							<span>일</span>
							<div>
								<input type="radio" name="calendar" id="lunar" value="lunar" checked="checked"/>
								<label for="lunar">양력</label>
								<input type="radio" name="calendar" id="solar" value="solar" />
								<label for="solar">음력</label>
							</div>
						</dd>
					</dl>
					<dl id="modify_gender_dl">
						<dt>
							<div></div>
							<label for="">성별</label>
						</dt>
						<dd>
							<div>
								<input type="radio" name="gender" id="male" value="male" checked="checked"/>
								<label for="male">남성</label>
								<input type="radio" name="gender" id="female" value="female" />
								<label for="female">여성</label>
							</div>
						</dd>
					</dl>
					<dl id="modify_newsletter_dl">
						<dt>
							<div></div>
							<label for="">뉴스레터 수신여부</label>
						</dt>
						<dd>
							<span>이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.</span>
							<div>
								<input type="radio" name="newletter" id="newletter_y" value="yes" checked="checked"/>
								<label for="newletter_y">예</label>
								<input type="radio" name="newletter" id="newletter_n" value="no" />
								<label for="newletter_n">아니오</label>
							</div>
						</dd>
					</dl>
					<dl id="modify_sms_dl">
						<dt>
							<div></div>
							<label for="">SMS 수신여부</label>
						</dt>
						<dd>
							<span>이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.</span>
							<div>
								<input type="radio" name="sms" id="sms_y" value="yes" checked="checked"/>
								<label for="sms_y">예</label>
								<input type="radio" name="sms" id="sms_n" value="no" />
								<label for="sms_n">아니오</label>
							</div>
						</dd>
					</dl>
				</fieldset>

								
				<h4>
					추천인 코드 입력 
					<span>(카카오톡 플러스친구 메세지로 받은 추천인 코드를 입력해주시면 됩니다.)</span>
				</h4>
				<fieldset class="fieldset_class">
					
					<dl id="modify_verification_number_dl">
						<dt>
							<label for="r_code">추천인 코드</label>
						</dt>
						<dd>
							<input type="text" name="r_code" id="r_code" value="a1b2c3d4"/>
							<span>영문 대소문자 및 숫자 8자리 입력</span>
						</dd>
					</dl>
				</fieldset>
				
				<h4>
					선택 입력 정보 
				</h4>
				<fieldset class="fieldset_class">
					<dl id="modify_job_dl">
						<dt>
							<label for="job">직업</label>
						</dt>
						<dd>
							<select id="job" name="job">
								<option selected>선택</option>
								<option value="worker">회사원</option>
								<option value="slef">자영업자</option>
								<option value="freelancer">프리랜서</option>
								<option value="housewife">전업주부</option>
								<option selected value="student">학생</option>
								<option value="etc">기타</option>						
							</select>
						</dd>
					</dl>
					<dl id="modify_marital_status_dl">
						<dt>
							<label for="">결혼여부</label>
						</dt>
						<dd>
							<input type="radio" name="marital_status" id="marital_status_y" value="yes" />
							<label for="marital_status_y">예</label>
							<input type="radio" name="marital_status" id="marital_status_n" value="no" checked/>
							<label for="marital_status_n">아니오</label>
						</dd>
					</dl>
					<dl id="modify_interests_dl">
						<dt>
							<label for="">관심 카테고리</label>
						</dt>
						<dd>
							<ul>
								<li>
									<input type="checkbox" name="kFood" id="kFood" value="kFood" checked/>
									<label for="kFood">한식</label>
								</li>
								<li>
									<input type="checkbox" name="jFood" id="jFood" value="jFood" checked/>
									<label for="jFood">일식</label>
								</li>
								<li>
									<input type="checkbox" name="cFood" id="cFood" value="cFood" />
									<label for="cFood">중식</label>
								</li>
								<li>
									<input type="checkbox" name="italian" id="italian" value="italian" />
									<label for="italian">이탈리안</label>
								</li>
								<li>
									<input type="checkbox" name="french" id="french" value="french" checked/>
									<label for="french">프렌치</label>
								</li>
								<li>
									<input type="checkbox" name="mexican" id="mexican" value="mexican" />
									<label for="mexican">멕시칸</label>
								</li>
								<li>
									<input type="checkbox" name="fDining" id="fDining" value="fDining" />
									<label for="fDining">파인다이닝</label>
								</li>
								<li>
									<input type="checkbox" name="hBuffet" id="hBuffet" value="hBuffet" checked/>
									<label for="hBuffet">호텔뷔페</label>
								</li>
								<li>
									<input type="checkbox" name="omakase" id="omakase" value="omakase" />
									<label for="omakase">오마카세</label>
								</li>
								<li>
									<input type="checkbox" name="bar" id="bar" value="bar" />
									<label for="bar">바</label>
								</li>
								
							</ul>
						</dd>
					</dl>
				</fieldset>
				<div id="info_input_button">
					<input type="reset" value="취소하기" />
					<input type="submit" value="수정하기" />
				</div>
				
			</form>
		</section>
		
		
		
		
		
		
<!-- Footer Start -->		
<footer class="footer">
  <div class="inner">
    <div class="mp_logo">
      <a href="https://www.mangoplate.com/" class="btn-mp">
        <img class="mp_logo_img" src="./망고플레이트_ 나만의 맛집 검색_files/mangoplate-gray-logo.svg" alt="mangoplate logo">
      </a>
      <p class="subtitle">Eat, Share, Be Happy.</p>
    </div>

    <p class="sns-shortcut">
      <a class="btn facebook" href="https://www.facebook.com/mangoplate" target="_blank" onclick="trackEvent(';CLICK_SHARE_FACEBOOK';);">
        삼식세끼 페이스북 계정으로 바로가기
      </a>
<br>
      <a class="btn instagram" href="https://instagram.com/mangoplate/" target="_blank" onclick="trackEvent(';CLICK_SHARE_INSTA';);">
        삼식세끼 인스타그램 계정으로 바로가기
      </a>
    </p>

    <nav class="links-external">
      <ul class="list-links">
          <li>
            <a href="https://www.mangoplate.com/company">
              회사소개
            </a>
          </li>

          <li>
            <a href="https://www.mangoplate.com/careers">
              삼식세끼 채용
            </a>
          </li>

            <li>
              <a href="https://www.mangoplate.com/investment">
                투자 정보
              </a>
            </li>

          <li class="only-desktop">
            <a href="https://www.mangoplate.com/etc/download_company_ci" target="_blank">
              브랜드 가이드라인
            </a>
          </li>

      </ul>

      <ul class="list-links">
            <li>
              <a href="https://www.mangoplate.com/notice" target="_blank">
                공지사항
              </a>
            </li>

            <li>
              <a class="" href="https://www.mangoplate.com/terms/contract" onclick="trackEvent(';CLICK_TERMS';, ';contract';)" target="_blank">
                이용약관
              </a>
            </li>
            <li>
              <a class="" href="https://www.mangoplate.com/terms/contract_non_signup" onclick="trackEvent(';CLICK_TERMS';, ';contract_non_signup';)" target="_blank">
                비회원 이용자 이용정책
              </a>
            </li>
            <li>
              <a class="bold" href="https://www.mangoplate.com/terms/privacy" onclick="trackEvent(';CLICK_TERMS';, ';privacy';)" target="_blank">
                개인정보처리방침
              </a>
            </li>
            <li>
              <a class="" href="https://www.mangoplate.com/terms/location" onclick="trackEvent(';CLICK_TERMS';, ';location';)" target="_blank">
                위치기반서비스 이용약관
              </a>
            </li>
            <li>
              <a class="" href="https://www.mangoplate.com/terms/community_guidelines" onclick="trackEvent(';CLICK_TERMS';, ';community_guidelines';)" target="_blank">
                커뮤니티 가이드라인
              </a>
            </li>
            <li>
              <a class="" href="https://www.mangoplate.com/terms/youth_protection" onclick="trackEvent(';CLICK_TERMS';, ';youth_protection';)" target="_blank">
                청소년보호정책
              </a>
            </li>

            <li>
              <a href="https://brunch.co.kr/@mangoplate/14" target="_blank">
                홀릭 소개
              </a>
            </li>

            <li>
              <a href="https://www.mangoplate.com/company#contact">
                문의하기
              </a>
            </li>
      </ul>
    </nav>

    <div class="sitemap-location-keywords">
      <div class="keyword_wrap">
        <span class="keyword">인기지역 : </span>
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%9D%B4%ED%83%9C%EC%9B%90" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:0,&quot;keyword&quot;:&quot;이태원&quot;})">
              이태원
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%ED%99%8D%EB%8C%80" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:1,&quot;keyword&quot;:&quot;홍대&quot;})">
              홍대
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EA%B0%95%EB%82%A8%EC%97%AD" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:2,&quot;keyword&quot;:&quot;강남역&quot;})">
              강남역
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EA%B0%80%EB%A1%9C%EC%88%98%EA%B8%B8" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:3,&quot;keyword&quot;:&quot;가로수길&quot;})">
              가로수길
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%8B%A0%EC%B4%8C" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:4,&quot;keyword&quot;:&quot;신촌&quot;})">
              신촌
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EB%AA%85%EB%8F%99" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:5,&quot;keyword&quot;:&quot;명동&quot;})">
              명동
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EB%8C%80%ED%95%99%EB%A1%9C" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:6,&quot;keyword&quot;:&quot;대학로&quot;})">
              대학로
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%97%B0%EB%82%A8%EB%8F%99" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:7,&quot;keyword&quot;:&quot;연남동&quot;})">
              연남동
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EB%B6%80%EC%82%B0" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:8,&quot;keyword&quot;:&quot;부산&quot;})">
              부산
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%ED%95%A9%EC%A0%95" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:9,&quot;keyword&quot;:&quot;합정&quot;})">
              합정
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EB%8C%80%EA%B5%AC" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:10,&quot;keyword&quot;:&quot;대구&quot;})">
              대구
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%97%AC%EC%9D%98%EB%8F%84" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:11,&quot;keyword&quot;:&quot;여의도&quot;})">
              여의도
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EA%B1%B4%EB%8C%80" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:12,&quot;keyword&quot;:&quot;건대&quot;})">
              건대
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EA%B4%91%ED%99%94%EB%AC%B8" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:13,&quot;keyword&quot;:&quot;광화문&quot;})">
              광화문
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%9D%BC%EC%82%B0" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:14,&quot;keyword&quot;:&quot;일산&quot;})">
              일산
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%A0%9C%EC%A3%BC" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:15,&quot;keyword&quot;:&quot;제주&quot;})">
              제주
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EA%B2%BD%EB%A6%AC%EB%8B%A8%EA%B8%B8" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:16,&quot;keyword&quot;:&quot;경리단길&quot;})">
              경리단길
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%ED%95%9C%EB%82%A8%EB%8F%99" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:17,&quot;keyword&quot;:&quot;한남동&quot;})">
              한남동
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%82%BC%EC%B2%AD%EB%8F%99" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:18,&quot;keyword&quot;:&quot;삼청동&quot;})">
              삼청동
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EB%8C%80%EC%A0%84" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:19,&quot;keyword&quot;:&quot;대전&quot;})">
              대전
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%A2%85%EB%A1%9C" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:20,&quot;keyword&quot;:&quot;종로&quot;})">
              종로
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%84%9C%EC%B4%8C" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:21,&quot;keyword&quot;:&quot;서촌&quot;})">
              서촌
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%9E%A0%EC%8B%A4" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:22,&quot;keyword&quot;:&quot;잠실&quot;})">
              잠실
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%82%AC%EB%8B%B9%EC%97%AD" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:23,&quot;keyword&quot;:&quot;사당역&quot;})">
              사당역
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%9D%B8%EC%B2%9C" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:24,&quot;keyword&quot;:&quot;인천&quot;})">
              인천
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%BD%94%EC%97%91%EC%8A%A4" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:25,&quot;keyword&quot;:&quot;코엑스&quot;})">
              코엑스
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%83%81%EC%88%98" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:26,&quot;keyword&quot;:&quot;상수&quot;})">
              상수
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%84%9C%EB%9E%98%EB%A7%88%EC%9D%84" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:27,&quot;keyword&quot;:&quot;서래마을&quot;})">
              서래마을
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%86%A1%EB%8F%84" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:28,&quot;keyword&quot;:&quot;송도&quot;})">
              송도
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EC%99%95%EC%8B%AD%EB%A6%AC" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:29,&quot;keyword&quot;:&quot;왕십리&quot;})">
              왕십리
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EB%B6%84%EB%8B%B9" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:30,&quot;keyword&quot;:&quot;분당&quot;})">
              분당
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%ED%98%9C%ED%99%94" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:31,&quot;keyword&quot;:&quot;혜화&quot;})">
              혜화
            </a>
            |
            <a class="keyword" target="_blank" href="https://www.mangoplate.com/search/%EA%B3%A0%EC%86%8D%ED%84%B0%EB%AF%B8%EB%84%90" onclick="trackEvent(';CLICK_FOOTER_POPULAR_LOCATION';, {&quot;position&quot;:32,&quot;keyword&quot;:&quot;고속터미널&quot;})">
              고속터미널
            </a>
                  </div>
    </div>

    <div class="language-copyrights">
      <p class="select-language">
        <a href="https://www.mangoplate.com/" class="selected">
          한국어
        </a>

        <a href="https://www.mangoplate.com/en">
          English
        </a>

        <a href="https://www.mangoplate.com/zh">
          简体中文
        </a>
      </p>

      <small>
        <p>
          
          ㈜쓰리밀즈컴퍼니<br>(08378) 서울 구로구 디지털로34길 27 1106-7호 11층<br>대표이사: 박현수<br>사업자 등록번호: 742-86-00224 <a href="http://koreavc.or.kr/" target="_blank">[사업자 정보 확인]</a><br>통신판매업 신고번호: 2017-서울구로-01779<br>고객센터: 02-565-5988<br><br>
          <span class="copyrights">© 2023 Threemeals Co., Ltd. All rights reserved.</span>
        </p>
      </small>
    </div>
  </div>
</footer>

<!-- Footer End -->	
</body>
</html>