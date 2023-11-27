<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
 <script src="https://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="utf-8">
<title>맛집 검색</title>
<style type="text/css">
	@charset "UTF-8";
	[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}
	ng\:form{display:block;}
</style>
<style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">

	.fb_hidden{position:absolute;top:-10000px;z-index:10001}
	.fb_reposition{overflow:hidden;position:relative}
	.fb_invisible{display:none}
	.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:'lucida grande', tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}
	.fb_animate{animation:fb_transform .3s forwards}
	.fb_hidden{position:absolute;top:-10000px;z-index:10001}
	.fb_reposition{overflow:hidden;position:relative}
	.fb_invisible{display:none}
	.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:'lucida grande', tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}
	.fb_animate{animation:fb_transform .3s forwards}
	.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}
	.fb_dialog_advanced{border-radius:8px;padding:10px}
	.fb_dialog_content{background:#fff;color:#373737}
	.fb_dialog_close_icon{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}
	.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}
	.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}
	.fb_dialog_close_icon:hover{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}
	.fb_dialog_close_icon:active{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}
	.fb_dialog_iframe{line-height:0}
	.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}
	.fb_dialog_content .dialog_title>span{background:url(https://connect.facebook.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}
	body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}
	.fb_dialog.fb_dialog_mobile.loading{background:url(https://connect.facebook.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}
	.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}
	.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}
	.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}
	.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}
	#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}
	#fb-root #fb_dialog_ipad_overlay.hidden{display:none}
	.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}
	.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}
	.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}
	.fb_dialog_content .dialog_header table{height:43px;width:100%}
	.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}
	.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}
	.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}
	.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}
	.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://connect.facebook.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}
	.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://connect.facebook.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
	.fb_iframe_widget{display:inline-block;position:relative}
	.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}
	.fb_iframe_widget iframe{position:absolute}
	.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}
	.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}
	.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}
	.fb_iframe_widget_fluid span{width:100%}
	.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}
	.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}
	.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}
	.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}
	.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}
	.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}
	.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}
	@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}
	@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}
	@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}
	@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}
	@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}
	@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}
	@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}
	@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}
	@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}
	@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}
	@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}
	@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}
</style>

<link rel="stylesheet" media="screen" href="./css/main_style01.css">


  <script type="text/javascript" async="" src="./망고플레이트_ 나만의 맛집 검색_files/js"></script>
  <script src="./망고플레이트_ 나만의 맛집 검색_files/sdk.js.다운로드" async="" crossorigin="anonymous"></script>
  <script async="" src="./망고플레이트_ 나만의 맛집 검색_files/analytics.js.다운로드"></script>
  <script type="text/javascript" async="" src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
  <script async="async" src="./망고플레이트_ 나만의 맛집 검색_files/f.txt"></script>

  <script id="dfp_ads" type="application/json">
[{"id":21,"platform":"web_desktop","page":"init","inventory":"all","sizes":null,"tag":"/395211568/init/desktop_all","enabled":true,"created_at":"2017-06-23T01:58:50.000+09:00","updated_at":"2018-11-16T17:06:11.000+09:00","args":{"display_type":{"value":"popup"}}},{"id":23,"platform":"web_desktop","page":"home","inventory":"card_list","sizes":[[728,90]],"tag":"/395211568/production/desktop-web.main.sections.atf","enabled":true,"created_at":"2017-06-23T01:59:45.000+09:00","updated_at":"2017-06-23T01:59:46.000+09:00","args":{"start":{"value":0}}},{"id":24,"platform":"web_desktop","page":"home","inventory":"card_list_btf","sizes":[[728,90]],"tag":"/395211568/production/desktop-web.main.sections.btf","enabled":true,"created_at":"2017-06-23T02:00:14.000+09:00","updated_at":"2017-06-23T02:00:15.000+09:00","args":{"start":{"value":2},"every":{"value":2}}},{"id":25,"platform":"web_mobile","page":"home","inventory":"card_list","sizes":[[320,100]],"tag":"/395211568/production/mobile-web.main.sections.atf","enabled":true,"created_at":"2017-06-23T02:00:36.000+09:00","updated_at":"2017-06-23T02:00:37.000+09:00","args":{"start":{"value":0}}},{"id":39,"platform":"web_mobile","page":"home","inventory":"card_list_btf","sizes":[[320,100]],"tag":"/395211568/production/mobile-web.main.sections.btf","enabled":true,"created_at":"2017-09-12T15:51:25.000+09:00","updated_at":"2017-09-12T15:51:25.000+09:00","args":{"start":{"value":2},"every":{"value":2}}},{"id":43,"platform":"web_mobile","page":"init","inventory":"all","sizes":null,"tag":"/395211568/init/mobile_all","enabled":true,"created_at":"2020-02-12T01:57:59.000+09:00","updated_at":"2020-03-23T00:29:37.000+09:00","args":{"display_type":{"value":"popup"},"display":{"value":"once"}}},{"id":53,"platform":"web_mobile","page":"init","inventory":"popop_use_app","sizes":null,"tag":"","enabled":true,"created_at":"2020-01-30T01:49:26.000+09:00","updated_at":"2020-03-06T12:00:28.000+09:00","args":{}},{"id":57,"platform":"web_mobile","page":"init","inventory":"area_use_app","sizes":null,"tag":"","enabled":true,"created_at":"2020-01-30T01:49:26.000+09:00","updated_at":"2020-03-06T12:22:14.000+09:00","args":{}}]
</script>
  <script type="application/ld+json">
    {
      "@context": "http://schema.org",
      "@type": "WebSite",
      "url": "https://www.mangoplate.com",
      "potentialAction": {
        "@type": "SearchAction",
        "target": "https://www.mangoplate.com/search/{search_term_string}",
        "query-input": "required name=search_term_string"
      }
    }
  </script>
</head>
<body class="home_page" onunload="" style="overflow: visible;">


<main class="pg-main">

  <div class="black_screen"></div>
  
<article class="contents main-padding">

<header class="main-header" style="background-image: url(';https://mp-seoul-image-production-s3.mangoplate.com/d8e852bf7058841a7a0694af93af1b9a.jpg';);">
<div>
  <p class="title">솔직한 리뷰, 믿을 수 있는 평점!</p>
  <h1 class="title">망고플레이트</h1>
  <p class="options">
    <a href="https://www.mangoplate.com/#">Download app</a>
    <a href="https://www.mangoplate.com/#">add/Claim restaurant</a>
    <a href="https://www.mangoplate.com/#">Become a holic</a>
  </p>

  <fieldset class="main-search">
    <legend>전체 검색</legend>

    <label class="search-word" for="main-search">
      <span class="icon">검색 :</span>
      <input id="main-search" class="HomeSearchInput" name="main-search" type="text" maxlength="50" placeholder="지역, 식당 또는 음식" autocomplete="off" onclick="trackEvent(';CLICK_SEARCH_MAIN';)">
      <span class="clear_btn">CLEAR</span>
    </label>

    <input class="btn-search" type="submit" value="검색" onclick="trackEvent(';CLICK_KEYWORD_SEARCH';);">
  </fieldset>

  <aside class="shortcut-app type-main">
    
  </aside>
</div>

</header>


<header class="Header Header--Transparent" data-page="home">
  <a href="#" class="Header__Logo" onclick="trackEvent(';CLICK_HEADER_LOGO';);">
    <i class="Header__LogoIcon"></i>
  </a>

  <div class="Header__SearchBox">
    <i class="Header__SearchIcon"></i>

    <label class="Header__SearchInputWrap">
      <input type="text" class="Header__SearchInput" placeholder="지역, 식당 또는 음식" value="" autocomplete="off" maxlength="50">
    </label>

    <button class="Header__SearchInputClearButton">CLEAR</button>
  </div>

  <ul class="Header__MenuList">

    <li class="Header__MenuItem">
      <a href="#" class="Header__MenuLink" onclick="trackEvent(';CLICK_TOP_LIST';)">
        <span class="Header__MenuText">맛집 리스트</span>
      </a>
    </li>

    <li class="Header__MenuItem">
      <a href="#" class="Header__MenuLink" onclick="trackEvent(';CLICK_MANGO_PICK';)">
        <span class="Header__MenuText">망고 스토리</span>
      </a>
    </li>
  </ul>

  <ul class="Header__IconButtonList">
    <li class="Header__IconButtonItem only-mobile Header__IconButtonItem--MenuButton">
      <button class="MenuButton" onclick="trackEvent(';CLICK_MENU';);">
        <i class="MenuButton__Icon"></i>
      </button>
    </li>

    <li class="Header__IconButtonItem Header__IconButtonItem--UserRestaurantHistory">
      <button class="UserProfileButton" onclick="trackEvent(';CLICK_PROFILE';);">
        <i class="UserProfileButton__Picture" style="background-image: url(&quot;https://mp-seoul-image-production-s3.mangoplate.com/web/resources/fljgy-rm4b8v6vni.png&quot;), url(&quot;https://mp-seoul-image-production-s3.mangoplate.com/web/resources/fljgy-rm4b8v6vni.png&quot;);"></i>
        <i class="UserProfileButton__PersonIcon"></i>
        <span class="UserProfileButton__HistoryCount">0</span>
      </button>
    </li>

    <li class="Header__IconButtonItem Header__IconButtonItem--CloseButton Header__IconButtonItem--Hide">
      <button class="Header__CloseButton"></button>
    </li>
  </ul>
</header>

























<!-- ----------------------------------------------------------------  -->
<section class="inner50">
  <div class="container-lnb">

    <header class="main-section-header">
      <h3 class="title"><span style="color: #1B47B3">목적</span>에 따라 찾는 맛집</h3>
      <p class="description">특별한 날인가요? 목적에 맞는 맛집을 쉽게 찾아보세요!</p>
    </header>

    <div class="main-section-keyword">
      <div class="keyword-list">
          <a href="#">바다가 보이는</a>
          <a href="#">테라스가 있는</a>
          <a href="#">새벽까지 영업하는</a>
          <a href="#">가격대비 만족도가 높은</a>
          <a href="#">파인 다이닝을 할 수 있는</a>
          <a href="#">비즈니스 다이닝에 좋은</a>
          <a href="#">프라이빗룸이 있는</a>
          <a href="#">소개팅하기 좋은</a>
          <a href="#">연인과 같이 가면 좋은</a>
          <a href="#">아침을 먹을 수 있는</a>
          <a href="#">술 한잔하기 좋은</a>
          <a href="#">전망이 좋은</a>
          <a href="#">브런치 메뉴가 있는</a>
          <a href="#">전통주 리스트가 좋은</a>
      </div>
      <div class="keyword-more">
        <a href="#">
          <i class="icon-ep-plus-circled"></i> 더 많은 목적별 찾아보기
        </a>
      </div>
    </div>

  </div>
</section>












<!-- ----------------------------------------------------------------  -->

<a class="inbound_banner only-mobile is_background" href="#" onclick="common_ga(';PG_MAIN';, ';CLICK_SALES_LOCAL';)" style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/87pexy8uyxemdom9.png)"></a>

<section class="module popular_top_list_wrap">
  <div class="module_title_wrap">
    <h2 class="title">믿고 보는 맛집 리스트</h2>
      <a class="module_more" href="#" onclick="trackEvent(';CLICK_TOPLIST_LIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;more_link&quot;:&quot;/top_lists&quot;,&quot;more_label&quot;:&quot;리스트 더보기&quot;})">
        리스트 더보기
      </a>
  </div>
  <div class="slider-container toplist-slider">
    <button class="btn-nav prev slick-arrow slick-disabled" style="display: inline-block;" aria-disabled="true"></button>
    <button class="btn-nav next slick-arrow" style="display: block;" aria-disabled="false"></button>

    <div class="top_list_slide slick-initialized slick-slider slick-dotted" role="toolbar">
        
        
        
        
        
        
    <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 3060px; transform: translate3d(0px, 0px, 0px);">
    
    <ul class="list-toplist-slider slick-slide slick-current slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide00" data-slick-index="0" aria-hidden="false">
            <li>
              <img class="center-croping" alt="얼큰한 칼국수 맛집 베스트 20곳 사진" src="./images/kalbest20.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:0,&quot;link_key&quot;:&quot;TK5JMK5&quot;});" tabindex="0">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="1">얼큰한 칼국수 맛집 베스트 20곳</span>
                      <p class="desc" data-ellipsis-id="31">"한국인 맞춤 얼큰칼칼 칼국수 다모여!"</p>
                      <p class="hash">
                          <span>#고추장칼국수 </span>
                          <span>#얼큰칼국수 </span>
                         
                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
            <li>
              <img class="center-croping" alt="일본 라멘 맛집 베스트 70곳 사진" src="./images/japanRamen.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:1,&quot;link_key&quot;:&quot;3ZNDAUF&quot;});" tabindex="0">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="2">일본 라멘 맛집 베스트 70곳</span>
                      <p class="desc" data-ellipsis-id="32">"한국에도 맛있는 라멘집이 이렇게나!"</p>
                      <p class="hash">
                          <span>#일본라멘 </span>
                          <span>#일본 라멘 </span>
                         

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
        </ul>
        
        <ul class="list-toplist-slider slick-slide slick-active" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide01" data-slick-index="1" aria-hidden="false">
            <li>
              <img class="center-croping" alt="여의도 맛집 베스트 50곳 사진" src="./images/dobest50.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:2,&quot;link_key&quot;:&quot;L2K0A__&quot;});" tabindex="0">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="3">여의도 맛집 베스트 50곳</span>
                      <p class="desc" data-ellipsis-id="33">"여의도에서 어디 가야 잘 먹었다고 할까?"</p>
                      <p class="hash">
                          <span>#여의도 </span>
                          <span>#여의도증권가 </span>
                         

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
            
            <li>
              <img class="center-croping" alt="어복쟁반 맛집 베스트 15곳 사진" src="./images/jangbanbest15.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:3,&quot;link_key&quot;:&quot;YMD8AD1&quot;});" tabindex="0">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="4">어복쟁반 맛집 베스트 15곳</span>
                      <p class="desc" data-ellipsis-id="34">"이제 쌀쌀해지면 땡길 어복쟁반!"</p>
                      <p class="hash">
                          <span>#어복쟁반 </span>
                          <span>#소고기전골 </span>
                         

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
        </ul>
        
        
        <ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide02" data-slick-index="2" aria-hidden="true">
            <li>
              <img class="center-croping" alt="한식 주점 베스트 30곳 사진" src="./images/hansicbest30.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:4,&quot;link_key&quot;:&quot;VCFGVTW&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="5">한식 주점 베스트 30곳</span>
                      <p class="desc" data-ellipsis-id="35">"전통주에 한식이 땡기는 날이라면...."</p>
                      <p class="hash">
                          <span>#한식 주점 </span>
                          <span>#한식주점 </span>
                         

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
            
            <li>
              <img class="center-croping" alt="경복궁역 맛집 베스트 45곳 사진" src="./images/kyengbokbest45.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:5,&quot;link_key&quot;:&quot;40BH-E7&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="6">경복궁역 맛집 베스트 45곳</span>
                      <p class="desc" data-ellipsis-id="36">"경복궁역 근처에서 완벽한 한끼!"</p>
                      <p class="hash">
                          <span>#경복궁 </span>
                          <span>#경복궁역 </span>
                          

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
        </ul>
        
        <ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide03" data-slick-index="3" aria-hidden="true">
            <li>
              <img class="center-croping" alt="비빔밥 맛집 베스트 45곳 사진" src="./images/bibimbest45.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:6,&quot;link_key&quot;:&quot;H_LM27W&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="7">비빔밥 맛집 베스트 45곳</span>
                      <p class="desc" data-ellipsis-id="37">"뭐든 비비면 맛있는거 알지?"</p>
                      <p class="hash">
                          <span>#비빔밥 </span>
                          <span>#비빔 </span>
                         

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
            
            <li>
              <img class="center-croping" alt="남양주 맛집 베스트 35곳 사진" src="./images/namyangjubest35.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:7,&quot;link_key&quot;:&quot;Y23DVIM&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="8">남양주 맛집 베스트 35곳</span>
                      <p class="desc" data-ellipsis-id="38">"멋진 뷰와 맛있는 음식을 즐길 수 있는 남양주로 가자"</p>
                      <p class="hash">
                          <span>#남양주 </span>
                          <span>#남양주시 </span>
                         

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
        </ul>
        
        <ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide04" data-slick-index="4" aria-hidden="true">
            <li>
              <img class="center-croping" alt="타르트 맛집 베스트 35곳 사진" src="./images/tartbest35.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:8,&quot;link_key&quot;:&quot;_BJ0VAL&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="9">타르트 맛집 베스트 35곳</span>
                      <p class="desc" data-ellipsis-id="39">"달콤함이 꽉 찬 타르트 맛집 "</p>
                      <p class="hash">
                          <span>#디저트 </span>
                          <span>#타르트 </span>
                          

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
            <li>
              <img class="center-croping" alt="고등어 맛집 베스트 65곳 사진" src="./images/godungbest65.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:9,&quot;link_key&quot;:&quot;XDH1MCL&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="10">고등어 맛집 베스트 65곳</span>
                      <p class="desc" data-ellipsis-id="40">"기름좔좔 고등어 먹고 싶다.."</p>
                      <p class="hash">
                          <span>#고등어 </span>
                          <span>#생선 </span>
                         

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
        </ul>
        
        <ul class="list-toplist-slider slick-slide" style="width: 481px;" tabindex="-1" role="option" aria-describedby="slick-slide05" data-slick-index="5" aria-hidden="true">
            <li>
              <img class="center-croping" alt="문래동 맛집 베스트 30곳 사진" src="./images/munraegest30.jpg">

              <a href="#e" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:10,&quot;link_key&quot;:&quot;JDVH0TU&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="11">문래동 맛집 베스트 30곳</span>
                      <p class="desc" data-ellipsis-id="41">"맛도 분위기도 모두 잡은 문래동 맛집"</p>
                      <p class="hash">
                          <span>#문래동 </span>
                          <span>#문래역 </span>
                        

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
            <li>
              <img class="center-croping" alt="전국 횟집 베스트 55곳 사진" src="./images/hoibest55.jpg">

              <a href="#" onclick="trackEvent(';CLICK_TOPLIST';, {&quot;section_position&quot;:0,&quot;section_title&quot;:&quot;믿고 보는 맛집 리스트&quot;,&quot;position&quot;:11,&quot;link_key&quot;:&quot;BPEPZB1&quot;});" tabindex="-1">
                <figure class="ls-item">
                  <figcaption class="info">
                    <div class="info_inner_wrap">
                      <span class="title" data-ellipsis-id="12">전국 횟집 베스트 55곳</span>
                      <p class="desc" data-ellipsis-id="42">"입 안에 바다를 넣는 듯한 싱싱한 회 한점!"</p>
                      <p class="hash">
                          <span>#회 </span>
                          <span>#횟집 </span>
                        

                      </p>
                    </div>
                  </figcaption>
                </figure>
              </a>
            </li>
        </ul>
        
        </div>
        
        </div>
        
        <ul class="slick-dots" style="display: block;" role="tablist">
	        <li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation00" id="slick-slide00">
	        	<button type="button" data-role="none" role="button" tabindex="0">1</button>
	        </li>
	        <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation01" id="slick-slide01">
	       	 	<button type="button" data-role="none" role="button" tabindex="0">2</button>
	        </li>
	        	<li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation02" id="slick-slide02">
	        <button type="button" data-role="none" role="button" tabindex="0">3</button>
	        </li>
        </ul>
        </div>
  </div>
</section>





  </article>
</main>


<!-- --------------------------------------------------------------------------------------------------------  -->
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
        망고플레이트 페이스북 계정으로 바로가기
      </a>

      <a class="btn instagram" href="https://instagram.com/mangoplate/" target="_blank" onclick="trackEvent(';CLICK_SHARE_INSTA';);">
        망고플레이트 인스타그램 계정으로 바로가기
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
              망고플레이트 채용
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
          
          ㈜ 여기어때컴퍼니<br>서울특별시 강남구 봉은사로 479, 479타워 11층<br>대표이사: 정명훈<br>사업자 등록번호: 742-86-00224 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=7428600224" target="_blank">[사업자정보확인]</a><br>통신판매업 신고번호: 2017-서울강남-01779<br>고객센터: 02-565-5988<br><br>
          <span class="copyrights">© 2023 MangoPlate Co., Ltd. All rights reserved.</span>
        </p>
      </small>
    </div>
  </div>
</footer>

<div class="account_terms_layer">
  <img src="./망고플레이트_ 나만의 맛집 검색_files/ojlwsg-0cpi1dz8p.png" alt="checkbox" style="position:absolute;top: -9999px;display: block">

  <div class="account_terms_layer_header">
    <button class="close_btn">
      <img src="./망고플레이트_ 나만의 맛집 검색_files/zva6r-2wxzbxhw_n.png" alt="arrow">
    </button>

    <span>이용약관 동의</span>
  </div>

  <div class="account_terms_layer_content">
    <div class="account_terms_layer_content_location">
      <p class="terms_content">
        전체 동의
      </p>

      <div class="check_area">
        <button class="check_terms_btn all_terms_btn" data-ischecked="false">
          <img src="./망고플레이트_ 나만의 맛집 검색_files/24_jjq1lbdgzpdnp.png" alt="arrow" title="">
        </button>
      </div>
    </div>

    <p class="sub_content">
      망고플레이트 서비스 이용을 위해 다음의 약관에 동의해 주세요.
    </p>

    <hr class="seper_hr">

    <ul class="account_terms_items">

    </ul>
  </div>

  <button class="account_terms_layer_ok_btn" disabled="true">확인</button>
</div>

<aside class="pop-context pg-login" style="display: none;">
  <div class="contents-box">
    <button class="btn-nav-close" onclick="mp_login_layer.close_layer();">
      닫기
    </button>

    <p class="title">로그인</p>

      <p class="message">
       로그인 하면 가고싶은 식당을 <br>저장할 수 있어요
      </p>

      <p>
        <a class="btn-login facebook" href="https://www.mangoplate.com/#" onclick="trackEvent(';CLICK_LOGIN_FACEBOOK';,';';,';';,';PU_LOGIN';);">
          <span class="text">페이스북으로 계속하기</span>
        </a>

        <a class="btn-login kakaotalk" href="https://www.mangoplate.com/#" onclick="trackEvent(';CLICK_LOGIN_KAKAO';,';';,';';,';PU_LOGIN';);">
          <span class="text">카카오톡으로 계속하기</span>
        </a>

        <a class="btn-login apple" href="https://www.mangoplate.com/#" onclick="trackEvent(';CLICK_LOGIN_APPLE';,';';,';';,';PU_LOGIN';);">
          <span class="text">Apple로 계속하기</span>
        </a>
      </p>
  </div>
</aside>

<div class="login_loading_area">
  <img src="./망고플레이트_ 나만의 맛집 검색_files/ldcyd5lxlvtlppe3.gif" alt="login loading bar">
</div>

<!-- Start Alexa Certify Javascript -->
<script type="text/javascript">
	_atrk_opts = { atrk_acct:"hTunm1akKd60uG", domain:"mangoplate.com",dynamic: true};
	(function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://d31qbv1cthcecs.cloudfront.net/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
</script>
<noscript><img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=hTunm1akKd60uG" style="display:none" height="1" width="1" alt="alexa analytics" /></noscript>
<!-- End Alexa Certify Javascript -->


<div class="dfp_ad_front_popup web_desktop_all all only-desktop" style="display: none;">  <div class="dfp_ad_front_banner_wrap">
    <div class="dfp_ad_front_banner_content">
      <div class="ad_area" id="web_desktop-init-all">
        <div class="ad_wrap"><div class="content" id="web_desktop-init-all-content" data-google-query-id="CI2qwNqWlYIDFZzzTAIdBfsDSg"><div id="google_ads_iframe_/395211568/init/desktop_all_0__container__" style="border: 0pt none;"><iframe id="google_ads_iframe_/395211568/init/desktop_all_0" name="google_ads_iframe_/395211568/init/desktop_all_0" title="3rd party ad content" width="1" height="1" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" role="region" aria-label="Advertisement" tabindex="0" allow="attribution-reporting" data-load-complete="true" data-google-container-id="5" style="border: 0px; vertical-align: bottom;" src="./망고플레이트_ 나만의 맛집 검색_files/saved_resource.html"></iframe></div></div></div>
      </div>
    </div>
  </div>
</div>
<div class="dfp_ad_front_popup web_mobile_all all only-mobile" style="display: none;">  <div class="dfp_ad_front_banner_wrap">
    <div class="dfp_ad_front_banner_content">
      <div class="ad_area" id="web_mobile-init-all">
        <div class="ad_wrap"><div class="content" id="web_mobile-init-all-content"></div></div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
						(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
					m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-39170270-2', 'auto');
	ga('send', 'pageview');

</script>
<script src="./망고플레이트_ 나만의 맛집 검색_files/vendor.all.min-171ba8a2119e0244ad0a6c04c88562463c589325602761212c8fff8e740c7e7b.js.다운로드"></script>
<!-- Facebook SDK -->
<script id="facebook-jssdk" src="./망고플레이트_ 나만의 맛집 검색_files/sdk.js(1).다운로드"></script>
<script type="text/javascript">
  // \x3C/ is <
  if (!window.FB) {
    $("#facebook-jssdk").remove();
    document.write('<script id="facebook-jssdk" src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/facebook_sdk_20190510.js">\x3C/script>')
  }
</script>
<!-- Kakao SDK -->
<script src="./망고플레이트_ 나만의 맛집 검색_files/kakao.min.js.다운로드"></script>
<!-- Apple SDK -->
<script src="./망고플레이트_ 나만의 맛집 검색_files/appleid.auth.js.다운로드"></script>
<script type="text/javascript">
  if (!window.Kakao) {
    document.write('<script src="//developers.kakao.com/sdk/js/kakao.min.js">\x3C/script>')
  }
  if (!window.AppleID) {
    document.write('<script src="//appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js">\x3C/script>')
  }
  // I18n Default Setting
  if (window.I18n) {
    I18n.defaultLocale = "ko";
    I18n.locale = "ko";
  }
</script>
<script type="text/javascript" src="./망고플레이트_ 나만의 맛집 검색_files/branch-latest.min.js.다운로드"></script>
<!-- Branch io SDK -->
<script type="text/javascript" charset="utf-8">
  // \x3C/ is <
</script>

<script src="./망고플레이트_ 나만의 맛집 검색_files/home.all.min-d8de33c314ec393485134d1049443d3163d6559621e99e6c5218262cb663151a.js.다운로드"></script>
<script src="./망고플레이트_ 나만의 맛집 검색_files/home-13c8168c4ebd9bb42ab1.js.다운로드"></script><iframe src="./망고플레이트_ 나만의 맛집 검색_files/container.html" style="visibility: hidden; display: none;"></iframe>




<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div><iframe src="./망고플레이트_ 나만의 맛집 검색_files/aframe.html" width="0" height="0" style="display: none;"></iframe></body><iframe name="goog_topics_frame" src="./망고플레이트_ 나만의 맛집 검색_files/topics_frame.html" style="display: none;"></iframe>







</body>
</html>