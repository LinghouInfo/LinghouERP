<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>首页</title>
<link rel="stylesheet" type="text/css"
	href="/SellOrder/css/bootstrap.css" media="screen" />
<link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/SellOrder/css/left.css"
	media="screen" />
<link rel="shortcut icon" href="/images/favicon.ico">

<style type="text/css">
.container-fluid {
	position: relative;
	top: 80px;
}

#myModal{position: relative;top:200px; left:200px; width:500px; }
.modal-backdrop {
  opacity: 0 !important;
  filter: alpha(opacity=0) !important;
}
.form-control{font-size: 14px;}
</style>
</head>
<body>
	<#include "header.ftl" />
	<div class="container-fluid">
		<div class="row">
	
			<div name="left" class="col-md-1">
				<#include "left1.ftl">
			</div>


			<div name="right" class="col-md-10 ">
			<div name="">
				<main class="col-md-11">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">2013</a></li>
						<li class="active">十一月</li>
					</ol>
			<div>	
				
				
				

			<!--  <form action="/SellOrder/queryBrand" method="post">-->	
					<div class="row">
						<div class="col-md-2">
							<input placeholder="请输入要搜索的品牌" name="brandName"
								class="form-control" />
						</div>
						<i class="icon-search"> </i><button class="btn btn-primary icon-search">搜索</button>
						
						
						<span style="position:relative;left:200px;">
						<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">新建品牌</button>
						<button class="btn btn-primary">修改</button>
						<button class="btn btn-primary">删除</button>
						</span>
						
					</div>
					<br />
					<div class="row">
						<div class="col-md-3">
							<table class="table table-striped">
								<caption>
									<hr />
								</caption>
								<thead>
									<tr>
										<th>序号</th>
										<th>品牌名称</th>
									</tr>
								</thead>
								<tbody>
								<#list list as lis>
									<tr>
										<th>${lis.brandName}</th>
										<th>${lis.serialNumber}</th>
									</tr>
								</#list>
								</tbody>
							</table>
						</div>
						
						
						
						
						
<div class="col-md-4">	
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">  
  <div class="modal-dialog">  
    <div class="modal-content">  
      <div class="modal-header">       
        <h3 class="modal-title">新建品牌</h3>  
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>  
      </div>  
      <div class="modal-body">  
       <input class="form-control"  placeholder="请输入品牌名称"/><br/>
	<input class="form-control" placeholder="输入品牌序号(序号越大越靠前)"/>
      </div>  
      <div class="modal-footer">  
        <button type="button" class="btn btn-primary">
					保存
				</button>
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
      </div>  
    </div><!-- /.modal-content -->  
  </div><!-- /.modal-dialog -->  
</div><!-- /.modal -->  
</div>
						
		</div>			
						
						
						
						
						
						
						
						
						
					</div>
			<!--  from-->	
			</main>

			</div>
		</div>
	</div>
		


	<script type="text/javascript" src="/SellOrder/js/jquery.js"></script>
	<script type="text/javascript" src="/SellOrder/js/bootstrap.js"></script>
	<script type="text/javascript" src="/SellOrder/js/left.js"></script>
</body>
</html>
