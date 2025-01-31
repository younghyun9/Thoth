<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://www.google.com/recaptcha/api.js"></script>

<div id="main">
    <div>
        <i class="fas fa-comments fa-2x"> QnA</i>
        <hr> <!-- 페이지 타이틀? -->
    </div>
    <div class="row">
        <div class="col-5 offset-1">
            <h3><i > QnA 작성하기</i></h3></div>
        <div class="col-5 text-right">
            <button type="button" id="listmibtn">
                <i ></i>&nbsp; 목록으로</button>
        </div>
    </div>

    <div class="card card-body bg-light col-10 offset-1">
        <form id="qnafrm" name="qnafrm">

            <div class="form-group row">
                <label class="col-2 col-form-label text-right"
                       for="title">제목</label>
                <input type="text" name="title" id="title"
                       class="form-control border-danger col-9">
            </div>
            <div class="form-group row">
                <label class="col-2 col-form-label text-right"
                       for="userid">작성자</label>
                <input type="text" name="userid" id="userid"
                       class="form-control border-danger col-9"
                       value="${UID}" readonly>
            </div>
            <div class="form-group row">
                <label class="col-2 col-form-label text-right"
                       for="contents">내용</label>
                <textarea class="form-control border-danger col-9"
                          name="contents" id="contents" rows = "15"></textarea>
            </div>
            <div class="form-group row">
                <label class="col-2 col-form-label text-danger text-right">
                    자동<br>입력방지</label>
                <div class="g-recaptcha"
                     data-sitekey="6LfdIwgbAAAAAGZdSMWuY4f3zaKP-dIuhTMUrU8_"></div>
                <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
            </div>


            <div class="form-group row">
                <hr class=col-10>
                <div class="col-12 text-center">
                    <button type="button" id="upqnabtn">
                        <i class="fas fa-check-circle"></i> 입력완료</button>
                    <button type="reset" >
                        <i class="fas fa-times-circle"></i> 입력취소</button>
                </div>
            </div><!-- 버튼들 -->

        </form>

    </div>

</div><!-- 메인 -->
