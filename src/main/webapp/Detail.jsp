<%-- 
    Document   : Detail
    Created on : Dec 29, 2020, 5:43:04 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/review.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="${detail.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.name}</h3>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency">US $</span><span class="num">${detail.price}</span>
                                            </span> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>
                                                    ${detail.description}
                                                </p></dd>
                                        </dl>

                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                                                    <dt>Stocking</dt>
                                                   
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->

                                        </div> <!-- row.// -->
                                        <hr>
                                        
                                        <a href="AddToCart?pid=${detail.id}&path=detail" class="btn btn-lg btn-outline-primary text-uppercase">
                                         <i class="fas fa-shopping-cart"></i> Add to cart 
                                         </a>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->

                    </div>
                </div>
            </div>
        </div>
           <div>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container bootdey">
<div class="col-md-12 bootstrap snippets">
<div class="panel">
  <div class="panel-body">
    <textarea class="form-control" rows="2" placeholder="What are you thinking?"></textarea>
    <div class="mar-top clearfix">
      <button class="btn btn-sm btn-primary pull-right" type="submit"><i class="fa fa-pencil fa-fw"></i> Share</button>
      <a class="btn btn-trans btn-icon fa fa-video-camera add-tooltip" href="#"></a>
      <a class="btn btn-trans btn-icon fa fa-camera add-tooltip" href="#"></a>
      <a class="btn btn-trans btn-icon fa fa-file add-tooltip" href="#"></a>
    </div>
  </div>
</div>
<div class="panel">
    <div class="panel-body">
    <!-- Newsfeed Content -->
    <!--===================================================-->
    <div class="media-block">
      <a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="https://bootdey.com/img/Content/avatar/avatar1.png"></a>
      <div class="media-body">
        <div class="mar-btm">
          <a href="#" class="btn-link text-semibold media-heading box-inline">Lisa D.</a>
          <p class="text-muted text-sm"><i class="fa fa-mobile fa-lg"></i> - From Mobile - 11 min ago</p>
        </div>
        <p>Everything is great, I have received the product, its design is beautiful and the quality is really good</p>
        <div class="pad-ver">
          <div class="btn-group">
            <a class="btn btn-sm btn-default btn-hover-success" href="#"><i class="fa fa-thumbs-up"></i></a>
            <a class="btn btn-sm btn-default btn-hover-danger" href="#"><i class="fa fa-thumbs-down"></i></a>
          </div>
          <a class="btn btn-sm btn-default btn-hover-primary" href="#">Comment</a>
        </div>
        <hr>

        <!-- Comments -->
        <div>
          <div class="media-block">
            <a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="https://bootdey.com/img/Content/avatar/avatar2.png"></a>
            <div class="media-body">
              <div class="mar-btm">
                <a href="#" class="btn-link text-semibold media-heading box-inline">Bobby Marz</a>
                <p class="text-muted text-sm"><i class="fa fa-mobile fa-lg"></i> - From Mobile - 7 min ago</p>
              </div>
              <p>Great  The phone is really good , fast delivery I quite like this , rate this place 5 *.</p>
              <div class="pad-ver">
                <div class="btn-group">
                  <a class="btn btn-sm btn-default btn-hover-success active" href="#"><i class="fa fa-thumbs-up"></i> You Like it</a>
                  <a class="btn btn-sm btn-default btn-hover-danger" href="#"><i class="fa fa-thumbs-down"></i></a>
                </div>
                <a class="btn btn-sm btn-default btn-hover-primary" href="#">Comment</a>
              </div>
              <hr>
            </div>
          </div>

          <div class="media-block">
            <a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="https://bootdey.com/img/Content/avatar/avatar3.png">
            </a>
            <div class="media-body">
              <div class="mar-btm">
                <a href="#" class="btn-link text-semibold media-heading box-inline">Lucy Moon</a>
                <p class="text-muted text-sm"><i class="fa fa-globe fa-lg"></i> - From Web - 2 min ago</p>
              </div>
              <p>The consultation is quite good, I quite like it, and another thing is that they are very friendly and fast</p>
              <div class="pad-ver">
                <div class="btn-group">
                  <a class="btn btn-sm btn-default btn-hover-success" href="#"><i class="fa fa-thumbs-up"></i></a>
                  <a class="btn btn-sm btn-default btn-hover-danger" href="#"><i class="fa fa-thumbs-down"></i></a>
                </div>
                <a class="btn btn-sm btn-default btn-hover-primary" href="#">Comment</a>
              </div>
              <hr>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--===================================================-->
    <!-- End Newsfeed Content -->


    <!-- Newsfeed Content -->
    <!--===================================================-->
    <div class="media-block pad-all">
      <a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="https://bootdey.com/img/Content/avatar/avatar1.png"></a>
      <div class="media-body">
        <div class="mar-btm">
          <a href="#" class="btn-link text-semibold media-heading box-inline">John Doe</a>
          <p class="text-muted text-sm"><i class="fa fa-mobile fa-lg"></i> - From Mobile - 11 min ago</p>
        </div>
        <p>Lorem ipsum dolor sit amet.</p>
        <img class="img-responsive thumbnail" src="https://www.bootdey.com/image/400x300" alt="Image">
        <div class="pad-ver">
          <span class="tag tag-sm"><i class="fa fa-heart text-danger"></i> 250 Likes</span>
          <div class="btn-group">
            <a class="btn btn-sm btn-default btn-hover-success" href="#"><i class="fa fa-thumbs-up"></i></a>
            <a class="btn btn-sm btn-default btn-hover-danger" href="#"><i class="fa fa-thumbs-down"></i></a>
          </div>
          <a class="btn btn-sm btn-default btn-hover-primary" href="#">Comment</a>
        </div>
        <hr>

        <!-- Comments -->
        <div>
          <div class="media-block pad-all">
            <a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="https://bootdey.com/img/Content/avatar/avatar2.png"></a>
            <div class="media-body">
              <div class="mar-btm">
                <a href="#" class="btn-link text-semibold media-heading box-inline">Maria Leanz</a>
                <p class="text-muted text-sm"><i class="fa fa-globe fa-lg"></i> - From Web - 2 min ago</p>
              </div>
              <p>I don't like this store</p>
              <div>
                <div class="btn-group">
                  <a class="btn btn-sm btn-default btn-hover-success" href="#"><i class="fa fa-thumbs-up"></i></a>
                  <a class="btn btn-sm btn-default btn-hover-danger" href="#"><i class="fa fa-thumbs-down"></i></a>
                </div>
                <a class="btn btn-sm btn-default btn-hover-primary" href="#">Comment</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </div>
    <!--===================================================-->
    <!-- End Newsfeed Content -->
  </div>
</div>
</div>
</div>
</div>
<jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
