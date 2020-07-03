<%@include file ="../include/header.jsp" %>
<%@include file="../include/sidebar.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container">
    <h1>FAQ</h1>
      <div id="accordion">
      <c:set value="${faqList}" var="list"/>

          <c:if test="${!empty list}">
          <c:forEach items="${list}" var="dto">
        <div class="card">
            <div class="card-header">
                <a class="card-link" data-toggle="collapse" href="#collapse${dto.getId()}">
                    ${dto.getFaqQuestion()}
                </a>
            </div>
            <div id="collapse${dto.getId()}" class="collapse hide" data-parent="#accordion">
                <div class="card-body">
                        ${dto.getFaqAnswer()}
                </div>
            </div>
        </div>
          </c:forEach>
          </c:if>


    </div>
</div>

<%@include file ="../include/footer.jsp" %>