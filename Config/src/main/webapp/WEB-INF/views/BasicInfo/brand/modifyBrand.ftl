<!DOCTYPE html>
<html>
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
  <title>首页</title>
  <link rel="stylesheet" type="text/css" href="/Config/css/bootstrap.css" media="screen" /> 
  <link rel="stylesheet" type="text/css" href="/Config/css/left.css" media="screen" /> 
  <link rel="shortcut icon" href="/Config//images/favicon.ico" /> 
  <link rel="stylesheet" type="text/css" media="screen" href="/Config/css/override.css" /> 
 </head> 
 <body>
   <#include "header.ftl" />; 
  <div class="container-fluid"> 
   <div class="row"> 
    <div name="left" class="col-md-1">
     <#include "left_brand.ftl"/>
    </div> 
    <div name="right" class="col-md-11 "> 
      <main class="col-md-12"> 
       <ol class="breadcrumb"> 
        <li><a href="#">Home</a></li> 
        <li><a href="#">2013</a></li> 
        <li class="active">十一月</li> 
       </ol> 	
			<table class="row col-md-4" >
			 	 <tr>
				    <td colspan="2">
				    	品牌名称:jjjkjk			    
				    </td>				
				  </tr>			
				  <tr>
				    <td colspan="2">
				    	<input class="form-control col-md-12 " placeholder="请输入要修改的序号"/><br/>
			    </td>				
				  </tr>
				  <tr>
				    <td colspan="2">
						<input class="form-control col-md-12" placeholder="请输入修改后的品牌名称"/><br/>
					</td>				
				  </tr>
				  <tr>
				    <td><button class="btn btn-primary">保存</button></td>
				    <td><button class="btn btn-primary">取消</button></td>
				  </tr>
			</table>
	
      </main>
 
    </div> 
   </div> 
  </div> 
  <script type="text/javascript" src="/Config/js/jquery.js"></script> 
  <script type="text/javascript" src="/Config/js/bootstrap.js"></script> 
  <script type="text/javascript" src="/Config/js/left.js"></script>
  <script type="text/javascript" src="/Config/js/index.js"></script>
 </body>
</html>