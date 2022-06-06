<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="container">
	<c:choose>
   		<c:when test="${ diaryList ne null }">
	   		<c:forEach items="${ diaryImageList }" var="diaryImage" >
				<c:if test="${diaryImage.diaryId eq diaryList[0].diaryId}" >
		   			<div class="header-page ef-parallax-bg" style="background-image:url('${diaryImage.path}'), url(images/blog-header.jpg)">
				        <div class="col-md-6 col-md-offset-6">
				            <div class="row">
				                <div class="inner-content">
				                    <div class="header-content">
				                        <h1>${ diaryList[0].title }</h1>
				                        <hr>
				                        <p>${ diaryList[0].content }</p>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
				</c:if>
			</c:forEach>
   		</c:when>
   		<c:otherwise>
   			<div class="header-page ef-parallax-bg" style="background-image:url(images/blog-header.jpg)">
		        <div class="col-md-6 col-md-offset-6">
		            <div class="row">
		                <div class="inner-content">
		                    <div class="header-content">
		                        <h1></h1>
		                        <hr>
		                        <p>로그인이 필요합니다.</p>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
   		</c:otherwise>
   	</c:choose>
		    
</div>

<div class="container margin-top">
    <div class="blog-wrapper">
        <div class="main">
            <ul class="cbp_tmtimeline">
            <c:choose>
            	<c:when test="${ diaryList ne null }">
		            <c:forEach items="${diaryList}" var="diary" varStatus="status">
		                <li>
		                    <div class="cbp_tmtime">
		                        <span>${ diary.diaryDate }</span>
		                    </div>
		                    <div class="cbp_tmicon icon-calendar"></div>
		                    <div class="cbp_tmlabel wow animated fadeInUp" data-wow-delay="0.10s">
		                        <div class="blog-v2-image">
		                        	<c:forEach items="${diaryImageList}" var="diaryImage" >
		                        		<c:if test="${ diaryImage.diaryId eq diary.diaryId }" >
		                            	<img src="${ diaryImage.path }" alt="Blog Post">
		                            	</c:if>
		                            </c:forEach>
		                        </div>
		                        <a href="diary/detail.do">
		                            <h1>${ diary.title }</h1>
		                        </a>
		
		                        <p>${ diary.content }</p>
		                    </div>
		                </li>
		                </c:forEach>
            	</c:when>
            	<c:otherwise>
            	
            	</c:otherwise>
            </c:choose>
                <%-- <c:forEach var="list1" items="${list1}" var="list2" items="${list2}">
				    ${list1.name}
				    ${list2.name}
				</c:forEach> --%>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <ul class="pagination-ef wow animated fadeInUp" data-wow-delay="0.20s">
        <li>
            <a href="#">
                <i class="pe-7s-angle-left"></i>
            </a>
        </li>
        <li class="current"><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">...</a></li>
        <li><a href="#">8</a></li>
        <li>
            <a href="#">
                <i class="pe-7s-angle-right"></i>
            </a>
        </li>
    </ul>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>