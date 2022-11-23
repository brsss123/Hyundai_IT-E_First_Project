<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/ui.min.css">

<div id="reviewEdit" class ="layer-pop lg review-layer" tabindex="0" style="display: block;">
<input type="hidden" name="godNo" value="GM0122092695369"> 
<div class="layer-wrap" tabindex="0">
            <div class="layer-header">
                <h2 class="layer-title">리뷰 작성</h2>
            </div>
            <div class="layer-container">
                <div class="layer-content review-write">
                    <div class="write-inner">
                        <section class="write-section">
                        <!--1. 상품 -->
                            <h3 class="sub-title">1. 상품</h3>
                                    <p class="review-product-name">다이아 퀼티드 자켓</p>
                                </section>
                         <!--2. 리뷰제목 입력 --> 
                        <section class="write-section">
                            <h3 class="sub-title">2. 리뷰 제목을 작성해 주세요. <span class="required">(필수)</span></h3>
                            <div class="input-box">
                                <input type="text" id="godEvlSj" name="godGodEvl.godEvlSj" maxlength="50" title="리뷰 제목 작성" placeholder="제목을 입력해 주세요." class="inp-reset">
                                <div class="etc">
                                    <button type="button" class="btn-clear"><span>지우기</span></button>
                                </div>
                            </div>
                            <span class="str-length"><span id="reviewSjLength">0</span>/50</span>
                        </section>

                         <!--3. 착용자 정보 입력 -->
                      <section class="write-section">
                            <h3 class="sub-title">3. 실 착용자의 정보를 입력해 주세요.</h3>
                            <div class="write-user-info type2">
                                <div class="cell">
                                    <div class="height">
                                        <label for="userInfo1" class="tit">키</label>
                                        <input type="text" id="userInfo1" name="godGodEvlWearInfoList[0].wearInfoSectDetailVal" title="키 입력" placeholder="키" value="" numberonly="" maxlength="3"> cm
                                        <input type="hidden" name="godGodEvlWearInfoList[0].wearInfoSectCd" value="WEAR_INFO_SECT_HG">                                   
                                                                                              
                                    <label for="userInfo1" class="tit">몸무게</label>
                                        <input type="text" id="userInfo1" name="godGodEvlWearInfoList[0].wearInfoSectDetailVal" title="몸무게 입력" placeholder="몸무게" value="" numberonly="" maxlength="3"> kg
                                        <input type="hidden" name="godGodEvlWearInfoList[0].wearInfoSectCd" value="WEAR_INFO_SECT_HG">
                                </div>
                                <div class="cell">
                                    <div>
                                        <label class="tit">체형</label>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="write-user-info mt10">
								
							</div>
                        </section>
                        <section class="write-section">
                            <h3 class="sub-title">4 . 어떤 점이 좋았나요? <span class="required">(필수)</span></h3>
                            <textarea cols="30" rows="10" id="godEvlCont" name="godGodEvl.godEvlCont" title="좋은 점 작성" maxlength="1000" placeholder="상품 문의는 상품 정보 우측 하단의 [상품문의] 버튼을 누르시거나, 또는 [MY PAGE > 리뷰 및 문의 > 1:1문의] 메뉴를 이용해 주시기 바랍니다."></textarea>
                            <span class="str-length"><span id="reviewContLength">0</span>/1,000</span>
                        </section>
                    </div>
                    <div class="write-inner">
                        
                                <section class="write-section">
                            <h3 class="sub-title">6. 평점을 남겨주세요. <span class="required">(필수)</span></h3>
                            <div class="point-select">
                                <span>
                                    <input type="radio" name="godGodEvl.totEvlScore" id="pdPointSel5" value="5">
                                    <label for="pdPointSel5">5점</label>
                                    <input type="radio" name="godGodEvl.totEvlScore" id="pdPointSel4" value="4">
                                    <label for="pdPointSel4">4점</label>
                                    <input type="radio" name="godGodEvl.totEvlScore" id="pdPointSel3" value="3">
                                    <label for="pdPointSel3">3점</label>
                                    <input type="radio" name="godGodEvl.totEvlScore" id="pdPointSel2" value="2">
                                    <label for="pdPointSel2">2점</label>
                                    <input type="radio" name="godGodEvl.totEvlScore" id="pdPointSel1" value="1">
                                    <label for="pdPointSel1">1점</label>
                                </span>
                            </div>
                            </section>
                        <section class="write-section">
                            <h3 class="sub-title">7. 사진을 첨부해 주세요.</h3>
                            <div class="upload-item">
                                <div class="upload-item-list">
                                    <span class="item-box">
                                            <input type="hidden" name="godGodEvlAtchFileList[0].atchFileNm" value="">
                                            <input type="hidden" name="godGodEvlAtchFileList[0].atchFileUrl" value="">
                                            <input type="hidden" name="godGodEvlAtchFileList[0].atchFileTurn" value="">
                                            <input type="hidden" name="godGodEvlAtchFileList[0].imgRtatNum" value="0">
                                            <input type="hidden" name="godGodEvlAtchFileNames" value="">
                                            <span class="btn-upload">
                                                <input type="file" name="file" id="file-0" index="0" title="파일 등록" onchange="checkFileSizeAjax(event,this);">
                                            </span>
                                        </span>
                                    
                                    
                                    
                                    
                                    </div>
                                <p class="txt">* 이미지 첨부 시 10M 이하의 jpg, png, gif 파일을 최대 5장까지 등록하실 수 있습니다.</p>
                            </div>
                        </section>
                    </div>

                    <section class="alert-section">
                        <h3 class="sub-title">상품리뷰 작성시 주의사항</h3>
                        <ul class="txt-list">
                            <li>작성하신 리뷰는 마이페이지에서 확인 가능합니다.</li>
                            <li>작성하신 리뷰는 상품상세 외 H패션몰 내 다른 화면에서 판매 목적으로 전시될 수 있습니다. ( ex. 메인, 프로모션 리뷰 PLUS, STYLE 콘텐츠 등)</li>
                            <li>리뷰 작성 시 이메일, 휴대폰번호 등 개인정보 입력은 금지되어있습니다.<br>개인 정보 입력 시 발생하는 모든 피해 및 저작권 침해에 대한 책임은 작성자에게 있습니다.</li>
                            <li>다음과 같은 경우 작성하신 리뷰가 통보없이 미노출 처리될 수 있으며, 리뷰 포인트가 미지급될 수 있습니다.
                                <ul class="txt-list2">
                                    <li>상품상세 이미지를 캡쳐해서 사용</li>
                                    <li>타 회원의 리뷰 이미지를 도용</li>
                                    <li>리뷰내용이 부적합하거나 비속어 사용</li>
                                </ul>
                            </li>
                        </ul>
                    </section>
                    <div class="btn-box">
                        <button type="button" onclick="saveGodEvl();" class="btn-type2-lg"><span>등록</span></button>
                    </div>

                </div>
            </div>
            <button type="button" class="btn-layer-close" onclick="layer.close('reviewEdit');">닫기</button>
        </div>
</div>
<%@ include file="../layout/footer.jsp"%>