<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Conpub</title>

    <meta name="description" content="안녕하세요. 당신을 위한 콘펍입니다">
    <meta name="author" content="Pubble">

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

<%--
		데이터 테이블이 만들고 싶은데 ㅠ.ㅠ 이게아닌감
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css"/>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"/>
--%>
	<script src="http://code.jquery.com/jquery-3.4.1.js"></script>




</head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		
<!-- 여기부터 header -->
		<header>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark">
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item" >
					<a class="nav-link active" href="#">로그인</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="#">회원가입</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="#">장바구니</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="/myPage/main">마이페이지</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="#">고객센터</a>
				</li>
			</ul>
            </nav>

			<nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
				 
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="navbar-toggler-icon"></span>
				</button> <a class="navbar-brand" href="#">Conpub</a>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="navbar-nav">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown">도서</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
								<a class="dropdown-item" href="/items?no=1">포트폴리오</a> <a class="dropdown-item" href="/items?no=2">독립출판</a> <a class="dropdown-item" href="/items?no=3">앨범</a>
							</div>
						</li>
						<li class="nav-item active">
							 <a class="nav-link" href="/items?no=4">학위논문 <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">홍보물</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="/items?no=5">팜플렛</a> <a class="dropdown-item" href="/items?no=6">카탈로그</a>
								<div class="dropdown-divider">
								</div> <a class="dropdown-item" href="/items?no=7">포스터</a>
							</div>
						</li>
						<li class="nav-item">
							 <a class="nav-link" href="/items?no=8">포토북</a>
						</li>
					</ul>
					<form class="form-inline">
						<input class="form-control mr-sm-2" type="text"> 
						<button class="btn btn-primary my-2 my-sm-0" type="submit">
							검색
						</button>
					</form>

				</div>
			</nav>
			
		</header>
