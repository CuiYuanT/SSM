<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglibs.jsp"%>
 <!--头部-->
    <div class="topper">
        <div class="wrapper">
            <div class="left-bar">
                <div class="back-home divider">
                    <em></em><a href="${ctx}/login/uIndex">商城首页</a>
                </div>
            </div>
            <div class="right-bar">
            <c:if test="${username != null}">
            <div class="login-user sub-menu">
                    <a class="menu-hd" href="">${username}<em></em></a>
                    <div class="down">
                        <a href="${ctx}/user/view">账户中心</a>
                    </div>
                </div>
               <div class="logout divider"><a href="${ctx}/login/uLogin">退出</a></div>
                <span class=""></span>
                <div class="cart"><em></em><a href="${ctx}/car/findBySql">购物车</a></div>
                <div class="order"><em></em><a href="${ctx}/itemOrder/my">我的订单</a></div>
                <div class="fav"><em></em><a href="${ctx}/sc/findBySql">我的收藏</a></div>
            </c:if>
                <c:if test="${username == null}">
                <div class="logout divider"><a href="${ctx}/login/uLogin">登录</a></div>
                </c:if>
                
               
            </div>
        </div>
    </div>
    <div class="header-wrap">
        <div class="wrapper header">
            <a href="${ctx}/login/uIndex" class="logo">
                <img src="${ctx}/resource/img/333.png" alt="" style="height: 50px" />
            </a>
            <div class="header-schbox">
                <div class="inner clearfix">
                <form action="${ctx}/login/uIndex" method="post">
                    <div class="search-switch">
                        <i class="arrow"></i>
                        <div class="item">商品</div>
                    </div>
                    <input class="search-txt" type="text" name="name" value="" placeholder="搜索">
                    <button class="search-btn" type="submit"></button>
                    <div class="suggest-box">
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-box">
        <div class="nav wrapper">
            <div class="slogan"></div>
            <ul class="nav-ul">
                <li><a href="${ctx}/login/uIndex">首页</a></li>
            </ul>
            <div class="nav-ad"><a class="ad" href=""><img src="uploads/nav-ad.jpg" alt="" /></a></div>
        </div>
    </div>
<!--头部-->