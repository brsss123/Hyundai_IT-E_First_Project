<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script type="text/javascript" src="${contextPath}/js/product/productDetail.js"></script>
<div id="container">
	<div class="content-response">
		<div class="product-view-top">
			<div class="product-view-img">
				<div id="pdViewSlide" class="product-view-slide" data-slide-length="${imgSize}">

					<div class="swiper-container">
						<div id="productImgSlide" class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">

							<c:forEach var="imgVO" items="${imgList}">
								<c:set var="i" value="${i+1}" />
								<div class="swiper-slide swiper-slide-duplicate" style="text-align: center;" data-swiper-slide-index="${i}">
									<img src="${contextPath}/${imgVO.img_loc}" style="width: 535.5px;">
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="swiper-pagination">
						<button type="button" class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 1">1</button>
						<button type="button" class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2">2</button>
						<button type="button" class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 3">3</button>
						<button type="button" class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 4">4</button>
						<button type="button" class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 5">5</button>
						<button type="button" class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 6">6</button>
					</div>
					<div class="slide-nav type6">
						<button type="button" class="slide-nav-prev" tabindex="0" role="button" aria-label="Previous slide">이전</button>
						<button type="button" class="slide-nav-next" tabindex="0" role="button" aria-label="Next slide">다음</button>
					</div>
				</div>
			</div>
			<script src="https://unpkg.com/swiper/swiper-bundle.min.js">
				
			</script>
    <script>

        var mySwiper = new Swiper('.swiper-container', {
            // 슬라이드를 버튼으로 움직일 수 있습니다.
            navigation: {
                nextEl: '.slide-nav-prev',
                prevEl: '.slide-nav-next',
            },

            // 현재 페이지를 나타내는 점이 생깁니다. 클릭하면 이동합니다.
            pagination: {
                el: '.swiper-pagination',
                type: 'bullets',
            },

            // 현재 페이지를 나타내는 스크롤이 생깁니다. 클릭하면 이동합니다.
            scrollbar: {
                el: '.swiper-scrollbar',
                draggable: true,
            },

            // 3초마다 자동으로 슬라이드가 넘어갑니다. 1초 = 1000
            autoplay: {
                delay: 3000,
            },
        });
        var mySwiper = new Swiper('.swiper-container', {

            // 여기에 옵션을 넣어야 합니다.

        });
    </script>



			<div class="product-view-info">
				<div class="etc-btn">
					<button type="button" class="btn-like " onclick="addBukmk(this,addBukmkCallback);" godno="GM0122103109697">
						<strong class="godBukmkCnt" cnt="6" godno="GM0122103109697"></strong> <span>좋아요</span>
					</button>
					<span class="bar">|</span>
					<button type="button" class="btn-share" onclick="layerBox.open('layerShare');">
						<span>공유</span>
					</button>
				</div>

				<p class="item-brand">
					<a href="#"> ${pVO.pro_gender}</a>
				</p>

				<p class="item-tag">
					<span class="code">${pVO.brand_name}</span>
				</p>
				<p class="item-name">${pVO.pro_name}</p>

				<div class="item-price">
					<input type="hidden" id="pro-price" value="${pVO.pro_price}">
					<p class="price">
						<span> <fmt:formatNumber value="${pVO.pro_price}" pattern="#,###" /></span>
					</p>
				</div>

				<!-- 상품 선택 정보 -->
				<div class="product-view-option">
					<div class="row size gnrlOpt">
						<div class="select" name="optSelect0_top">
							<button type="button" class="sel-btn" onclick="select.trigger('option');">
								사이즈를 선택하세요. <span class="val" id="selSize"></span>
							</button>
							<div class="sel-list">
								<ul optcd="SIZE_OPT">
									<c:forEach var="sVO" items="${sList}">
										<li><label> <input type="radio" onchange="selectActive('pdStickySelSize_0',0,'option');" onclick="showTotal();"> <span>${sVO.size_name}</span>
										</label></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>

					<div class="option-bot">
						<div name="qtyDiv" class="row quantity aditQtyDiv" style="" godno="" selectoptionyn="Y">
							</strong> <span class="item-count">
								<button type="button" class="btn-minus" onclick="quantityCalc('minus');">
									<span>빼기</span>
								</button> <input type="number" name="qtySpinner" class="input-num aditGodQty" id="pro_qty" value="1" onkeyup="changeQty(this);">
								<button type="button" class="btn-plus" onclick="quantityCalc('plus');">
									<span>더하기</span>
								</button>
							</span>
						</div>
						<div class="total" style="display: none;">
							<strong class="tit">합계</strong> <span class="num"> <fmt:formatNumber value="${pVO.pro_price}" pattern="#,###" />
							</span>
						</div>
						<div class="btn-box">
							<button name="btnShoppingBag" type="button" class="btn-type4-xlg btnShoppingBag" onclick="frmSubmit();">
								<span>장바구니</span>
							</button>
						</div>
					</div>
				</div>

				<form id="addCartFrm" name="addCartFrm" action="${contextPath}/Hfashion?command=cart" method="post" style="display: none;">
					<input id="pro_no" name="pro_no" value="${pVO.pro_no}"> <input id="size_name" name="size_name" value=""> <input id="size_amount" name="size_amount" value=""> <input
						type="hidden" name="ex_action" value="detail">
				</form>


				<div class="info-bot">
					<ul class="list">
						<li class="row"><span class="tit">배송비</span> <span> <input type="hidden" id="otskrDlvAditCost" value="Y"> 30,000이상 구매시 무료(도서산간추가 3000원)
								<button type="button" class="btn-tooltip" onclick="tooltip('dlv-hardarea'); $('.list-common.address').niceScroll(dScroll.opt);">툴팁보기</button>
						</span>

							<div class="dlv-hardarea" style="display: none;">
								<ul class="txt-list">
									<li>구매하신 상품에 따라 배송비가 부과됩니다.</li>
									<li>도서산간 지역은 배송비가 추가 될 수 있습니다.<br> 해당 지역은 FAQ를 통해 확인하실 수 있습니다.
									</li>
									<li>H.Point, 한섬마일리지, H.Plus 등의 할인수단으로<br> 배송비 결제가 불가합니다.
									</li>
								</ul>
							</div></li>

						<li><span class="tit">한섬마일리지</span> <span>최대 6% 적립
								<button type="button" class="btn-tooltip" onclick="tooltip('mileage-info2');">
									<span>툴팁보기</span>
								</button>
								<li><span class="tit">H포인트</span> <span>0.1% 적립
										<button type="button" class="btn-tooltip" onclick="tooltip('hpoint-info2', null, null,null,null);">
											<span>툴팁보기</span>
										</button>
								</span></li>
					</ul>
				</div>
			</div>

		</div>
		<div class="product-view-detail">
			<div class="product-detail-tab tab-wrap2 anchor-wrap">
				<!-- 상품 상세 정보 -->
				<section id="tabContentReview" class="anchor-section product-detail-review">
					<h3 class="sec-title">리뷰</h3>
					<div class="review-total">
						<div class="member-total-point">
							<h4 class="tit">사용자 총 평점</h4>
							<p class="point size-l">
								<span class="ico" style="width: 96%;">별점</span> <span class="num">4.8</span>
							</p>
						</div>
					</div>
					<div class="product-detail-review-list">
						<div class="head">
							<div id="prdReviewFilter" class="opt">

								<div class="select">
									<input type="number" id="search_height" placeholder="키" default='' />
								</div>
								<div class="select">
									<input type="number" id="search_weight" placeholder="몸무게" value='' />
								</div>
								<div class="select">
									<span>사이즈</span>
									<button type="button" id="btn_size" class="sel-btn on" placeholder="사이즈선택" onclick="select.trigger();"></button>
									<div class="sel-list">
										<ul>
											<c:forEach var="sVO" items="${sList}">
												<li><label> <input type="radio" name="optValCd1" value="${sVO.size_name}"><span>${sVO.size_name}</span>
												</label></li>
											</c:forEach>

										</ul>
									</div>
								</div>
								<button type="button" class="btn-type1-sm" id="btn_search">
									<span>필터적용</span>
								</button>
							</div>
							<div class="opt"></div>
						</div>
						<div id="allReviewList" class="board-list board-review ui-fold" style="">
							<ul class="list-content">
							</ul>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	get_review();
	$("#btn_search").click(get_review);
})

	function get_review() {
		var pro_no = ${pVO.pro_no};
		var height = $("#search_height").val();
		var weight = $("#search_weight").val();
		var val_size = $("#btn_size").text();
		$.ajax({
			url : "Hfashion?command=reviewSearch",
			data : {
				pro_no : pro_no,
				height : height,
				weight : weight,
				pro_size : val_size
			},
			success : function(result) {
				 var obj = JSON.parse(result);
				 console.log(obj);
				 var row ="";
				 for(var i = 0; i<obj.length;i++){
					 row +=`<li class='on'><div class='list-row fold-header'><div class='cell-title'><ul class='etc-info'><li><span class='point size-m'><span class='ico' style='width: 100%'>별점 \${obj[i].start_rating}점</span></span></li>
					        <li><button type='button' class='btn-like2' onclick='addGodEvlLikeCount(this,addLikeList);' godevlturn='1' reviewgodno='GM0122092795931'><span class='like-count' likecnt='1'>\${obj[i].review_like}</span>
				          </button></li><li><span class='date'>\${obj[i].review_date}</span></li></ul><p class='title-review'>\${obj[i].review_title}<i class='icon-attach'>이미지 첨부</i></p><button type='button' class='btn-fold'>열기</button>
				    </div></div><div class='fold-cont open'><div class='review-group'><ul class='review-prd-info'><li><div class='prd-name'>\${obj[i].user_id}</div></li>
				        <li><div class='prd-option'>\${obj[i].height}cm ,\${obj[i].weight}kg<em class='prd-option-color'> <span class='pdColor-/colorchips/GM0122092795931_COLORCHIP.jpg'>구매옵션 : \${obj[i].product_option}</span></em>
				          </div></li></ul><ul class='files'><li class='img-file'><button type='button' onclick='layerViewImg();' style='background-image: url(https://cdn.hfashionmall.com/contents/review/734372004212235.jpeg); transform: rotate(0deg);'>
				            <img src='https://cdn.hfashionmall.com/contents/review/734372004212235.jpeg' alt='7AE074DE-6EE9-4107-BFFF-4E1874F1AB83' style='transform: rotate(0deg);'></button>
				        </li></ul><div class='txt-box'>\${obj[i].review_content}</div><div class='review-report'>
				        <button type='button' class='btn-report' onclick='alert('로그인 후 참여 가능합니다.');location.href='/public/member/login''></button></div></div></div></li>`;
				 }
				 $(".list-content").html(row);
			},
			error : function(e) {
				alert('조회 실패');
			}
		})
	}
</script>



<%@ include file="../layout/footer.jsp"%>