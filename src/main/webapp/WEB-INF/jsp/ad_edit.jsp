<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<sec:authentication var="username" property="principal.username"/>
<c:set var="isOwnAd" value="${ad.owner.username eq username}" />
<c:choose>
    <c:when test="${isOwnAd}">
        <c:set var="adBackgroundColorClass" value="own-ad" />
    </c:when>
    <c:otherwise>
        <c:set var="adBackgroundColorClass" value="bgc-fff" />
    </c:otherwise>
</c:choose>

<!DOCTYPE html>
<html lang="de">
<jsp:include page="modules/head.jsp"/>
<body class="user">
<jsp:include page="modules/header.jsp"/>
<form:form action="/ad/${ad.id}" method="post" enctype="multipart/form-data">
<div class="container-fluid" id="body-container">
<div class="container container-pad" id="ad-listing">

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="input-group">
                <span class="input-group-addon"><spring:message code="ad.edit.title"/></span>
                <spring:message code="ad.edit.title" var="title"/>
                <form:input path="title" placeholder="${title}" cssClass="form-control" />
            </div>
            <div class="brdr ${adBackgroundColorClass} pad-10 box-shad btm-mrg-20">
                <div class="row">
                    <div class="col-md-4">
                        <p><span class="glyphicon glyphicon-user"></span> ${ad.owner.firstname} ${ad.owner.lastname}</p>
                        <p><span class="glyphicon glyphicon-envelope"></span> ${ad.owner.zip} ${ad.owner.town}</p>
                    </div>
                    <div class="col-md-4">
                        <p><span class="glyphicon glyphicon-earphone"></span> ${ad.owner.phonenumber}</p>
                        <p><span class="glyphicon glyphicon-calendar"></span> ${ad.printCreatedTimestamp()}</p>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon"><spring:message code="ad.edit.price"/> / &euro;</span>

                            <div class="form-group">
                                <form:input path="price" cssClass="form-control"/>
                                <form:errors path="price" cssClass="has-error"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <img class="full-image" alt="image" src="/photo?fn=${ad.id}/${ad.photofilename}">
                        <spring:message code="ad.edit.image"/><input type="file" name="adphoto"><br />
                     </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3><spring:message code="ad.edit.description"/></h3>
                        <form:textarea path="description" rows="20" cssClass="form-control" />
                    </div>
                </div>
                <c:if test="${isOwnAd}">
                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-6">
                            <div class="pull-right btn-group">
                                <form:button class="btn btn-primary">
                                    <span class="glyphicon glyphicon-check"></span> <spring:message code="ad.edit.save"/>
                                </form:button>
                                <form:button type="button" class="btn btn-danger" onClick="location.href='/ad/${ad.id}'">
                                    <span class="glyphicon glyphicon-arrow-left"></span> <spring:message code="ad.edit.discard"/>
                                </form:button>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>

</div>
</div>
</form:form>
<jsp:include page="modules/scripts.jsp"/>
</body>
</html>