<!DOCTYPE html>
<html>
 <head> 
  <title>仓库设置</title> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="x-ua-compatible" content="ie=edge" /> 
  <link type="image/x-icon" rel="shortcut icon" href="/Config/images/favicon.ico" />
  <link rel="stylesheet" href="/Config/css/bootstrap/css/bootstrap.min.css" /> 
  <link rel="stylesheet" type="text/css" href="/Config/css/bootstrap/css/leftMenu/default.css" /> 
  <script type="text/javascript" src="/Config/js/jquery.js"></script> 
  <script type="text/javascript" src="/Config/css/bootstrap/js/bootstrap.js"></script> 
 </head> 
 <body> 
  <div class="container-fluid">
    <#include "header.ftl"> 
   <div class="row" style="margin-top:60px;"> 
    <div name="left" class="col-md-1">
      <#include "left_logistics.ftl"> 
    </div> 
    <div class="col-md-11" style="padding:15px; padding-left:50px;"> 
      <div> 
       <!-- Nav tabs --> 
       <ul class="nav nav-tabs" role="tablist"> 
        <li role="presentation" class="active"> <a href="#home" aria-controls="home" role="tab" data-toggle="tab" style="font-weight:bold;">仓库查询</a></li> 
       </ul> 
       <!-- Tab panes --> 
       <div class="tab-content"> 
        <div role="tabpanel" class="tab-pane active" id="home"> 
         <table> 
          <tbody> 
           <tr> 
            <td>&nbsp;</td> 
           </tr> 
          </tbody> 
         </table> 
         <div name="message"> 
          ${susses}
         </div> 
            <div class="panel panel-default"> 
         	 <div class="panel-body">
         <form class="form-inline"> 
          <div class="form-group"> 
           <label class="sr-only" for="brandName">仓库名称</label> 
           <input placeholder="请输入搜索的仓库名称"   name="brandName" class="form-control" /> 
          </div> 
            <button type="button" class="btn btn-primary">
				          <span class="glyphicon glyphicon-search"></span> 搜索
			</button>
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat"><span class="glyphicon glyphicon-plus"></span> 新建仓库</button>
         </form>     
         </div>
         </div>  
         <div class="row" style="margin-left:0px;background-color:;"> 
           <br/>
          <table class="table"> 
           <thead> 
            <tr> 
             <th>仓库ID</th> 
             <th>仓库名称</th> 
             <th>仓库序号</th> 
             <th>操作</th> 
            </tr> 
           </thead> 
           <tbody> 
            <tr> 
             <td>#1</td> 
             <td>虚拟仓库</td> 
             <td>#100</td> 
             <td> <select id="pid" class="form-control" onchange="operationChange()"> <option selected="selected">选择操作</option> <option operation="delete" value="1">删除该仓库信息</option> <option operation="update" value="2">修改该仓库信息</option> </select> </td> 
            </tr> 
            <tr> 
             <td>#2</td> 
             <td>成都仓库</td> 
             <td>#99</td> 
             <td> <select class="form-control" onchange="operationChange()"> <option selected="selected">选择操作</option> <option operation="delete" value="1">删除该仓库信息</option> <option operation="update" value="2">修改该仓库信息</option> </select> </td> 
            </tr> 
           </tbody> 
          </table> 
         </div> 
         <div class="row">
           <#include "pager.ftl"> 
         </div> 
         <script>
	       function operationChange(){
	           var objS = document.getElementById("pid");
	           var operation = objS.options[objS.selectedIndex].getAttribute('operation');
	           switch(operation)
	           {
	               case "delete":
	            	   confirm('您确定删除这条记录吗？')
	                      break;
	               case "update":
	            	  alert(objS.options[objS.selectedIndex].getAttribute('value'));	            	   
	            	   $("#exampleModal2").modal(); 
	            	   $("#logisticsId").attr("value",objS.options[objS.selectedIndex].getAttribute('value'));
	                      break;
	               default:;
	           } 
	       }          
		</script> 
         <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">修改仓库信息</h4> 
            </div> 
            <div class="modal-body"> 
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label">仓库ID:</label> 
               <input id="logisticsId" readonly="readonly" type="text" class="form-control brandName" style="width:400px;"   /> 
              </div> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label">仓库名称:</label> 
               <input name="brandName" type="text" class="form-control brandName" style="width:400px;" placeholder="请输入仓库名称"   /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label">仓库序号:</label> 
               <input name="serialNumber" class="form-control serialNumber" style="width:300px;" placeholder="请输入仓库序号,序号越大查询越靠前"   /> 
              </div> 
             </form> 
            </div> 
            <div class="modal-footer" style="text-align:left;"> 
             <button type="button" class="btn btn-primary" id="save" style="margin-left:4px;">保存</button> 
             <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>  
             <div> 
             </div> 
				<script type="text/javascript">  

					$("#save").click(function(){  
					
							alert("dada");
							  var saveDataAry=[];    
							
							  var brandName = $(".brandName").val().trim();  
							   
							  var serialNumber=$(".serialNumber").val().trim();  
						   
							  var data1={brandName:brandName,serialNumber:serialNumber};  
					   
							  $.ajax({  
								  url:"${pageContext.request.contextPath}/Config/addBrand",  
								  type:"post",  
								  dataType:"json",     
								  data:data1,  
								  success:function(result){  
									alert(result);
								  },  
								  error:function(){  
									  alert("发生异常，请重试！");  
									}  
							   });  
							  
						});
				</script> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"> 
          <div class="modal-dialog" role="document" style="width:1000px; position:relative; top:40px;"> 
           <div class="modal-content"> 
            <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span></button> 
             <h4 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">新增仓库</h4> 
            </div> 
            <div class="modal-body"> 
             <form> 
              <div class="form-group"> 
               <label for="recipient-name" class="control-label">仓库名称:</label> 
               <input name="brandName" type="text" class="form-control brandName" style="width:400px;" placeholder="请输入仓库名称"   /> 
              </div> 
              <div class="form-group "> 
               <label for="message-text" class="control-label">仓库序号:</label> 
               <input name="serialNumber" class="form-control serialNumber" style="width:300px;" placeholder="请输入仓库序号,序号越大查询越靠前"   /> 
              </div> 
             </form> 
            </div> 
            <div class="modal-footer" style="text-align:left;"> 
			 <button type="button" class="btn btn-primary" id="save" style="margin-left:4px;">保存</button>
             <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
             <div> 
             </div> 
				<script type="text/javascript">  

					$("#save").click(function(){  
					
							alert("dada");
							  var saveDataAry=[];    
							
							  var brandName = $(".brandName").val().trim();  
							   
							  var serialNumber=$(".serialNumber").val().trim();  
						   
							  var data1={brandName:brandName,serialNumber:serialNumber};  
					   
							  $.ajax({  
								  url:"${pageContext.request.contextPath}/Config/addBrand",  
								  type:"post",  
								  dataType:"json",     
								  data:data1,  
								  success:function(result){  
									alert(result);
								  },  
								  error:function(){  
									  alert("发生异常，请重试！");  
									}  
							   });  
							  
						});
				</script> 
            </div> 
           </div> 
          </div> 
         </div> 
        </div> 
       </div> 
      </div> 
    </div> 
   </div> 
  </div>  
 </body>
</html>