
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel = "stylesheet" href = "slider.css">
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
        <ul class="list-group category_block">
            <c:forEach items="${listCC}" var="o">
                <li class="list-group-item text-white ${tag == o.cid ? "active":""}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
            </c:forEach>

        </ul>
    </div>
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase" >Best Selling Prorduct</div>
        <div class="card-body">
            <img class="img-fluid" src="https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-starlight-1-600x600.jpg" />
            <h5 class="card-title" style="text-align: center;">Iphone 13</h5>
            
            <p class="bloc_left_price">100.0 $</p>
        </div>
    </div>
   
</div>