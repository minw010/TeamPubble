<%@include file ="../include/header.jsp" %>
<%@include file="../include/sidebar.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>공지사항</h1>
<div class="row">
    <c:set var="list" value="${estimateList}"/>
    <div class="col-md-10" id="menu_body">
        <br/>
        <table class="table table-bordered" id="member_list_tables" align="center">
            <thead>
            <tr>
                <th>
                    글번호
                </th>
                <th>
                    글제목
                </th>
                <th>
                    작성일
                </th>
                <th>
                    작성자
                </th>
            </tr>   
            </thead>
            <tbody>
            <c:if test="${!empty list}">

                <c:forEach items="${list}" var="dto">
                    <tr>
                        <td>
                                ${dto.getId()}
                        </td>
                        <td>
                                ${dto.getBoardTitle()}
                        </td>
                        <td>
                                ${dto.getBoardDate()}
                        </td>
                        <td>
                                ${dto.getBoardMember().getMemberName()}
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>
    </div>
    <div class="col-md-2">
    </div>

</div>
<%@include file ="../include/footer.jsp" %>