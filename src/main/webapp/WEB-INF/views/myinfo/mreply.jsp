<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- 줄바꿈 기호를 변수로 생성 : br 태그로 변환 필요! --%>
<c:set var="newChar" value="
" scope="application" />



<div id="main">
    <div>
        <h1><i class="fas fa-comments"></i> QnA</h1>
        <hr>
    </div> <!-- 페이지 타이틀? -->
    <div>

        <br>

        <div class="row">
            <table class="table col-10 offset-1">
                <tr class="tbbg1 text-center"><th colspan="2">
                    <h2>${mi.title}</h2>
                </th></tr>
                <tr class="tbbg2">
                    <td style="width: 50%">${mi.userid}</td>
                    <td class="text-right">${mi.regdate}</td></tr>
                <tr class="tbbg3 bdcsize"><td colspan="2">
                    ${fn:replace(mi.contents, newChar, "<br>")}
                </td></tr>
            </table>
        </div><!-- 가슴 -->
        <div class="row">
            <div class="col-5 offset-1">
                <%--자신이 작성한 글 이외에는 보이면 안됨--%>
                <c:if test="${not empty UID and UID eq mi.userid}">
                    <button type="button" >
                        <i ></i> 수정하기</button>

                    <button type="button" >
                        <i ></i> 삭제하기</button>
                </c:if>
            </div>
            <div class="col-5 text-right">
                <a href="/myinfo/mlist">
                    <button type="button" class="btn btn-secondary" id="listmibtn">
                        <i class="fas fa-list"></i>&nbsp; 목록으로</button></a>
            </div>
        </div><!-- 배 -->

    </div> <!-- 본문글 -->
    <br>
    <div>
        <div class="row">
            <h3 class="col-10 offset-1"><i class="far fa-comments"></i> 답변</h3></div>
        <table class="table col-10 offset-1">
            <c:forEach var="r" items="${rps}">
                <c:if test="${r.mrno eq r.rpno}">
                    <tr><td><h4>${r.userid}</h4></td>
                        <td><div class="cmtbg1">${r.regdate}
                            <span style="float:right">
                            <c:if test="${not empty UID}">
                                <a href="javascript:addReply('${r.mrno}')">[추가]</a>
                            </c:if>
                            <c:if test="${UID eq r.userid}"> [수정] [삭제] </c:if>
                        </span></div>
                            <p>${r.reply}</p></td></tr>
                </c:if>
                <c:if test="${r.mrno ne r.rpno }">
                    <tr><td></td>
                        <td><div class="cmtbg2">
                            <span>${r.userid}</span>
                            <span class="pushright">${r.regdate}</span></div>
                            <p>${r.reply}</p></td></tr>
                </c:if>
            </c:forEach>
        </table>
    </div> <!-- 댓글목록 -->
    <div>
        <div class="row">
            <form name="replyfrm" id="replyfrm"
                  class="card card-body bg-light col-10 offset-1">
                <div class="form-group row justify-content-center">
                    <label class="col-form-label col-2 pushdwn"
                           for="reply">${UID}</label>
                    <textarea class="form-control col-7"
                              name="reply" id="reply" rows="5"></textarea>&nbsp;&nbsp;
                    <c:if test="${not empty UID}">
                        <button class="form-control col-2 pushdwn"
                                type="button" id="newmrbtn">
                            <i class="fas fa-comment-dots"></i> 댓글쓰기</button>
                    </c:if>
                </div>
                <input type="hidden" name="userid" value="${UID}" />
                <input type="hidden" name="mino" value="${param.mino}" />
            </form>
        </div>

    </div> <!-- 댓글쓰기 -->
</div>

<!-- 대댓글 작성을 위한 모달 대화 상자 -->
<div class="modal hide" id="replyModal" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal=header">
                <h3 class="modal-title">대댓글 쓰기</h3>
            </div>
            <div class="modal=body">
                <form name="rpfrm" id="rpfrm" class="well form-inline">
                    <textarea name="reply" id="rreply"
                              rows="8" cols="75" ></textarea>
                    <input type="hidden" name="userid" value="${UID}">
                    <input type="hidden" name="mino" value="${param.mino}">
                    <input type="hidden" name="rpno" id="rpno">
                </form>
            </div>
            <div class="modal=footer">
                <button type="button" id="newrrpbtn" class="btn btn-warning">
                    대댓글 작성
                </button>
            </div>
        </div>
    </div>
</div>
