<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file ="../include/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3">
                    <div class="btn-group btn-group-lg btn-group-vertical" role="group">
                        <button class="btn btn-warning" type="button" onclick="location.href='/shoppingInfo'">
                            쇼핑정보
                        </button>
                        <button class="btn btn-warning" type="button" onclick="location.href='/cart'">
                            장바구니
                        </button>
                        <button class="btn btn-warning" type="button" onclick="location.href='/mileage?id=${sessionScope.member.memberId}'">
                            마일리지
                        </button>
                        <button class="btn btn-warning" type="button" onclick="location.href='/updateInfo'">
                            회원정보수정
                        </button>
                        <button class="btn btn-warning" type="button" onclick="location.href='/unsubscribe'">
                            회원탈퇴
                        </button>
                    </div>
                </div>
                <div class="col-md-9">
                    <h3>
                        회원탈퇴
                    </h3>
                    <div class="page-header">
                        <h4>
                            안내
                        </h4>
                    </div>
                    <p>
                        <span id="docs-internal-guid-014a0ced-7fff-e236-82f6-845d1a7af1ad"></span>
                    </p>
                    <ol>
                        <li>
                            <p role="presentation">
                                <span>회원탈퇴 즉시 회원정보는 즉시 삭제되며 아래의 회원제 서비스의 정보도 삭제됩니다.</span>
                            </p>
                        </li>
                    </ol>
                    <p>
                        <span>- 주문 내역</span>
                    </p>
                    <ol>
                        <li>
                            <p role="presentation">
                                <span>잔여 마일리지는 탈퇴와 동시에 소멸됩니다. [환불 불가]</span>
                            </p>
                        </li>
                        <li>
                            <p role="presentation">
                                <span>회원님의 회원정보(이름,아이디,이메일주소,연락처 등)는 불량 이용자의 재가입 방지, 명예훼손 권리침해 분쟁 및 수사협조를 위해 회원탈퇴 후 3개월간 보관됩니다.</span>
                            </p>
                        </li>
                        <li>
                            <p role="presentation">
                                <span>탈퇴후에는 동일한 계정으로 재가입이 불가능 하오니 이점 참고 하시기 바랍니다.</span>
                            </p>
                        </li>
                    </ol>

                    <a id="modal-176564" href="#modal-container-176564" role="button" class="btn btn-warning btn-md" data-toggle="modal">
                        탈퇴하기</a>

                    <div class="modal fade" id="modal-container-176564" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="myModalLabel">
                                        정말 탈퇴하시겠습니까?
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    탈퇴한 후에는 회원정보 복구가 불가능합니다.
                                </div>
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-warning" onclick="location.href='/unsubscribe-check?id=${sessionScope.member.memberId}'">
                                        확인
                                    </button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                        취소
                                    </button>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<%@include file ="../include/footer.jsp" %>