<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="newAPI" value="/api/new"/>
<c:url var="newURL" value="/trang-chu./"/>
<!DOCTYPE html>

<html>
    
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
     <meta name="decorator" content="layoutName" /> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>The News Paper - News &amp; Lifestyle Magazine Template</title>
 
   

</head>

<body>
 <div class="editors-pick-post-area section-padding-80-50">
        <div class="container">
<div  class="section-header">
			<p style="font-size:25px; font:arial;"><strong style="color:black">${model.listResult.size()}</strong> kết quả tìm kiếm phù hợp</p>
 <div class="row">
                    
                        <!-- Single Post -->
                        <c:forEach var="item" items="${model.listResult}">
                        
                       		<div class="col-12 col-lg-4"  value="${item.id}">
                          	  <div class="single-blog-post">
                             	   <div class="post-thumb">
                                	    <a href="<c:url value='/baiviet/${item.id}'/>"><img style="weight:275px;height:175px" src="${item.thumbnail}" alt=""></a>
                             	   </div>
                                <div class="post-data">
                                    <a href="<c:url value='/baiviet/${item.id}'/>" class="post-title">
                                        <h6>${item.title}</h6>
                                    </a>
                                   		<div class="post-meta">
                                        	<div class="post-date"><a href="<c:url value='/baiviet/${item.id}'/>">${item.shortDescription}</a></div>
                                    </div>
 				
                              	  </div>
                           		</div>
                       		</div>
				</c:forEach>
			
                      
                </div>
            </div>
          </div>
</div>
                   
         
</body>
</html>
