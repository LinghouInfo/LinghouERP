<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link rel="stylesheet" type="text/css" href="/SellOrder/css/bootstrap.css" media="screen" />
<link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="/SellOrder/css/left.css" media="screen" />
<link rel="shortcut icon" href="/images/favicon.ico"/>
<title>spu管理页面</title>
<style type="text/css">
	.container-fluid{ position: relative;top:80px;}
</style>	
</head>
<body>
<#include "/component/header.ftl">
<div class="container-fluid" >
<div class="row">
<div name="left" class="col-md-1">
	<#include "/component/spu_left.ftl">
</div>
<div name="right"class="col-md-10 ">
   <main class=" col-md-11 ">
   	<#include "/component/spu_right.ftl">
   </main>
</div>
</div>
</div>
	<script type="text/javascript" src="/SellOrder/js/jquery.js"></script>
	<script type="text/javascript" src="/SellOrder/js/bootstrap.js"></script>
	<script type="text/javascript" src="/SellOrder/js/left.js"></script>
</body>
</html>
