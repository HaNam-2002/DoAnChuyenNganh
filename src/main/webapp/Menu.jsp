<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--begin of menu-->

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">        
            <c:if test="${sessionScope.acc.isAdmin == 1}">
                <li class="nav-item">   
                    <a class="nav-link" href="Account.jsp">Manager Account</a>              	      
                </li>
              </c:if>
               <c:if test="${sessionScope.acc.isSell == 1 }">
                <li class="nav-item">   
                    <a class="nav-link" href="manager">Manager Product Sell</a>              	      
                </li>
              </c:if>
              <c:if test="${sessionScope.acc.isAdmin == 1 }">
                <li class="nav-item">   
                    <a class="nav-link" href="manageradmin">Manager Product Admin</a>              	      
                </li>
              </c:if>
              <c:if test="${sessionScope.acc != null}">
                <li class="nav-item">
                    <a class="nav-link" href="#">Hello ${sessionScope.acc.user} </a>
                </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 0  && sessionScope.acc.isAdmin == 1 || sessionScope.acc.isSell == 0  && sessionScope.acc.isAdmin == 0 }">
                <li class="nav-item">
                    <a class="nav-link" href="Changepassword.jsp">Change Password</a>
                </li>
                  </c:if>
                <c:if test="${sessionScope.acc != null}">
                <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">Logout</a>
                </li>
                  </c:if>
                <c:if test="${sessionScope.acc == null}">
                <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">Login</a>
                </li>
                  </c:if>
                  <c:if test="${sessionScope.acc.isSell == 0  && sessionScope.acc.isAdmin == 0 }">
                <li class="nav-item">
                    <a class="nav-link" href="Contact.jsp">Contact US</a>
                </li>
                  </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <c:if test="${sessionScope.acc != null}">
                <a class="btn btn-success btn-sm ml-3" href="CartDetailControl">
                    <i class="fa fa-shopping-cart"></i> Cart
                    
                </a>
                </c:if>
            </form>
        </div>
    </div>
</nav>

    
<section class="jumbotron text-center">
    <div class="container" >
         <h1 class="jumbotron-heading"> ZEN PHONE</h1>        
        <p class="lead text-muted mb-0">Uy tín tạo nên thương hiệu với hơn 10 năm cung cấp những sản phẩm chất lượng nhất </p>  
    </div>
</section>
<!--end of menu-->
