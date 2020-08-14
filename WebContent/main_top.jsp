<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
    .header{
        background-color: black;
        width: 99%;
        height: 111px;
        position: fixed;
        padding-top: 87px;
        display : inline-block;
        top:-20px;
        z-index: 10;
    }
    #search{
        width: 59px;
        height: 52px;
        z-index: 9;
        position: relative;
        top: 48px;
        left: 367px;
        z-index: 9;
        cursor: pointer;
    }
    #search2{
        width: 62px;
        height: 57px;
        z-index: 9;
        position: absolute;

        z-index: 10;
    }
    #logo{
        width: 185px;
        height: 158px;
        position: absolute;
        top: 5px;
        left: 869px;
        z-index: 9;
    }
    #allmenu{
        width: 100px;
        height: 30px;
        z-index: 9;
        position: absolute;
        top: 150px;
        left: 657px;
        font-size: 20px;
    }
    #mypage{
        width: 303px;
        height: 30px;
        z-index: 9;
        position: absolute;
        top: 150px;
        left: 1200px;
        font-size: 20px;
    }

    a{
        text-decoration: none;
        color: white;
        font-weight: 600;
    }
    a:link a:visited a:active a:hover{
        text-decoration: none;
        color: white;
    }
    #logout{
        width: 75px;
        height: 36px;
        position: absolute;
        top: 26px;
        left: 95%;
    }
        #login{
	    width: 90px;
	    height: 36px;
	    position: absolute;
	    top: 26px;
	    left: 1686px;
	    color: white;
	    text-align: right;
    }
    .panel{
        width: 92%;
        height: 420px;
        background-color: gray;
        position: absolute;
        top: 129px;
        left: 77px;
        z-index: 10;
        display: none;
    }
    .alllist{
        position: relative;
        top:198px;
        left:50px;
    }
    /* .alllist2{
        position: absolute;
        top:198px;
        left:50px;
    } */
    ul li{
        float: left;
        margin: 102px;
        width: 203px;
        height: 265px;
        background-color: indianred;
        list-style-type: none;
    }
    .heart{
        width: 50px;
        height: 50px;
        background-color: indianred;
        position: absolute;
        top: 380px;
        left: 142px;
    }
    .recommend{
        position: relative;
        width: 95%;
        height: 730px;
        top: 170px;
        left: 48px;
        opacity:0.8;
        background-color: black;
        z-index: 8;
    }

    #recommendmovie{
        width: 100%;
        height: 50px;
        background-color: indianred;
        position: absolute;
        top: 110px;
        left: 0%;
        border-radius: 15px;
        text-align: center;
        font-size: 24px; font-weight: 600;
        color: white;
        line-height: 50px;
    }
    .sidebar{
        width: 98px;
        height: 149px;
        top: 265px;
        left: 1774px;
        position: absolute;
        cursor: pointer;
        background-color: tan;
        z-index: 10;
        position: fixed;
            }
</style>
</head>
<body>


    <div class="header"><a href="like"><img id="logo" src="/photo/logo.png"/></a>
        <div id="search"><img id="search2" src="/photo/search.png"/></div>
        <div id="allmenu"><a href="movieList">전체 메뉴</a></div>
        <div id="mypage"><a href="myPage.jsp">마이페이지</a></div>
        <div id="login"></div>
        <div id="logout"><a href="logout">로그아웃</a></div>
    </div>

    <div class="panel">검색창

    </div>
    
    
    <div class="panel"><a href="">검색창</a></div>
    
    		<div id="background" style="width: 99%; height: 100%; position:absolute; opacity:0.6">
        <img src="/photo/main.jpg"  style="width: 100%; height: 100%;"/>
    	</div>

    <div class="recommend">

        <div id="recommendmovie" >Recommend Movie</div>
        <ul class="alllist">


         	<c:forEach items="${list }" var="likelist">
            <a href="./movieDetail?mIdx=${likelist.mIdx}"><li class="list">${likelist.mfIdx}</li></a><div class="heart"></div>
           </c:forEach>


<!-- 
            <a href="#"><li class="list">극한직업</li></a><div class="heart"></div>
            <a href="#"><li class="list">기생충</li></a><div class="heart"></div>
            <a href="#"><li class="list">독전</li></a><div class="heart"></div>
            <a href="#"><li class="list">백두산</li></a><div class="heart"></div>
 -->
            <c:forEach items="${list }" var="likelist">
    	
            	<a href="l"><li class="list">${likelist.mIdx}</li></a><div class="heart"></div>
             
            </c:forEach>


        </ul>

    </div>
    <div class="sidebar">
        <div id="sid1"><a href="">찜목록</a></div>
    </div>
</body>
<script>
 var uIdx = "${sessionScope.uIdx}";
var loginId = "${sessionScope.loginId}";
var loginPw = "${sessionScope.loginPw}";
var msg = "${msg}";

/*   if(loginPw=="" || loginId==""){
	alert("로그인이 필요한 서비스입니다.");
	location.href="login.jsp";

  }else(loginPw !="" || loginId !=""){ */
	 if(loginId !=""){
	$("#login").html(loginId+' 님♡');
	if(msg!=""){
		alert(msg);
		msg="";
		 }
	 }


 

$(document).ready(function() {

    $("#search").click(function(){
        $(".panel").css({"display":"block"});
    });

    });


</script>

</html>