<!DOCTYPE html>
<html>
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
  <title>店铺分类</title>
  <link rel="stylesheet" type="text/css" href="/Config/css/bootstrap.css" media="screen" /> 
  <link rel="stylesheet" type="text/css" href="/Config/css/left.css" media="screen" /> 
  <link rel="shortcut icon" href="/Config//images/favicon.ico" /> 
  <link rel="stylesheet" type="text/css" media="screen" href="/Config/css/kkpager_orange.css" />
  <link rel="stylesheet" type="text/css" media="screen" href="/Config/css/override.css" /> 
 </head> 
 <body>
   <#include "header.ftl" />; 
  <div class="container-fluid"> 
   <div class="row"> 
    <div name="left" class="col-md-1">
     <#include "left_shop.ftl"/>
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
        <ul id="tabs"> 
         <li><a href="#" name="#tab1">店铺查询</a></li> 
         <li><a href="#" name="#tab2">店铺新增</a></li> 
         <li><a href="#" name="#tab3">Three</a></li> 
         <li><a href="#" name="#tab4">Four</a></li> 
        </ul> 
        <div id="content" style="width:1400px;"> 
         <div id="tab1"> 
         <div class="panel panel-default">
   			 <div class="panel-body">
          <form action="" method="post"> 
           <div class="row"> 
            <div class="col-md-2"> 
             <input placeholder="请输入搜索的店铺名称" name="brandName" class="form-control" /> 
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
               <th>店铺名称</th> 
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
	       	  &nbsp;&nbsp;&nbsp; <div id="kkpager"> 
           		 </div> 
        
	          
	       		</div>
	           </div>
			</div>
         </div> 
         <div id="tab2"> 
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
         <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
          <div class="modal-dialog"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <h3 class="modal-title">店铺新增</h3> 
             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
            </div> 
            <div class="modal-body"> 
             <input class="form-control" placeholder="请输入店铺名称" />
             <br /> 
             <input class="form-control" placeholder="输入店铺序号(序号越大越靠前)" /> 
            </div> 
            <div class="modal-footer"> 
             <button type="button" class="btn btn-primary">保存 </button> 
             <button type="button" class="btn btn-default" data-dismiss="modal">取消 </button> 
            </div> 
           </div>
           <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
         </div>
         <!-- /.modal --> 
        </div>        
       </div> 
      </main>
     </div>  
    </div> 
   </div> 
  </div> 
  <script type="text/javascript" src="/Config/js/jquery.js"></script> 
  <script type="text/javascript" src="/Config/js/kkpager.min.js"></script>
  <script type="text/javascript" src="/Config/js/bootstrap.js"></script> 
  <script type="text/javascript" src="/Config/js/left.js"></script>
  <script type="text/javascript" src="/Config/js/index.js"></script>
 </body>
</html>