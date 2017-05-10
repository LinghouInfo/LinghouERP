<!DOCTYPE html>
<html>
 <head>
  <title>首页</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
  
  <link rel="stylesheet" href="/Config/css/bootstrap/css/bootstrap.min.css" />

  <script type="text/javascript" src="/Config/js/jquery.js"></script>
  <script type="text/javascript" src="/Config/css/bootstrap/js/bootstrap.js"></script>
  
 </head> 
 <body>
 	
 
   <#include "header.ftl" />; 
  <div class="container-fluid"> 
   <div class="row"> 
    <div name="left" class="col-md-1">
     <#include "left_brand.ftl"/>
    </div> 
    <div name="right" class="col-md-11 "> 
     <div name=""> 
      <main class="col-md-11"> 
       <ol class="breadcrumb"> 
        <li><a href="#">Home</a></li> 
        <li><a href="#">2013</a></li> 
        <li class="active">十一月</li> 
       </ol> 
	   
	   <div>
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="#tab1">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#tab2">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#tab3">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#tab4">Disabled</a>
  </li>
</ul>
	   </div>
	   
       <div> 

        <ul id="tabs"> 
         <li><a href="#" name="#tab1">查询品牌</a></li> 
         <li><a href="#" name="#tab2">新建品牌</a></li> 
         <li><a href="#" name="#tab3">Three</a></li> 
         <li><a href="#" name="#tab4">Four</a></li> 
        </ul> 
        <div id="content" style="width:1400px;"> 
         <div id="tab1"> 
         <div class="panel panel-default">
   			 <div class="panel-body">
          <form action="/SellOrder/queryBrand" method="post"> 
           <div class="row"> 
            <div class="col-md-2"> 
             <input placeholder="请输入要搜索的品牌" name="brandName" class="form-control" /> 
            </div>  
            <i class="icon-search"> </i> 
            <button class="btn btn-primary icon-search">搜索</button> 
           </div>
          </form> 
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
               <th>操作</th> 
              </tr> 
             </thead> 
             <tbody>
               <#list list as lis> 
              <tr> 
               <th>${lis.serialNumber}</th> 
               <th>${lis.brandName}</th> 
               <th><a href="#">修改</a>&nbsp;<a href="#">删除</a></th> 
              </tr> 
              </#list> 
             </tbody> 
            </table> 
        
           </div> 
           
          </div>
	       <div class="row">
	       	
        	 <#include "pager2.ftl" />;
	          
	       		</div>
	           </div>
			</div>
         </div> 
         <div id="tab2" class="col-md-12" style=" background:red;"> 
         
         
<form action="" method="post">
<div class="modal fade" id="myModal"   tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">  
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
</form>
<script>
$(function () { $('#myModal').modal({
	keyboard: true;
})
});
</script>
         
         
         
         
         </div> 
         <div id="tab3">
           3 
         </div> 
         <div id="tab4">
           5 
         </div> 
        </div> 
        <p id="about">&nbsp;</p> 


        <div class="col-md-4"> 
 
      
       </div> 
      </main>
     </div>  
    </div> 
   </div> 
  </div> 
 </body>
</html>