<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

	<!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- google recaptcha -->
    <script src="https://www.google.com/recaptcha/api.js"></script>
    
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="/css/index.css">
      <link rel="stylesheet" type="text/css" href="/css/intro.css">
      <link rel="stylesheet" type="text/css" href="/css/myinfo.css">
      <link rel="stylesheet" type="text/css" href="/css/notice.css">
      <link rel="stylesheet" type="text/css" href="/css/product.css">


    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"  crossorigin="anonymous"></script>
    <title>Thoth</title>
    </head>
  <body>
      <div class="container">

        <!-- header Area -->
		<tiles:insertAttribute name="header" />


		<!-- main Area -->
		<tiles:insertAttribute name="main"/>


     	<!-- footer Area -->
     	<tiles:insertAttribute name="footer"/>
      
    </div>


    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"  crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <!-- js파일 추가-->
      <script src="/js/index.js"></script>
      <script src="/js/intro.js"></script>
      <script src="/js/myinfo.js"></script>
      <script src="/js/notice.js"></script>
      <script src="/js/product.js"></script>
  </body>
</html>


    